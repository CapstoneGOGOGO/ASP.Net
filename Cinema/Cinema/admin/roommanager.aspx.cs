using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Text;
using System.Configuration;

namespace Cinema.admin
{
    public partial class roommanager : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            String query = "select * from TAIKHOAN";
            if (!this.IsPostBack)
            {
                DataTable dt = DAO.DataProvider.Instance.reader(query);

                StringBuilder html = new StringBuilder();

                html.Append("<table border = '1'>");

                html.Append("<tr>");
                foreach (DataColumn column in dt.Columns)
                {
                    html.Append("<th>");
                    html.Append(column.ColumnName);
                    html.Append("</th>");
                }
                html.Append("</tr>");

                foreach (DataRow row in dt.Rows)
                {
                    html.Append("<tr>");
                    foreach (DataColumn column in dt.Columns)
                    {
                        html.Append("<td>");
                        html.Append(row[column.ColumnName]);
                        html.Append("</td>");
                    }
                    html.Append("</tr>");
                }

                html.Append("</table>");

                PlaceHolder1.Controls.Add(new Literal { Text = html.ToString() });
            }
        }

        private String stringConnection = "Data Source=DESKTOP-J6H04BI\\SQLEXPRESS;Initial Catalog=QLCGV;Integrated Security=True";


    }
}