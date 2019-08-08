using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using YoklamaSistemi.Class_Metod;
using YoklamaSistemi.DB;

namespace YoklamaSistemi.teacher
{
    public partial class ogrKayit : System.Web.UI.Page
    {
        islemler x = new islemler();
        YoklamaSisteiDBContext ctx = new YoklamaSisteiDBContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            //Doğum tarihi Maksimum tarihi belirleme

            revdogum.MaximumValue = x.Tarih();
        }



        protected void btnKayit_Click(object sender, EventArgs e)
        {
            if (ogrTc(txtTc.Text))
            {
                if (ogrNo(txtogrno.Text))
                {
                    ogrenciKayit(txtAd.Text, txtSoyad.Text, txtTc.
                    Text, txtDogumTarihi.Text, droppozisyo.SelectedItem.Text,
                    txtTelefon.Text, txtogrno.Text, txtEposta.Text, txtSifre.Text);
                    lblmesaj.ForeColor = Color.Green;
                    lblmesaj.Text = "( " + txtTc.Text + " ) T.C Nolu Öğrenci Başarılı Bir Şekilde Kayıt Edildi ..";
                    textTemizle();
                }
                else
                {
                    lblmesaj.ForeColor = Color.Red;
                    lblmesaj.Text = "( " + txtogrno.Text + " ) Öğrenci Nolu Öğrenci Daha Önce Kayıtedilmiş !!";
                }

            }
            else
            {
                lblmesaj.ForeColor = Color.Red;
                lblmesaj.Text = "( " + txtTc.Text + " ) T.C Nolu Öğrenci Zaten kayıtlı !!";
            }

        }

        //Öğrenci kayıt
        public void ogrenciKayit
            (string Ad, string soyad, string Tc, string DT, string gorev,
            string telefon, string ogrno, string Eposta, string parola)
        {
            tblStudent ekle = new tblStudent()
            {
                name = Ad,
                surname = soyad,
                TC = Tc,
                date_of_birth = DT,
                Pozisyon = gorev,
                phone = telefon,
                students_no = ogrno,
                email = Eposta,
                password = parola,
                foto = "../Libraries/dist/img/avatar5.png",
                foto1 = "../Libraries/dist/img/photo1.png",
                onay = "1"

            };
            ctx.tblStudents.Add(ekle);
            ctx.SaveChanges();
        }
        //ogr tc kontrol
        public bool ogrTc(string tc)
        {
            var TekTC = from t in ctx.tblStudents where (t.TC == tc) select t;
            if (TekTC.Any())
            {

                return false;
            }
            else
            {
                return true;
            }

        }
        //tek öğrenci no kontrolü
        public bool ogrNo(string ogrNo)
        {
            var TekTC = from t in ctx.tblStudents where (t.students_no == ogrNo) select t;
            if (TekTC.Any())
            {

                return false;
            }
            else
            {
                return true;
            }

        }
        //textBoxları Temizleme
        public void textTemizle()
        {
            txtAd.Text = "";
            txtSoyad.Text = "";
            txtTc.Text = "";
            txtDogumTarihi.Text = "";
            txtTelefon.Text = "";
            txtogrno.Text = "";
            txtEposta.Text = "";
            txtSifre.Text = "";
            txtSifreTekrar.Text = "";
        }
    }
}