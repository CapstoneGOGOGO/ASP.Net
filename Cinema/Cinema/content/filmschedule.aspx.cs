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
        protected String getDate(string date)
        {
            DateTime dDate;
            string sdate = null;
            if (!string.IsNullOrEmpty(date.ToString()))
            {
                dDate = DateTime.Parse(date.ToString());
                sdate = dDate.ToString("HH");
                sdate = dDate.ToLongDateString();
            }
            return sdate;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable ListSchedule = DAO.FilmDAO.Instance.getFilmSchedule();
            DataTable filmTimeline;
            StringBuilder html = new StringBuilder();
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
                    html.Append("<div class='film-type'>"+rowTL["loaiHinhPhong"]+"</div>");
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