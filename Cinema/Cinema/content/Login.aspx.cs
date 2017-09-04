using Cinema.DAO;
using Cinema.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cinema.content
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void login_Click(object sender, EventArgs e)
        {
            if(userName.Value !="" && password.Value !="")
            {
                Account account = new Account(userName.Value, password.Value);
                if (AccountDAO.Instance.checkAccount(account))
                    Response.Redirect("home.aspx");
                else
                {
                    alert.Attributes["class"] = "alert alert-danger";
                    alert.InnerText = "Tên tài khoản hoặc mật khẩu không đúng!";

                }
            }
        }
    }
}