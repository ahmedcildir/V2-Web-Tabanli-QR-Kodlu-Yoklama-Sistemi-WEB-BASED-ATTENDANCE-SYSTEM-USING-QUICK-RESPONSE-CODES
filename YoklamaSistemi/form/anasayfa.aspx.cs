using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using YoklamaSistemi.DB;

namespace YoklamaSistemi.form
{
    public partial class anasayfa : System.Web.UI.Page
    {
        YoklamaSisteiDBContext ctx = new YoklamaSisteiDBContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            //kullanıcı sayısını getir
            var getkullanicisayisi = ctx.tblTeachers.Where(x => x.onay == "1").ToList();
            lblkullanici.Text = getkullanicisayisi.Count().ToString();
            //onay beklayen kullanıcıları getir
            var getOnayBekleyen = ctx.tblTeachers.Where(x => x.onay == "0").ToList();
            lblonay.Text = getOnayBekleyen.Count().ToString();
            //oluşturulan sınıf sayısını getir
            var getsınıfsayisi = ctx.tblClasses.ToList();
            lblsinif.Text = getsınıfsayisi.Count().ToString();
            //yönetici sayısını getir
            var getyoneticisayisi = ctx.tblAdmins.Where(x => x.onay == "1").ToList();
            lblyonetici.Text = getyoneticisayisi.Count().ToString();
            //sisteme kayırlı öğrenci sayısını getir
            var getogrencisayisi = ctx.tblStudents.Where(x => x.onay == "1").ToList();
            lblogrenci.Text = getogrencisayisi.Count().ToString();
        }
    }
}