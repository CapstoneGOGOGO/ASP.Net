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
    public partial class filmschedule : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Hiện ra các btn ngày của các lịch chiếu
            DataTable ListDay = DAO.FilmDAO.Instance.getFilmDay();

            //Hiện ra tất cả list film có lịch chiếu trong ngày hiện tại và vài ngày sau
            DataTable ListSchedule = DAO.FilmDAO.Instance.getFilmSchedule();

            //Hiển thị ra tất cả mốc giờ chiếu của từng film
            DataTable filmTimeline;

            StringBuilder html = new StringBuilder();
            StringBuilder htmlfilmDay = new StringBuilder();
            foreach (DataRow rowDay in ListDay.Rows)
            {
                htmlfilmDay.Append("<a class='btn btn-secondary btn-listDay'>");
                htmlfilmDay.Append("<div class='row'>");

                htmlfilmDay.Append("<div class='col-6 left-day d-flex align-items-center justify-content-center'>");
                htmlfilmDay.Append(DateTime.Parse(rowDay["ngayChieu"].ToString()).ToString("dd"));
                htmlfilmDay.Append("</div>");

                htmlfilmDay.Append("<div class='col-6 right-day d-flex align-items-center justify-content-center'>");
                htmlfilmDay.Append(DateTime.Parse(rowDay["ngayChieu"].ToString().ToUpper()).ToString("ddd"));
                htmlfilmDay.Append("<br/>");
                htmlfilmDay.Append(DateTime.Parse(rowDay["ngayChieu"].ToString()).ToString("MM"));
                htmlfilmDay.Append("</div>");

                htmlfilmDay.Append("</div>");
                htmlfilmDay.Append("</a>");
            }
            listFilmDay.Controls.Add(new Literal { Text = htmlfilmDay.ToString() });


            foreach (DataRow rowLS in ListSchedule.Rows)
            {
                html.Append("<div class='row row-filmschedule'>");
                html.Append("<div class='col-2 bg-light card-FSitem-left'>");
                html.Append("<img src='/images/poster/" + rowLS["poster"] + "' style='max-width: 100%;' />");
                html.Append("</div>");
                html.Append("<div class='col-10 bg-light d-flex align-items-center d-flex justify-content-center right-timeline'>");
                filmTimeline = DAO.FilmDAO.Instance.getTimeline(rowLS["idPhim"].ToString());
                foreach (DataRow rowTL in filmTimeline.Rows)
                {
                    html.Append("<a href='#' class='item-hours text-center'>");
                    html.Append("<div class='film-type'>" + rowTL["loaiHinhPhong"] + "</div>");
                    html.Append("<div class='btn-danger btn-hours'>");
                    html.Append(DateTime.Parse(rowTL["gioBatDau"].ToString()).ToString("hh:mm"));
                    html.Append("<sup>" + DateTime.Parse(rowTL["gioBatDau"].ToString()).ToString("tt") + "</sup>");
                    html.Append("</div>");
                    html.Append("</a>");
                }
                html.Append("</div>");
                html.Append("</div>");

            }
            listSchedule.Controls.Add(new Literal { Text = html.ToString() });
        }
    }
}