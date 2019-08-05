using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using YoklamaSistemi.DB;

namespace YoklamaSistemi.form
{
    public partial class KullaniciOnay : System.Web.UI.Page
    {
        YoklamaSisteiDBContext ctx = new YoklamaSisteiDBContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            onaybekleyen();
        }

        public void onaybekleyen()
        {
            var getOnayBekleyen = ctx.tblTeachers.Where(x => x.onay == "0").ToList();
            repOnay.DataSource = getOnayBekleyen;
            repOnay.DataBind();
            if (getOnayBekleyen.Count() == 0)
            {
                lblmesaj.Text = "Onay Bekleyen Kullanıcı Bulunmamaktadır.<br/>";
            }

        }
    }
}