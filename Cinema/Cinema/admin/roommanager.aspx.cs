using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Text;
using System.Configuration;

namespace Cinema.admin
{
    public partial class roommanager : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            getRoomTable();
        }
        protected void getRoomTable()
        {
            DataTable dt = DAO.RoomDAO.Instance.getListRoom();

            StringBuilder html = new StringBuilder();

            html.Append("<table id='thetable' class='table table-striped'>");

            html.Append("<thead class='thead-inverse'><tr><th>STT</th><th>Tên phòng </th><th>Loại hình phòng</th><th>Số lượng ghế</th><th>Tình trạng</th><th>Sửa bố cục phòng</th><th>Sửa thông tin phòng</th><th>Xóa</th></tr></thead>");
            int stt = 1;
            html.Append("<tbody>");
            foreach (DataRow row in dt.Rows)
            {
                html.Append("<tr id=" + row["idPhong"] + ">");
                html.Append("<td>" + stt + "</td>");
                html.Append("<td>" + row["idPhong"] + "</td>");
                html.Append("<td>" + row["loaiHinhPhong"] + "</td>");
                html.Append("<td>" + row["soLuongGhe"] + "</td>");
                html.Append("<td>" + row["tinhTrangPhong"] + "</td>");
                html.Append("<td><a href='#' class='btn btn-info btn-sm btn-block btn-edit'><i class='fa fa-pencil-square-o' aria-hidden='true'></i></a></td>");
                html.Append("<td><a href='#' class='btn btn-info btn-sm btn-block btn-edit' data-toggle='modal' data-target='#suattphong'><i class='fa fa-pencil-square' aria-hidden='true'></i></a></td>");
                html.Append("<td><a href='#' class='btn btn-outline-danger btn-sm btn-block btn-edit' data-toggle='modal' data-target='#xoaphong'><i class='fa fa-trash' aria-hidden='true'></i></a></td>");
                html.Append("</tr>");
                stt = stt + 1;
            }
            html.Append("</tbody>");
            html.Append("</table>");
            PlaceHolder1.Controls.Add(new Literal { Text = html.ToString() });

        }
        protected void editRoom_Click(object sender, EventArgs e)
        {
            if (edit_numberOfSeat.Value.Length <= 3)
            {
                DAO.RoomDAO.Instance.editRoom(edit_roomID.Value, edit_cinemaType.Value, int.Parse(edit_numberOfSeat.Value));
                PlaceHolder1.Controls.Clear();
                getRoomTable();
                alert.Attributes["class"] = "alert alert-success";
                alert.InnerText = "Chỉnh sửa thành công!!";
            }
            else
            {
                alert.Attributes["class"] = "alert alert-danger";
                alert.InnerText = "Lỗi! không thể chỉnh sửa!!";
            }
        }
        protected void addRoom_Click(object sender, EventArgs e)
        {
            if (edit_numberOfSeat.Value.Length <= 3)
            {
                DAO.RoomDAO.Instance.addRoom(add_roomID.Value, add_cinemaType.Value, int.Parse(add_numberOfSeat.Value), add_roomStatus.Value);
                PlaceHolder1.Controls.Clear();
                getRoomTable();
                alert.Attributes["class"] = "alert alert-success";
                alert.InnerText = "Thêm thành công!!";
            }
            else
            {
                alert.Attributes["class"] = "alert alert-danger";
                alert.InnerText = "Lỗi! không thể chỉnh sửa!!";
            }
        }
        protected void deleteRoom_Click(object sender, EventArgs e)
        {
            if (edit_roomID.Value != "")
            {
                DAO.RoomDAO.Instance.deleteRoom(edit_roomID.Value);
                PlaceHolder1.Controls.Clear();
                getRoomTable();
                alert.Attributes["class"] = "alert alert-success";
                alert.InnerText = "Xóa thành công!!";
            }
            else
            {
                alert.Attributes["class"] = "alert alert-danger";
                alert.InnerText = "Lỗi! không thể xóa "+ edit_roomID.Value + "!!";
            }
        }
    }
}