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
    public partial class yoneticiGoster : System.Web.UI.Page
    {
        YoklamaSisteiDBContext ctx = new YoklamaSisteiDBContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            var liste = ctx.tblAdmins.Where(x=>x.onay.Equals("1")).ToList();
            repyonetici.DataSource = liste;
            repyonetici.DataBind();
        }
    }
}