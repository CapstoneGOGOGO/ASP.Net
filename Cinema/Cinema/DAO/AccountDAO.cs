using Cinema.Model;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Data;
namespace Cinema.DAO
{
    public class AccountDAO
    {
        private static AccountDAO instance;

        public static AccountDAO Instance
        {
            get
            {
                if (instance == null) instance = new AccountDAO();
                return instance;
            }

            set
            {
                instance = value;
            }
        }

        public bool checkAccount(Account account)
        {
            string query = "SELECT * FROM dbo.TAIKHOAN WHERE tenTK ='" + account.UserName + "' AND matKhau='" + account.Password + "'";

            return DataProvider.Instance.reader(query).Rows.Count > 0;
        }
        public bool isAdmin(string userName)
        {
            string query = "SELECT idLoaiTK FROM dbo.TAIKHOAN WHERE tenTK='" + userName + "'";
            if ((string)DataProvider.Instance.scalar(query) == "AD") 
            return true;
            return false;
        }
        public DataTable getProfiles(string username)
        {
            DataTable accinfo = DAO.DataProvider.Instance.reader("SELECT * from NGUOIDUNG WHERE tenTk='" + username + "'");
            return accinfo;
        }
    }
}