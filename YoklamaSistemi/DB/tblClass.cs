namespace YoklamaSistemi.DB
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("tblClass")]
    public partial class tblClass
    {
        public int id { get; set; }

        [Required]
        [StringLength(50)]
        public string teacher_id { get; set; }

        [Required]
        [StringLength(50)]
        public string class_name { get; set; }

        [StringLength(50)]
        public string pozisyon { get; set; }

        [StringLength(250)]
        public string aciklama { get; set; }
    }
}
