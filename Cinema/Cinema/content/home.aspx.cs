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
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            getFilmList();
        }
        protected void getFilmList()
        {

            DataTable dt = DAO.FilmDAO.Instance.getFilmList();

            StringBuilder html = new StringBuilder();

            foreach (DataRow row in dt.Rows)
            {
                html.Append("<article>");
                html.Append("<a href='filmdetail.aspx?id="+ row["idPhim"] + "' title='"+row["tenPhim"]+"' >");
                html.Append("<img src='/images/poster/" + row["poster"]+"'/>");
                html.Append("</a>");
                html.Append("</article>");
            }
            listFilm.Controls.Add(new Literal { Text = html.ToString() });
        }
    }
}