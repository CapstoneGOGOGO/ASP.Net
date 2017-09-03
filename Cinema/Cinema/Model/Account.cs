using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Cinema.Model
{
    public class Account
    {
        private string password;
        private string userName;
      

        public Account(string userName, string password)
        {
            UserName = userName;
            Password = password;
        }

        public string Password
        {
            get
            {
                return password;
            }

            set
            {
                password = value;
            }
        }

        public string UserName
        {
            get
            {
                return userName;
            }

            set
            {
                userName = value;
            }
        }
    }
}