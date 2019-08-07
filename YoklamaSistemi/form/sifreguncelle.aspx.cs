using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using YoklamaSistemi.Class_Metod;

namespace YoklamaSistemi.form
{
    public partial class sifreguncelle : System.Web.UI.Page
    {
        veritabani veri = new veritabani();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnYukle_Click(object sender, EventArgs e)
        {
            if (Session["id"] != null)
            {
                int id = Convert.ToInt32(Session["id"].ToString());
                if (veri.parolakontrol(txtEskiSifre.Text,id))
                {
                    string parola = txtYeniSifrr.Text;
                    veri.yoneticiParolaGuncelleme(parola, id);
                    lblUyari.Text = "Parolanız başarılı bir şekilde güncellenmiştir..";
                    txtEskiSifre.Text = "";
                    txtYeniSifrr.Text = "";
                    txtYeniSifrrTekrar.Text = "";
                }
                else
                {
                    lblUyari.Text = "Lütfen Eski Parolayı Doğru Girdiğinizden Emin Olunuz..";
                }
            }
            else
            {
                   
            }
        }
    }
}