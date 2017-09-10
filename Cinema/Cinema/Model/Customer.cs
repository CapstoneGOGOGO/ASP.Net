using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Cinema.Model
{
    public class Customer
    {
        private int idCus;
        private string nameOfCus;
        private string nameOfAccount;
        private string dateOfBirh;
        private bool sex;
        private string id;
        private string address;
        private string phoneNumber;
        private string email;
        private int point;
        private string typeOfAccount;
        public int IdCus
        {
            get
            {
                return idCus;
            }

            set
            {
                idCus = value;
            }
        }

        public string NameOfCus
        {
            get
            {
                return nameOfCus;
            }

            set
            {
                nameOfCus = value;
            }
        }

        public string NameOfAccount
        {
            get
            {
                return nameOfAccount;
            }

            set
            {
                nameOfAccount = value;
            }
        }

        public string DateOfBirh
        {
            get
            {
                return dateOfBirh;
            }

            set
            {
                dateOfBirh = value;
            }
        }

        public bool Sex
        {
            get
            {
                return sex;
            }

            set
            {
                sex = value;
            }
        }

        public string Id
        {
            get
            {
                return id;
            }

            set
            {
                id = value;
            }
        }

        public string Address
        {
            get
            {
                return address;
            }

            set
            {
                address = value;
            }
        }

        public string PhoneNumber
        {
            get
            {
                return phoneNumber;
            }

            set
            {
                phoneNumber = value;
            }
        }

        public string Email
        {
            get
            {
                return email;
            }

            set
            {
                email = value;
            }
        }

        public int Point
        {
            get
            {
                return point;
            }

            set
            {
                point = value;
            }
        }

        public string TypeOfAccount
        {
            get
            {
                return typeOfAccount;
            }

            set
            {
                typeOfAccount = value;
            }
        }

       
        public Customer() { }

        public Customer(int idCus, string nameOfCus, string nameOfAccount, string dateOfBirh, bool sex, string id, string address, string phoneNumber, string email, int point, string typeOfAccount)
        {
            this.idCus = idCus;
            this.nameOfCus = nameOfCus;
            this.nameOfAccount = nameOfAccount;
            this.dateOfBirh = dateOfBirh;
            this.sex = sex;
            this.id = id;
            this.address = address;
            this.phoneNumber = phoneNumber;
            this.email = email;
            this.point = point;
            this.typeOfAccount = typeOfAccount;
        }
    }
}