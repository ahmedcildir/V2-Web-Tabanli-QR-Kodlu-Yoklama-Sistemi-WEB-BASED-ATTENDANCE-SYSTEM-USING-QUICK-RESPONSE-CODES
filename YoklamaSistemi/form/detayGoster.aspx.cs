using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using YoklamaSistemi.Class_Metod;

namespace YoklamaSistemi.form
{
    public partial class detayGoster : System.Web.UI.Page
    {
        veritabani vt = new veritabani();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["id"]);
            string kategori = Request.QueryString["kate"];
            if (kategori.Equals("kullanici"))
            {
                repdetay.DataSource = vt.KullaniciDetay(id);
                repdetay.DataBind();
            }
            else if (kategori.Equals("yonetici"))
            {
                repdetay.DataSource = vt.YoneticiDetay(id);
                repdetay.DataBind();
            }
            else
            {

            }


        }
    }
}