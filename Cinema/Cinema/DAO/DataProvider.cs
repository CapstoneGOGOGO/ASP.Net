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
        private String stringConnection = "Data Source=DESKTOP-A1GD3SD\\SQLEXPRESS;Initial Catalog=QLCGV;Integrated Security=True";
        public DataTable reader(String query )
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
        public int nonQuery(string query)
        {
            int data = 0;

            SqlConnection connection = new SqlConnection(stringConnection);


                connection.Open();
                SqlCommand command = new SqlCommand(query, connection);
                data = command.ExecuteNonQuery(); // Số dòng thay đổi

                connection.Close();
            

            return data;
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