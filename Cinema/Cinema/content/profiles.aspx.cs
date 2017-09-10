using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Cinema.content
{
    public partial class profiles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable sql = DAO.AccountDAO.Instance.getProfiles("duongle");

            Page.Title = "CGV | Thông tin tài khoản " + sql.Rows[0]["tenTk"].ToString();
            info_fullname.InnerText = sql.Rows[0]["tenKH"].ToString();
            info_username.InnerText = sql.Rows[0]["tenTk"].ToString();
            info_email.InnerText = sql.Rows[0]["email"].ToString();
            info_password.InnerText = "blank";
            if (sql.Rows[0]["gioiTinh"].ToString() == "True")
                info_sex.InnerText = "Nam";
            else info_sex.InnerText = "Nữ";
            info_cmnd.InnerText = sql.Rows[0]["cmnd"].ToString();
            info_tel.InnerText = sql.Rows[0]["sdt"].ToString();
            info_point.InnerText = sql.Rows[0]["diemTichLuy"].ToString();
        }
    }
}