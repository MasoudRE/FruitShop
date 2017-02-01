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
            SoratHesabItems = new HashSet<SoratHesabItem>();
        }

        public int MahsolatID { get; set; }

        public int? MivehID { get; set; }

        [StringLength(50)]
        public string Name { get; set; }

        public DateTime? Time { get; set; }

        [Column(TypeName = "money")]
        public decimal? Gheymat { get; set; }

        [StringLength(50)]
        public string Address { get; set; }

        public virtual Anbar Anbar { get; set; }

        public virtual Miveh Miveh { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SoratHesabItem> SoratHesabItems { get; set; }
    }
}
