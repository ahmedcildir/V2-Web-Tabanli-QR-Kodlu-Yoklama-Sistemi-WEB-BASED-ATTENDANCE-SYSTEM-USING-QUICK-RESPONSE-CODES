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

        public void kullaniciKayit
            (string Ad, string soyad, string Tc, string DT, string gorev,
            string telefon, string Eposta, string parola,string onay)
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
                onay=onay
            };
            ctx.tblTeachers.Add(ekle);
            ctx.SaveChanges();
        }

        public void onay(int id)
        {
            var setonay = from p in ctx.tblTeachers where (p.id == id) select p;
            foreach (var p in setonay)
            {
                p.onay = "1";
            }
            ctx.SaveChanges();
        }
        public void Red(int id)
        {
            var setonay = from p in ctx.tblTeachers where (p.id == id) select p;
            foreach (var p in setonay)
            {
                p.onay = "2";
            }
            ctx.SaveChanges();
        }
        

    }
}