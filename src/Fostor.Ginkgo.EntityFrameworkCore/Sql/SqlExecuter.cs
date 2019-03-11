using Abp.Dependency;
using System;
using System.Collections.Generic;
using System.Text;
using System.Linq;
using Abp.EntityFrameworkCore;
using Fostor.Ginkgo.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using System.Data.SqlClient;
using System.Data;
using System.Reflection;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Internal;
using Microsoft.EntityFrameworkCore.Storage;
using Microsoft.Extensions.DependencyInjection;
using System.Threading;
using System.Threading.Tasks;

namespace Fostor.Ginkgo.Sql
{
    public class SqlExecuter : ISqlExecuter, ITransientDependency
    {
        private readonly IDbContextProvider<GinkgoDbContext> _dbContextProvider;

        public SqlExecuter(IDbContextProvider<GinkgoDbContext> dbContextProvider)
        {
            _dbContextProvider = dbContextProvider;
        }
        public int ExecuteSqlCommand(string sql, params object[] parameters)
        {
            return _dbContextProvider.GetDbContext().Database.ExecuteSqlCommand(sql, parameters);
        }

        /// <summary>
        /// 查询返回List<T>,只支持单一结果集
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="sql"></param>
        /// <param name="parameters"></param>
        /// <returns></returns>
        public List<T> SqlQuery<T>(string sql, params object[] parameters)
        {
            var db = _dbContextProvider.GetDbContext().Database;

            var concurrencyDetector = db.GetService<IConcurrencyDetector>();

            using (concurrencyDetector.EnterCriticalSection())
            {
                var rawSqlCommand = db
                    .GetService<IRawSqlCommandBuilder>()
                    .Build(sql, parameters);

                using (var rd = (rawSqlCommand
                       .RelationalCommand
                       .ExecuteReader(
                           db.GetService<IRelationalConnection>(),
                           parameterValues: rawSqlCommand.ParameterValues)).DbDataReader)
                {
                    List<T> list = new List<T>();
                    T obj = default(T);
                    DataTable dt = rd.GetSchemaTable();
                    List<string> listColumns = new List<string>();
                    foreach (DataRow r in dt.Rows)
                    {
                        listColumns.Add(r["ColumnName"].ToString());
                    }
                    while (rd.Read())
                    {
                        obj = Activator.CreateInstance<T>();

                        foreach (PropertyInfo prop in obj.GetType().GetProperties())
                        {
                            if (listColumns.Contains(prop.Name))
                            {
                                if (!Equals(rd[prop.Name], DBNull.Value))
                                {
                                    prop.SetValue(obj, rd[prop.Name], null);
                                }
                            }
                        }
                        list.Add(obj);
                    }
                    return list;
                }
            }

        }
        /// <summary>
        /// 查询返回DataSet
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="parameters"></param>
        /// <returns></returns>
        public DataSet SqlQuery(string sql, params object[] parameters)
        {
            var db = _dbContextProvider.GetDbContext().Database;

            var concurrencyDetector = db.GetService<IConcurrencyDetector>();

            DataSet ds = new DataSet();

            using (concurrencyDetector.EnterCriticalSection())
            {
                var rawSqlCommand = db
                    .GetService<IRawSqlCommandBuilder>()
                    .Build(sql, parameters);

                using (var rd = (rawSqlCommand
                       .RelationalCommand
                       .ExecuteReader(
                           db.GetService<IRelationalConnection>(),
                           parameterValues: rawSqlCommand.ParameterValues)).DbDataReader)
                {
                    do
                    {
                        DataTable dtSchema = rd.GetSchemaTable();
                        DataTable dt = new DataTable();
                        if (dtSchema != null)
                        {
                            foreach (DataRow dr in dtSchema.Rows)
                            {
                                dt.Columns.Add(new DataColumn { ColumnName = dr["ColumnName"].ToString(), DataType = (Type)dr["DataType"] });
                            }
                            while (rd.Read())
                            {
                                DataRow dr = dt.NewRow();
                                for (int i = 0; i < rd.FieldCount; i++)
                                {
                                    dr[i] = rd.GetValue(i);
                                }
                                dt.Rows.Add(dr);
                            }
                        }
                        else
                        {
                            DataColumn dc = new DataColumn("RowsAffected");
                            dt.Columns.Add(dc);
                            DataRow dr = dt.NewRow();
                            dr[0] = rd.RecordsAffected;
                            dt.Rows.Add(dr);
                        }
                        ds.Tables.Add(dt);
                    }
                    while (rd.NextResult());
                }
            }
            return ds;
        }
    }
}
