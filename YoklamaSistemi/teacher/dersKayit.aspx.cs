using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using YoklamaSistemi.DB;

namespace YoklamaSistemi.teacher
{
    public partial class dersKayit : System.Web.UI.Page
    {
        YoklamaSisteiDBContext ctx = new YoklamaSisteiDBContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnKayit_Click(object sender, EventArgs e)
        {
            string aciklama = HiddenField.Value;
            if (!aciklama.Equals(""))
            {
                if (derskontrol(txtDesKod.Text))
                {
                    dersOlustur(txtDesKod.Text, txtDesAd.Text, txtDersSuresi.Text, aciklama);
                    lblmesaj.ForeColor = Color.Green;
                    lblmesaj.Text = "( " + txtDesKod.Text + " ) Kodlu Ders Başarılı Bir Şekilde Kayıt Edildi ..";
                }
                else
                {
                    lblmesaj.ForeColor = Color.Red;
                    lblmesaj.Text = "( " + txtDesKod.Text + " ) Kodlu Ders Daha Önce Kayıt edilmiştir !!";
                }
            }
            else
            {
                lblmesaj.ForeColor = Color.Red;
                lblmesaj.Text = "Açıklama Kısmı Boş Geçilemez !!";
            }

        }
        //Ders kayıt metodu
        public void dersOlustur(string dersKod, string dersAd, string dersSuresi, string aciklama)
        {
            tblDerslar ekle = new tblDerslar()
            {
                teacher_id = 1,
                dersKod = dersKod,
                dersAd = dersAd,
                dersSuresi = dersSuresi,
                aciklama = aciklama,
                eklemeTarihi = DateTime.Now.Date

            };
            ctx.tblDerslars.Add(ekle);
            ctx.SaveChanges();
        }

        //tek ders kontrol
        public bool derskontrol(string derskod)
        {
            var getders = from d in ctx.tblDerslars
                          where (d.dersKod == derskod)
                          select d;
            if (getders.Any())
            {
                return false;
            }
            else
            {
                return true;
            }
        }
    }
}