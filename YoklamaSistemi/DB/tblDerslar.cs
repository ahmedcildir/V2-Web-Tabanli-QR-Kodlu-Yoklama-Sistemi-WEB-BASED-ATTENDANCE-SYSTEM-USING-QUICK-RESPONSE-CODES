namespace YoklamaSistemi.DB
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("tblDerslar")]
    public partial class tblDerslar
    {
        public int id { get; set; }

        public int? teacher_id { get; set; }

        [StringLength(50)]
        public string dersKod { get; set; }

        [StringLength(50)]
        public string dersAd { get; set; }

        [StringLength(10)]
        public string dersSuresi { get; set; }

        [Column(TypeName = "date")]
        public DateTime? eklemeTarihi { get; set; }

        public string aciklama { get; set; }
    }
}
