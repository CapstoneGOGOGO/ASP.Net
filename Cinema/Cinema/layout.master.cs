using Cinema.DAO;
using Cinema.Model;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cinema
{
    public partial class layout : System.Web.UI.MasterPage
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
           
       
            if (HttpContext.Current.Request.Url.AbsolutePath == "/content/home.aspx")
                navFilm.Attributes["class"] = "nav-item nav-cgv-item active";
            if (HttpContext.Current.Request.Url.AbsolutePath == "/content/login.aspx")
                navLogin.Attributes["class"] = "nav-item nav-cgv-item active";
            if (HttpContext.Current.Request.Url.AbsolutePath == "/content/register.aspx")
                navRegister.Attributes["class"] = "nav-item nav-cgv-item active";
            if (HttpContext.Current.Request.Url.AbsolutePath == "/content/filmschedule.aspx")
                navSchedule.Attributes["class"] = "nav-item nav-cgv-item active";

            if (Session["account"] != null)
            {
               Customer customer = CustomerDAO.Instance.getCustomerByAccount(Session["account"].ToString());
                name.InnerText = "Xin chào " + customer.NameOfCus ;
                account.InnerHtml= customer.NameOfCus;
                address.InnerHtml = customer.Address;
                roles.InnerHtml = customer.TypeOfAccount;
                point.InnerHtml = customer.Point.ToString();
                if (AccountDAO.Instance.isAdmin(customer.NameOfAccount)) Session["isAdmin"] = "isAdmin";
                }
         
        }

       
    }
}