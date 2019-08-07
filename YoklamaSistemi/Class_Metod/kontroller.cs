using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using YoklamaSistemi.DB;

namespace YoklamaSistemi.Class_Metod
{
    
    public class kontroller
    {
        YoklamaSisteiDBContext ctx = new YoklamaSisteiDBContext();
        //kullanıcı eklemede bir kullanıcıyı birden fazla kayıt olmasını engellem. 
        public bool TcKullanici(string tc)
        {
            var TekTC = from t in ctx.tblTeachers where (t.TC == tc) select t;
            if (TekTC.Any())
            {

                return false;
            }
            else
            {
                return true;
            }

        }

        //Yönetici eklemede bir kullanıcıyı birden fazla kayıt olmasını engellem. 
        public bool TcYonetici(string tc)
        {
            var TekTC = from t in ctx.tblAdmins where (t.TC == tc) select t;
            if (TekTC.Any())
            {

                return false;
            }
            else
            {
                return true;
            }

        }
        //get kontrolü
        public bool SayiMi(string text)
        {
            foreach (char chr in text)
            {
                if (!Char.IsNumber(chr)) return false;
            }
            return true;
        }
    }
}