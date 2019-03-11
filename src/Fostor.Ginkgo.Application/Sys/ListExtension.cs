using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.ComponentModel;

namespace Fostor.Ginkgo.Sys
{
    public static class ListExtension
    {
        public static DataTable ToDataTable<T>(this IList<T> data, string tableName = "NewTable")
        {
            PropertyDescriptorCollection properties = TypeDescriptor.GetProperties(typeof(T));
            DataTable dt = new DataTable();
            dt.TableName = tableName ?? "NewTable";
            for (int i = 0; i < properties.Count; i++)
            {
                PropertyDescriptor property = properties[i];
                dt.Columns.Add(property.Name, Nullable.GetUnderlyingType(property.PropertyType) ?? property.PropertyType);
            }
            object[] values = new object[properties.Count];
            foreach (T item in data)
            {
                for (int i = 0; i < values.Length; i++)
                {
                    values[i] = properties[i].GetValue(item) ?? DBNull.Value;
                }
                dt.Rows.Add(values);
            }
            return dt;
        }
    }
}
