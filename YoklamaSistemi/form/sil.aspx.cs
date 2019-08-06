using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YoklamaSistemi.form
{
    public partial class sil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string kategori = Request.QueryString["kate"];
            string id = Request.QueryString["id"];
            Session["id1"] = id;
            Session["kate"] = kategori;

        }
    }
}