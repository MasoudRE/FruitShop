namespace DataLayer.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Sabzijat")]
    public partial class Sabzijat
    {
        [Key]
        public int SabzijatID { get; set; }

        public int? MahsolatID { get; set; }

        public byte? Unit { get; set; }

        [StringLength(100)]
        public string Amount { get; set; }

        public byte? Type { get; set; }

        public virtual Mahsolat Mahsolat { get; set; }
    }
}
