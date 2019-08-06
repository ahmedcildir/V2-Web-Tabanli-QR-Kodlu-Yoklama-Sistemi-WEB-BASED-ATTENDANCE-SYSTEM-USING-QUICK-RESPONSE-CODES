using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using YoklamaSistemi.DB;

namespace YoklamaSistemi.Class_Metod
{
    public class veritabani
    {
        YoklamaSisteiDBContext ctx = new YoklamaSisteiDBContext();

        //Kullanıcı kayıt ve başvuru
        public void kullaniciKayit
            (string Ad, string soyad, string Tc, string DT, string gorev,
            string telefon, string Eposta, string parola, string onay)
        {
            tblTeacher ekle = new tblTeacher()
            {
                name = Ad,
                surname = soyad,
                TC = Tc,
                date_of_birth = DT,
                kategori = gorev,
                phone = telefon,
                email = Eposta,
                password = parola,
                onay = onay,
                foto= "avatar5.png"
            };
            ctx.tblTeachers.Add(ekle);
            ctx.SaveChanges();
        }
        //Kullanıcıları listeleme
        public object kullaniciListele()
        {
            var liste =ctx.tblTeachers.Where(x=>x.onay =="1").ToList();
            
            return liste;
        } 

        //Kullanıcı detayını göster
        public object KullaniciDetay(int id)
        {
            var liste = ctx.tblTeachers.Where(x => x.id == id).ToList();
            return liste;

        }
        //Yönetici detayını göster
        public object YoneticiDetay(int id)
        {
            var liste = ctx.tblAdmins.Where(x => x.id == id).ToList();
            return liste;

        }

        //Yönetici kayıt
        public void YoneticiKayit
            (string Ad, string soyad, string Tc, string DT, string gorev,
            string telefon, string Eposta, string parola)
        {
            tblAdmin ekle = new tblAdmin()
            {
                name = Ad,
                surname = soyad,
                TC = Tc,
                date_of_birth = DT,
                kategori = gorev,
                phone = telefon,
                email = Eposta,
                password = parola,
                foto= "avatar5.png",
                foto2= "photo1.png",
                onay="1"
            };
            ctx.tblAdmins.Add(ekle);
            ctx.SaveChanges();
        }

        //kullanıcı onay verme
        public void onay(int id)
        {
            var setonay = from p in ctx.tblTeachers where (p.id == id) select p;
            foreach (var p in setonay)
            {
                p.onay = "1";
            }
            ctx.SaveChanges();
        }
        //kullanıcı Redetme
        public void Red(int id)
        {
            var setonay = from p in ctx.tblTeachers where (p.id == id) select p;
            foreach (var p in setonay)
            {
                p.onay = "2";
            }
            ctx.SaveChanges();
        }
        //kullanıcı pasif
        public void kullanicipasif(int id)
        {
            var setonay = from p in ctx.tblTeachers where (p.id == id) select p;
            foreach (var p in setonay)
            {
                p.onay = "2";
            }
            ctx.SaveChanges();
        }
        //Yönetici pasif
        public void yoneticipasif(int id)
        {
            var setonay = from p in ctx.tblAdmins where (p.id == id) select p;
            foreach (var p in setonay)
            {
                p.onay = "0";
            }
            ctx.SaveChanges();
        }
    }
}