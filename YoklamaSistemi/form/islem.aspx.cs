using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using YoklamaSistemi.Class_Metod;

namespace YoklamaSistemi.form
{
    public partial class islem : System.Web.UI.Page
    {
        veritabani veri = new veritabani();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id =Convert.ToInt32(Request.QueryString["id"]);
            string kategori = Request.QueryString["kate"];
            string islem = Request.QueryString["islem"];
            if (islem.Equals("onay"))
            {
                veri.onay(id);
                Response.Redirect("KullaniciOnay.aspx");
            }
            else if (islem.Equals("sil"))
            {
                
                if (kategori.Equals("kullanici"))
                {
                    veri.kullanicipasif(id);
                    Response.Redirect("kullanicileriGoster.aspx");
                }
                else if (kategori.Equals("yonetici"))
                {
                    veri.yoneticipasif(id);
                    Response.Redirect("yoneticiGoster.aspx");

                }
                else
                {

                }
               
            }
            else
            {
                veri.Red(id);
                Response.Redirect("KullaniciOnay.aspx");
            }

        }
    }
}