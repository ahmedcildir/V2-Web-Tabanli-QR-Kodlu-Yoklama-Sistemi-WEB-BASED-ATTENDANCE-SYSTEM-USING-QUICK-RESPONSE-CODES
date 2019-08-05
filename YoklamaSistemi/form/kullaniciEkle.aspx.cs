using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using YoklamaSistemi.Class_Metod;
using YoklamaSistemi.DB;

namespace YoklamaSistemi.form
{
    public partial class kullaniciEkle : System.Web.UI.Page
    {
        islemler x = new islemler();
        kontroller kt = new kontroller();
        veritabani vt = new veritabani();
        YoklamaSisteiDBContext ctx = new YoklamaSisteiDBContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            //Doğum tarihi Maksimum tarihi belirleme.
            revdogum.MaximumValue = x.Tarih();
        }

        protected void btnKayit_Click(object sender, EventArgs e)
        {
            if (kt.TcKullanici(txtTc.Text))
            {
                
                vt.kullaniciKayit(txtAd.Text,txtSoyad.Text,txtTc.Text,txtDogumTarihi.Text,
                    dropgorev.SelectedItem.Text,txtTelefon.Text,txtEposta.Text,txtSifre.Text,"1");
                lblmesaj.ForeColor = Color.Green;
                lblmesaj.Text = txtAd.Text + " " + txtSoyad.Text + " isimli ve " + txtTc.Text + " T.C Nolu Kullanıcı Başarılı Bir Şekilde Kayıt Edildi";
            }
            else
            {
                lblmesaj.ForeColor = Color.Red;
                lblmesaj.Text = txtTc.Text + " T.C Nolu Kullanıcı Zaten Kayıtlın ";
            }
        }
    }
}