using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace Fostor.Ginkgo.Sql
{
    public interface ISqlExecuter
    {
        int ExecuteSqlCommand(string sql, params object[] parameters);
        /// <summary>
        /// 查询返回List<T>,只支持单一结果集
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="sql"></param>
        /// <param name="parameters"></param>
        /// <returns></returns>
        List<T> SqlQuery<T>(string sql, params object[] parameters);
        /// <summary>
        /// 查询返回DataSet
        /// </summary>
        /// <param name="sql"></param>
        /// <param name="parameters"></param>
        /// <returns></returns>
        DataSet SqlQuery(string sql, params object[] parameters);
    }
}
