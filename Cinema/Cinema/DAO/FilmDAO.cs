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
        public DataTable getFilmSchedule()
        {
            //DataTable scheduledata = DAO.DataProvider.Instance.reader("SELECT * FROM LICHCHIEU AS lc INNER JOIN SUATCHIEU AS sc ON lc.idSuatChieu = sc.idSuatChieu INNER JOIN PHIM AS p ON lc.idPhim = p.idPhim GROUP BY lc.idPhim, PHIM.poster");
            DataTable scheduledata = DAO.DataProvider.Instance.reader("SELECT p.idPhim,p.poster FROM LICHCHIEU AS lc INNER JOIN PHIM AS p ON lc.idPhim = p.idPhim GROUP BY p.idPhim,p.poster");
            return scheduledata;
        }
        public DataTable getTimeline(string idPhim)
        {
            DataTable allsuatchieu = DAO.DataProvider.Instance.reader("SELECT gioBatDau,loaiHinhPhong FROM LICHCHIEU AS LC INNER JOIN SUATCHIEU AS SC ON LC.idSuatChieu=SC.idSuatChieu INNER JOIN PHONG ON PHONG.idPhong=LC.idPhong WHERE idPHim='" + idPhim + "' ORDER BY gioBatDau");
            return allsuatchieu;
        }
        public DataTable getFilmDay()
        {
            DataTable alldays = DAO.DataProvider.Instance.reader("SELECT ngayChieu FROM LICHCHIEU WHERE ngayChieu>GETDATE()-1 GROUP BY ngayChieu");
            return alldays;
        }
    }
}