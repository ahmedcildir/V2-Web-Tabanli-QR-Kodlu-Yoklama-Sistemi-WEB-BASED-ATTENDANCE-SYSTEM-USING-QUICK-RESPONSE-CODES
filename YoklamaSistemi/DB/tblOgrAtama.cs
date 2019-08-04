namespace YoklamaSistemi.DB
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("tblOgrAtama")]
    public partial class tblOgrAtama
    {
        public int id { get; set; }

        public int c_id { get; set; }

        public int s_id { get; set; }

        [Required]
        [StringLength(50)]
        public string pzisyon { get; set; }

        public int? tblClass_id { get; set; }

        public int? tblStudents_id { get; set; }
    }
}
