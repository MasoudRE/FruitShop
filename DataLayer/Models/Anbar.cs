namespace DataLayer.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Anbar")]
    public partial class Anbar
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int MahsolatID { get; set; }

        public int? MivehID { get; set; }

        [StringLength(50)]
        public string Name { get; set; }

        public int? Count { get; set; }

        public double? Weight { get; set; }

        public virtual Mahsolat Mahsolat { get; set; }

        public virtual Miveh Miveh { get; set; }
    }
}
