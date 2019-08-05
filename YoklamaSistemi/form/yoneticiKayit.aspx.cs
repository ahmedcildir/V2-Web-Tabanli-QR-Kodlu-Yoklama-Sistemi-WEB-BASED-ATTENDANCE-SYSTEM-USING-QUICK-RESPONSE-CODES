using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using YoklamaSistemi.Class_Metod;

namespace YoklamaSistemi.form
{
    public partial class yoneticiKayit : System.Web.UI.Page
    {
        islemler x = new islemler();
        veritabani vt = new veritabani();
        kontroller kontrol = new kontroller();
        protected void Page_Load(object sender, EventArgs e)
        {
            //Doğum tarihi Maksimum tarihi belirleme.
            revdogum.MaximumValue = x.Tarih();
        }

        protected void btnKayit_Click(object sender, EventArgs e)
        {
            if (kontrol.TcYonetici(txtTc.Text))
            {
                if (dropgorev.SelectedItem.Text == "Görev Seçiniz..")
                {
                    lblmesaj.ForeColor = Color.Red;
                    lblmesaj.Text = "Görev Seçiniz Lütfen";
                }
                else
                {
                    vt.YoneticiKayit(txtAd.Text, txtSoyad.Text, txtTc.Text, txtDogumTarihi.Text,
                dropgorev.SelectedItem.Text, txtTelefon.Text, txtEposta.Text, txtSifre.Text);
                    lblmesaj.ForeColor = Color.Green;
                    lblmesaj.Text = txtTc.Text + " T.C Nolu Yönetici Başarılı Bir Şekilde Kayıt Edildi. ";
                }

            }
            else
            {
                lblmesaj.ForeColor = Color.Red;
                lblmesaj.Text = txtTc.Text + " T.C Nolu Kullanıcı Zaten Kayıtlın ";
            }

        }
    }
}