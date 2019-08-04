using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace YoklamaSistemi.Class_Metod
{
    public class islemler
    {
        public string Tarih()
        {
            //Doğum tarihi Maksimum tarihi belirleme
            DateTime zaman = DateTime.Now;
            return zaman.ToShortDateString().ToString();
        }
    }
}