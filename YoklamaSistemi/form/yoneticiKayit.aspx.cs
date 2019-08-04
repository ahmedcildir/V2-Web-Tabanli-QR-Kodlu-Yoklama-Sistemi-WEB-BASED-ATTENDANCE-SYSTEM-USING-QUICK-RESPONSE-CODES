using System;
using System.Collections.Generic;
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
        protected void Page_Load(object sender, EventArgs e)
        {
            //Doğum tarihi Maksimum tarihi belirleme.
            revdogum.MaximumValue = x.Tarih();
        }
    }
}