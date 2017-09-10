using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cinema.content
{
    public partial class Regis : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                city_Load();
                string name = nameOfCus.Value;
                string dob = dateOfBirth.Value;
                int sex = 1;
                Debug.Write(male.Value + "giá trị ");
                if (int.Parse(male.Value.ToString()) == 0) sex = 0;
                string City = city.Text;
                string District = district.Text;
                string Wards = wards.Text;
                string PhoneNumber = phoneNumber.Value;
                string ID = id.Value;
                string Account = account.Value;
                string Password = password.Value;
                string RePassword = rePassword.Value;
                Debug.Write(name + dob + sex + City + District + Wards + PhoneNumber + ID + Account + Password + RePassword);
            }
        }

        private void city_Load()
        {   
            city.DataSource = DAO.MapDAO.Instance.getListCity();
            city.DataBind();
            city.Items.Insert(0, "--Tỉnh Thành--");
            district.Items.Insert(0, "--Quận Huyện--");
            wards.Items.Insert(0, "--Phường Xã--");
        }

        protected void city_TextChanged(object sender, EventArgs e)
        {
            district.DataSource = DAO.MapDAO.Instance.getListDistrict(city.Text);
            district.DataBind();
            wards.DataSource = DAO.MapDAO.Instance.getListWard(district.Text);
            wards.DataBind();
        }

        protected void district_TextChanged(object sender, EventArgs e)
        {
            wards.DataSource = DAO.MapDAO.Instance.getListWard(district.Text);
            wards.DataBind();
        }
    }
}