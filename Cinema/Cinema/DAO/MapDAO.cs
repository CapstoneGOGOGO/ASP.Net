using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Cinema.DAO
{
    public class MapDAO
    {
        private static MapDAO instance;

        public static MapDAO Instance
        {
            get
            {
                if (instance == null) instance = new MapDAO();
                return instance;
            }

            set
            {
                instance = value;
            }
        }
        public List<string> getListCity()
        {
            List<string> listCity = new List<string>();
            string query = "SELECT * FROM viewCity"; //Sử dụng view
           DataTable dataTableOfCity= DataProvider.Instance.reader(query);
            foreach(DataRow data in dataTableOfCity.Rows )
            {
                listCity.Add(data["name"].ToString());
            }
            return listCity;
        }
        public List<string> getListDistrict(string city)
        {

            List<string> listDistrict = new List<string>();
            string query = "getListDistrictByCity N'" + city+"'";
            DataTable dataTableOfDistrict = DataProvider.Instance.reader(query);
            foreach (DataRow data in dataTableOfDistrict.Rows)
            {
                listDistrict.Add(data["name"].ToString());
            }
            
            return listDistrict;
        }
        public List<string> getListWard(string district)
        {

            List<string> listWard = new List<string>();
            string query = "getListWardstByDistrict N'" + district + "'";
            DataTable dataTableOfWard = DataProvider.Instance.reader(query);
            foreach (DataRow data in dataTableOfWard.Rows)
            {
                listWard.Add(data["name"].ToString());
            }
            
            return listWard;
        }
    }
}