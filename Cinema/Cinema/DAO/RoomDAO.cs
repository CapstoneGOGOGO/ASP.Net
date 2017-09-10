using Cinema.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Cinema.DAO
{
    public class RoomDAO
    {
        private static RoomDAO instance;

        public static RoomDAO Instance
        {
            get
            {
                if (instance == null) instance = new RoomDAO();
                return instance;
            }

            set
            {
                instance = value;
            }
        }

        public DataTable getListRoom()
        {
            DataTable roomdata = DAO.DataProvider.Instance.reader("select * from PHONG");
            return roomdata;
        }
        public Boolean editRoom(string roomID, string cinemaType, int numberOfSeat)
        {
            bool eStatus = false;
            int data = DAO.DataProvider.Instance.nonQuery("UPDATE PHONG SET loaiHinhPhong='" + cinemaType + "',soLuongGhe=" + numberOfSeat + " WHERE idPhong='" + roomID + "'");
            if (data > 0) eStatus = true;
            return eStatus;
        }
        public Boolean addRoom(string roomID, string cinemaType, int numberOfSeat, string roomStatus)
        {
            bool eStatus = false;
            int data = DAO.DataProvider.Instance.nonQuery("INSERT INTO PHONG (idPhong, loaiHinhPhong, soLuongGhe, tinhTrangPhong) VALUES ('" + roomID + "','" + cinemaType + "','" + numberOfSeat + "',N'" + roomStatus + "');");
            if (data > 0) eStatus = true;
            return eStatus;
        }
        public Boolean deleteRoom(string roomID)
        {
            bool eStatus = false;
            int data = DAO.DataProvider.Instance.nonQuery("DELETE FROM PHONG WHERE idPhong='"+roomID+"'");
            if (data > 0) eStatus = true;
            return eStatus;
        }
        public DataTable getallChairs()
        {
            DataTable roomdata = DAO.DataProvider.Instance.reader("select * from GHE");
            return roomdata;
        }
    }
}