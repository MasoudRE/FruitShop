namespace DataLayer.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("SabtPardakhti")]
    public partial class SabtPardakhti
    {
        public int SabtPardakhtiID { get; set; }

        public int? FK_BarNamehID { get; set; }

        public DateTime? Time { get; set; }

        public int? FK_AshkhasID { get; set; }

        [StringLength(50)]
        public string Tozihat { get; set; }

        public int? Mablagh { get; set; }

        [StringLength(50)]
        public string NumberCheck { get; set; }

        [Column(TypeName = "date")]
        public DateTime? TimeCheck { get; set; }

        [Column(TypeName = "date")]
        public DateTime? TimeTasviyeh { get; set; }

        public virtual Ashkhas Ashkha { get; set; }

        public virtual BarNameh BarNameh { get; set; }
    }
}
