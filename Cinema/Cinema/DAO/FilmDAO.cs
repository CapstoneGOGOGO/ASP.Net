using Cinema.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Cinema.DAO
{
    public class FilmDAO
    {
        private static FilmDAO instance;

        public static FilmDAO Instance
        {
            get
            {
                if (instance == null) instance = new FilmDAO();
                return instance;
            }

            set
            {
                instance = value;
            }
        }
        public DataTable getFilmList()
        {
            DataTable filmdata = DAO.DataProvider.Instance.reader("select poster,tenPhim,idPHim from PHIM");
            return filmdata;
        }
        public DataTable getFilmDetail(string filmID)
        {
            DataTable filmdata = DAO.DataProvider.Instance.reader("select * from PHIM WHERE idPhim='" + filmID + "'");
            return filmdata;
        }
        public bool checkFilm(string filmID)
        {
            String query = "SELECT * FROM PHIM WHERE idPhim ='" + filmID + "'";

            return DataProvider.Instance.reader(query).Rows.Count > 0;
        }
    }
}