namespace YoklamaSistemi.DB
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("tblDersAtama")]
    public partial class tblDersAtama
    {
        public int id { get; set; }

        [Required]
        [StringLength(11)]
        public string student_id { get; set; }

        [Required]
        [StringLength(20)]
        public string dersKodu { get; set; }

        public int tblStudents_id { get; set; }

        public int tblDersler_id { get; set; }
    }
}
