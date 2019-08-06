using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using YoklamaSistemi.Class_Metod;
using YoklamaSistemi.DB;

namespace YoklamaSistemi.form
{

    public partial class profil : System.Web.UI.Page
    {
        islemler x = new islemler();
        veritabani vt = new veritabani();
        YoklamaSisteiDBContext ctx = new YoklamaSisteiDBContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            revdogum.MaximumValue = x.Tarih();
            int id = Convert.ToInt32(Request.QueryString["id"]);
            string kategori = Request.QueryString["kate"];
            if (kategori.Equals("kullanici"))
            {
                repdetay.DataSource = vt.KullaniciDetay(id);
                repdetay.DataBind();

                if (!Page.IsPostBack)
                {
                    getbilgiler(id);
                }
            }
            else if (kategori.Equals("yonetici"))
            {
                repdetay.DataSource = vt.YoneticiDetay(id);
                repdetay.DataBind();
                if (!Page.IsPostBack)
                {
                    getYoneticibilgiler(id);
                }
            }
            else
            {
                int idisi = Convert.ToInt32(Session["id"].ToString());
                repdetay.DataSource = vt.YoneticiDetay(idisi);
                repdetay.DataBind();
                if (!Page.IsPostBack)
                {
                    getYoneticibilgiler(idisi);
                }
            }
           
        }

        //kullanıcı Bilgilerini Getir
        public void getbilgiler(int id)
        {
            var getbilgi = from b in ctx.tblTeachers
                           where (b.id == id)
                           select new
                           {
                               ad = b.name,
                               soyad = b.surname,
                               tc = b.TC,
                               dogumtarihi = b.date_of_birth,
                               telefon = b.phone,
                               email = b.email,
                               gorev = b.kategori
                           };
            foreach (var i in getbilgi)
            {
                txtAd.Text = i.ad;
                txtSoyad.Text = i.soyad;
                txtTc.Text = i.tc;
                txtDogumTarihi.Text = i.dogumtarihi;
                txtTelefon.Text = i.telefon;
                txtEposta.Text = i.email;
                dropduzen.SelectedItem.Text = i.gorev;
            }
        }
        //yönetici Vilgilerini getir
        public void getYoneticibilgiler(int id)
        {
            var getbilgi = from b in ctx.tblAdmins
                           where (b.id == id)
                           select new
                           {
                               ad = b.name,
                               soyad = b.surname,
                               tc = b.TC,
                               dogumtarihi = b.date_of_birth,
                               telefon = b.phone,
                               email = b.email,
                               gorev = b.kategori
                           };
            foreach (var i in getbilgi)
            {
                txtAd.Text = i.ad;
                txtSoyad.Text = i.soyad;
                txtTc.Text = i.tc;
                txtDogumTarihi.Text = i.dogumtarihi;
                txtTelefon.Text = i.telefon;
                txtEposta.Text = i.email;
                dropduzen.SelectedItem.Text = i.gorev;
            }
        }

        //Kullanıcı güncelleme metodu
        public void guncelle(int id)
        {
            var setGuncel = from p in ctx.tblTeachers where (p.id == id) select p;
            foreach (var p in setGuncel)
            {
                p.name = txtAd.Text;
                p.surname = txtSoyad.Text;
                p.TC = txtTc.Text;
                p.date_of_birth = txtDogumTarihi.Text;
                p.kategori = dropduzen.SelectedItem.Text;
                p.phone = txtTelefon.Text;
                p.email = txtEposta.Text;
            }
            ctx.SaveChanges();
        }

        //Yönetici güncelleme metodu
        public void yoneticiguncelle(int id)
        {
            var setGuncel = from p in ctx.tblAdmins where (p.id == id) select p;
            foreach (var p in setGuncel)
            {
                p.name = txtAd.Text;
                p.surname = txtSoyad.Text;
                p.TC = txtTc.Text;
                p.date_of_birth = txtDogumTarihi.Text;
                p.kategori = dropduzen.SelectedItem.Text;
                p.phone = txtTelefon.Text;
                p.email = txtEposta.Text;
            }
            ctx.SaveChanges();
        }
        //fotoğraf güncelleme
        public void fotoguncelle(int id)
        {
            if (filfotosec.HasFile)
            {
                string fileName = filfotosec.FileName;
                Guid G = Guid.NewGuid();
                string yol = G + "-u-" + filfotosec.FileName;
                //imgfoto.ImageUrl = "~/Forms/images/" + yol;
                filfotosec.SaveAs(Server.MapPath("../Libraries/dist/img/" + yol));

                var resim = ctx.tblTeachers.First(x => x.id == id);
                resim.foto = "../Libraries/dist/img/" + yol;
                ctx.SaveChanges();
            }
            else
            {
                lblmesaj.Text = "Lütfen Yüklenecek Bir Resim Seçiniz.";
            }
        }
        //yönetici fotoğraf güncelleme
        public void yoneticifotoguncelle(int id)
        {
            if (filfotosec.HasFile)
            {
                string fileName = filfotosec.FileName;
                Guid G = Guid.NewGuid();
                string yol = G + "-u-" + filfotosec.FileName;
                //imgfoto.ImageUrl = "~/Forms/images/" + yol;
                filfotosec.SaveAs(Server.MapPath("../Libraries/dist/img/" + yol));

                var resim = ctx.tblAdmins.First(x => x.id == id);
                resim.foto = "../Libraries/dist/img/" + yol;
                ctx.SaveChanges();
            }
            else
            {
                lblmesaj.Text = "Lütfen Yüklenecek Bir Resim Seçiniz.";
            }
        }
        //Arka pilan fotoğraf güncelleme
        public void ArkaPilanfotoguncelle(int id)
        {
            if (resimyukle.HasFile)
            {
                string fileName = resimyukle.FileName;
                Guid G = Guid.NewGuid();
                string yol = G + "-u-" + resimyukle.FileName;
                //imgfoto.ImageUrl = "~/Forms/images/" + yol;
                resimyukle.SaveAs(Server.MapPath("../Libraries/dist/img/" + yol));

                var resim = ctx.tblTeachers.First(x => x.id == id);
                resim.foto2 = "../Libraries/dist/img/" + yol;
                ctx.SaveChanges();
            }
            else
            {
                //lblBilgilendirme.Text = "Lütfen Yüklenecek Bir Resim Seçiniz.";
            }
        }
        //yönetici Arka pilan fotoğraf güncelleme
        public void yoneticiArkaPilanfotoguncelle(int id)
        {
            if (resimyukle.HasFile)
            {
                string fileName = resimyukle.FileName;
                Guid G = Guid.NewGuid();
                string yol = G + "-u-" + resimyukle.FileName;
                //imgfoto.ImageUrl = "~/Forms/images/" + yol;
                resimyukle.SaveAs(Server.MapPath("../Libraries/dist/img/" + yol));

                var resim = ctx.tblAdmins.First(x => x.id == id);
                resim.foto2 = "../Libraries/dist/img/" + yol;
                ctx.SaveChanges();
            }
            else
            {
                //lblBilgilendirme.Text = "Lütfen Yüklenecek Bir Resim Seçiniz.";
            }
        }

        protected void btnguncelle_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["id"]);
            string kategori = Request.QueryString["kate"];
            if (kategori.Equals("kullanici"))
            {
                guncelle(id);
            }
            else if (kategori.Equals("yonetici"))
            {
                yoneticiguncelle(id);
            }
            else
            {
                int idisi = Convert.ToInt32(Session["id"].ToString());
                yoneticiguncelle(idisi);
            }
            
            
        }

        protected void btnfotoKayit_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["id"]);
            string kategori = Request.QueryString["kate"];
            if (kategori.Equals("kullanici"))
            {
                fotoguncelle(id);
            }
            else if (kategori.Equals("yonetici"))
            {
                yoneticifotoguncelle(id);
            }
            else
            {
                int idisi = Convert.ToInt32(Session["id"].ToString());
                yoneticifotoguncelle(idisi);
            }
            
        }

        protected void btnArkafotokayıt_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["id"]);
            string kategori = Request.QueryString["kate"];
            if (kategori.Equals("kullanici"))
            {
                ArkaPilanfotoguncelle(id);
            }
            else if (kategori.Equals("yonetici"))
            {
                yoneticiArkaPilanfotoguncelle(id);
            }
            else
            {
                int idisi = Convert.ToInt32(Session["id"].ToString());
                yoneticiArkaPilanfotoguncelle(idisi);
            }
            
        }
    }
}