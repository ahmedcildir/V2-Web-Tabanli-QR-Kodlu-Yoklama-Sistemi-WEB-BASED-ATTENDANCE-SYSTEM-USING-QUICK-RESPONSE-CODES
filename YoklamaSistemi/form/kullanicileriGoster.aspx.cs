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
    public partial class kullanicileriGoster : System.Web.UI.Page
    {
        YoklamaSisteiDBContext ctx = new YoklamaSisteiDBContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            var liste = ctx.tblTeachers.Where(x => x.onay == "1").ToList();
            replistele.DataSource = liste;
            replistele.DataBind();
            if (liste.Count == 0)
            {
                lblmesaj.Text = " Kullanıcı Bulunmamaktadır.<br/>";
            }
        }
    }
}