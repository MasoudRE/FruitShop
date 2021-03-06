namespace DataLayer.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Mahsolat")]
    public partial class Mahsolat
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Mahsolat()
        {
            Mivehs = new HashSet<Miveh>();
            Sabzijats = new HashSet<SeyfiJat>();
        }

        public int MahsolatID { get; set; }

        [StringLength(100)]
        public string Name { get; set; }

        [Column(TypeName = "money")]
        public long? OldPrice { get; set; }

        [Column(TypeName = "money")]
        public long? NewPrice { get; set; }

        [StringLength(500)]
        public string Description { get; set; }

        public bool? IsDiscount { get; set; }

        public Mahsolat_Type? Type { get; set; }

        public string ImageUrl { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Miveh> Mivehs { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SeyfiJat> Sabzijats { get; set; }
    }
}
