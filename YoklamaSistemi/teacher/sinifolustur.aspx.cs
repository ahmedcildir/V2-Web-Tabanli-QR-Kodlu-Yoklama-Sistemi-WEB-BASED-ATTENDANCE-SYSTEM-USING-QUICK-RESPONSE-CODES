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
    public partial class sinifolustur : System.Web.UI.Page
    {
        YoklamaSisteiDBContext ctx = new YoklamaSisteiDBContext();
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void btnKayit_Click1(object sender, EventArgs e)
        {
            string aciklama = HiddenField.Value;
            if (!aciklama.Equals(""))
            {
                if (sinifkontrol(txtAd.Text,"1"))
                {
                    sinifOlustur(txtAd.Text, aciklama);
                    lbluyari.ForeColor = Color.Green;
                    lbluyari.Text = txtAd.Text + " İsimli Sınıf Başarılı Bir Şekilde Oluşturuldu..";
                    txtAd.Text = "";
                }
                else
                {
                    lbluyari.Text = txtAd.Text + " İsimli Sınıf Daha Önce Zaten Oluşturulmuştur !!";
                }
                
            }
            else
            {
                lbluyari.Text = "Açıklmama Kısmı Boş Geçilemez !!";
            }
        }

        //Sınıf oluşturma metodu
        public void sinifOlustur(string sinifad, string aciklama)
        {
            tblClass ekle = new tblClass()
            {
                class_name = sinifad,
                aciklama = aciklama,
                pozisyon = "12",
                teacher_id = "1"

            };
            ctx.tblClasses.Add(ekle);
            ctx.SaveChanges();
        }
        //tek sınıf oluşturmakontrolü
        public bool sinifkontrol(string sinisAd, string id)
        {
            var getsinif = from p in ctx.tblClasses
                            where (p.teacher_id == id && p.class_name == sinisAd)
                            select p;
            if (getsinif.Any())
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