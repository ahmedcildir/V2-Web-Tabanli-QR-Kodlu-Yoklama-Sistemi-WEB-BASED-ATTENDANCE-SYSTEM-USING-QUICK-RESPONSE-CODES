namespace YoklamaSistemi.DB
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("tblAlinanimza")]
    public partial class tblAlinanimza
    {
        public int id { get; set; }

        public int Teachr_id { get; set; }

        [StringLength(50)]
        public string dersKod { get; set; }

        [Required]
        [StringLength(20)]
        public string Hafta { get; set; }

        [Column(TypeName = "date")]
        public DateTime imza_T { get; set; }

        public TimeSpan imza_S { get; set; }
    }
}
