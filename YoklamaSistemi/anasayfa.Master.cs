using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using YoklamaSistemi.DB;

namespace YoklamaSistemi
{
    public partial class anasayfa : System.Web.UI.MasterPage
    {
        YoklamaSisteiDBContext ctx = new YoklamaSisteiDBContext();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["id"] != null && Session["Login_onay"].ToString() == "OK")
            {
                int id = int.Parse(Session["id"].ToString());
                var qUser = ctx.tblAdmins.Where(x => x.id == id).FirstOrDefault();
                lblad1.Text = " " + qUser.name + "  " + qUser.surname;
                lblAd2.Text = " " + qUser.name + "  " + qUser.surname;
                lblad3.Text = " " + qUser.name + "  " + qUser.surname;

                var getid = from i in ctx.tblAdmins
                            where (i.id == id)
                            select i;
                repid.DataSource = getid.ToList();
                repid.DataBind();
                //imFoto.ImageUrl = qUser.Fotograf;



            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
}