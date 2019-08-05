namespace YoklamaSistemi.DB
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("tblTeacher")]
    public partial class tblTeacher
    {
        public int id { get; set; }

        [Required]
        [StringLength(50)]
        public string name { get; set; }

        [Required]
        [StringLength(50)]
        public string surname { get; set; }

        [Required]
        [StringLength(11)]
        public string TC { get; set; }

        [Required]
        [StringLength(10)]
        public string date_of_birth { get; set; }

        [Required]
        [StringLength(11)]
        public string phone { get; set; }

        [Required]
        [StringLength(50)]
        public string email { get; set; }

        [StringLength(50)]
        public string kategori { get; set; }

        [Required]
        [StringLength(50)]
        public string password { get; set; }

        public string foto { get; set; }

        public string foto2 { get; set; }

        [StringLength(2)]
        public string onay { get; set; }
    }
}
