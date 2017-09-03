using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cinema
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            CusName.Value = Text1.Value;
            GridView1.DataSource = DAO.DataProvider.Instance.Query("chair");
            GridView1.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (!IsPostBack) { CusName.Value = Text1.Value; }
        }
    }
}