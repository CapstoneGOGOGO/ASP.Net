using Cinema.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Cinema.DAO
{
    public class CustomerDAO
    {
        private static CustomerDAO instance;

        public static CustomerDAO Instance
        {
            get
            {
                if (instance == null) instance = new CustomerDAO();
                return instance;
            }

            set
            {
                instance = value;
            }
        }
        public Customer getCustomerByAccount(string nameOfAccount)
        {
            Customer customner = new Customer();
            string proc = "getCustomerByAccount " + nameOfAccount;
           DataTable table= DAO.DataProvider.Instance.reader(proc);
            foreach (DataRow row in table.Rows)
            {
                customner.IdCus = int.Parse(row["idKH"].ToString());
                customner.NameOfAccount = row["tenTk"].ToString();
                customner.NameOfCus = row["tenKH"].ToString();
                customner.DateOfBirh = row["ngaySinh"].ToString();
               // if (int.Parse(row["gioiTinh"].ToString()) == 1) customner.Sex = true;
                customner.Sex = false;
                customner.Id = row["cmnd"].ToString();
                customner.Address = row["diaChi"].ToString();
                customner.PhoneNumber = row["sdt"].ToString();
                customner.Email = row["email"].ToString();
                customner.Point = int.Parse(row["diemTichLuy"].ToString());
                customner.TypeOfAccount = row["tenLoaiTK"].ToString();
            }
           
            return customner;
        }
    }
}