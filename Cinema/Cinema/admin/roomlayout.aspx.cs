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
    public partial class roomlayout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            getChairs();
        }
        protected void getChairs()
        {

            DataTable dt = DAO.RoomDAO.Instance.getallChairs();

            StringBuilder html = new StringBuilder();
            html.Append("<div class='text-center' style='min-width: 570px;' data-toggle='buttons'>");
            int count = 1;
            string chair = "";
            string chairStatus = "";
            foreach (DataRow row in dt.Rows)
            {
                chairStatus = row["idLoaiGhe"].ToString();
                if (chairStatus == "Normal") chair = "disabled";
                else chair = "";
                html.Append("<label class='btn btn-dark chairSpaces " + chair + "'>");
                html.Append("<input type='checkbox' autocomplete='off' " + chair + "/>");
                html.Append(row["idPhong"]);
                html.Append("</label>");
                if (count == 9) html.Append("<br />");
                count++;
                if (count == 10) count = 1;
            }
            html.Append("</div>");
            allChairs.Controls.Add(new Literal { Text = html.ToString() });
        }
    }
}