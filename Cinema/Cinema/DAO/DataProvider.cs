using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Cinema.DAO
{
    public class DataProvider
    {

        private static DataProvider instance;
        public static DataProvider Instance
        {

            get
            {
                if (instance == null) instance = new DataProvider();
                return instance;
            }
        }
        private String stringConnection = "Data Source=DESKTOP-J6H04BI\\SQLEXPRESS;Initial Catalog=QLCGV;Integrated Security=True";
        public DataTable reader(String query)
        {

            SqlConnection cnn = new SqlConnection(stringConnection);
            DataTable table = new DataTable();
            cnn.Open();
            SqlCommand cmd = new SqlCommand(query, cnn);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(table);
            cnn.Close();
            return table;
        }
        public object scalar(String query)
        {
            SqlConnection cnn = new SqlConnection(stringConnection);
            Object data = 0;
            cnn.Open();
            SqlCommand cmd = new SqlCommand(query, cnn);
            data = cmd.ExecuteScalar();
            cnn.Close();
            return data;
        }
    }
}