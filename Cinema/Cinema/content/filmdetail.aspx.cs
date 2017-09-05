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

namespace Cinema.content
{
    public partial class filmdetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string getfilmID = Request.QueryString["id"];
            if (DAO.FilmDAO.Instance.checkFilm(getfilmID))
            {
                DataTable sql = DAO.FilmDAO.Instance.getFilmDetail(getfilmID);
                Page.Title = "CGV | " + sql.Rows[0]["tenPhim"].ToString();
                StringBuilder html = new StringBuilder();
                //Hiển thị thông tin chi tiết phim ra trang
                film_poster.Attributes["src"] = "/images/poster/"+sql.Rows[0]["poster"].ToString();
                film_ten.InnerText = film_bigname.InnerText = sql.Rows[0]["tenPhim"].ToString();
                film_daodien.InnerText = sql.Rows[0]["daoDien"].ToString();
                film_dienvien.InnerText = sql.Rows[0]["dienVien"].ToString();
                film_theloai.InnerText = sql.Rows[0]["loaiphim"].ToString();
                film_thoiluong.InnerText = sql.Rows[0]["thoiLuong"].ToString() + " phút";
                film_gioihantuoi.InnerText = sql.Rows[0]["gioiHanTuoi"].ToString() + " tuổi";
                film_ngonngu.InnerText = sql.Rows[0]["ngonNgu"].ToString();
                film_mota.InnerText = sql.Rows[0]["moTa"].ToString();
                film_khoichieu.InnerText = sql.Rows[0]["khoiChieu"].ToString();
            }
            else
            {
                film_detailcontent.InnerHtml = "<center>Phim này không tồn tại trong hệ thống!!!</center>";
            }

        }
    }
}