using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using YoklamaSistemi.DB;

namespace YoklamaSistemi.form
{
    public partial class login : System.Web.UI.Page
    {
        YoklamaSisteiDBContext ctx = new YoklamaSisteiDBContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["Login_onay"] = "No";
        }

        private bool IsvalidUser(string userName, string password)
        {

            var q1 = from p in ctx.tblAdmins
                     where p.email == userName
                     && p.password == password
                     select p;

            if (q1.Any())
            {
                var q2 = ctx.tblAdmins.Where(x => x.email == userName && x.password == password).FirstOrDefault();
                Session["id"] = q2.id;

                return true;
            }
            else
            {
                return false;
            }
        }

        protected void btngiris_Click(object sender, EventArgs e)
        {
            if (IsvalidUser(txtmail.Text, txtparola.Text))
            {
                Session["eMail"] = txtmail.Text;
                Session["Login_onay"] = "OK";

                //HttpCookie cerez = new HttpCookie("YemekSepeti");
                //cerez["eMail"] = txtUser.Text;
                //cerez.Expires = DateTime.Now.AddDays(10);
                //Response.Cookies.Add(cerez);

                Response.Redirect("anasayfa.aspx");

            }
            else
            {
                Response.Write("<script> alert('Giriş Başarısız'); </script>");

            }
        }
    }

}