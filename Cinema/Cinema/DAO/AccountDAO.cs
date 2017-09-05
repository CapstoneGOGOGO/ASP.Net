using Cinema.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

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
        public bool isAdmin(Account account)
        {

            string query = "SELECT idLoaiTK FROM dbo.TAIKHOAN WHERE tenTK='" + account.UserName + "'";
            if ((string)DataProvider.Instance.scalar(query) == "AD")
                return true;
            return false;
        }
    }
}