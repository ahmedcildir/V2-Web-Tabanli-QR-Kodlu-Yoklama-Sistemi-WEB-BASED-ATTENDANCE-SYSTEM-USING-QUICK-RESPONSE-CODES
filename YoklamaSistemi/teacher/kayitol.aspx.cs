using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using YoklamaSistemi.Class_Metod;

namespace YoklamaSistemi.teacher
{
    public partial class kayitol : System.Web.UI.Page
    {
        islemler x = new islemler();
        kontroller tek = new kontroller();
        veritabani veri = new veritabani();
        protected void Page_Load(object sender, EventArgs e)
        {
            revdogum.MaximumValue = x.Tarih();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Tc Kimlik nosunun daha önce kayıt edilip edilmediğini kontrol ediyor
            if (tek.TcKullanici(txttc.Text))
            {   //kullanıcı şartlarının onaylanıp onaylanmadığını kontrol ediyor
                if (ceksartkabul.Checked == true)
                {   //ucret tipinin belirenip belirlenmediğini kontrol ediyor
                    if (radbtnucret.SelectedItem == null)
                    {
                        Response.Write("<script> alert('Lütfen Ücretlendirme Seçeneğini seçiniz'); </script>");
                    }
                    else//ucretlendirme seçeneği
                    {
                        //RadioButtonList value değerini ucretTipine atıyor
                        int ucretTipi = Int32.Parse(radbtnucret.SelectedItem.Value);
                        //Class_Metod klasöründe bulınan veritabani clasonı çağırıp kayır yekliyor
                        veri.kullaniciKayit(txtAd.Text, txtsoyad.Text, txttc.Text, txtdogumtarihi.Text,
                         dropgorev.SelectedItem.Text, txttelefon.Text, txtemail.Text, txtparola.Text, ucretTipi.ToString());
                        //kontroller
                        if (ucretTipi == 1)
                        {
                            Response.Write("<script> alert('" + txtAd.Text + " " + txtsoyad.Text + " isimli ve " + txttc.Text + " T.C Nolu Kullanıcı Başarılı Bir Şekilde Kayıt Edildi'); </script>");
                        }
                        else//kontrol
                        {
                            Response.Write("<script> alert('" + txtAd.Text + " " + txtsoyad.Text + " isimli ve " + txttc.Text + " T.C Nolu Kullanıcı Başarılı Bir Şekilde Kayıt Edilmiş Olup Onay Beklemektedir'); </script>");
                        }
                    }
                }
                else//kullanıcı şartları
                {
                    Response.Write("<script> alert('Kullanıcı Şartlarını kabul etmediniz'); </script>");
                }
            }
            else//tc
            {
                Response.Write("<script> alert('" + txttc.Text + " T.C Nolu Kullanıcı Zaten Kayıtlın'); </script>");

            }
        }
    }
}