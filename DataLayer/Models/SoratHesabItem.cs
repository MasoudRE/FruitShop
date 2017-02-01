namespace DataLayer.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("SoratHesabItem")]
    public partial class SoratHesabItem
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public SoratHesabItem()
        {
            SoratHesabs = new HashSet<SoratHesab>();
        }

        public int SoratHesabItemID { get; set; }

        public int? FK_UserID { get; set; }

        public DateTime? Time { get; set; }

        public int? MahsolatID { get; set; }

        public int? MivehID { get; set; }

        public int? Count { get; set; }

        public double? Wieght { get; set; }

        public int? Gheymat { get; set; }

        public int? JamKol { get; set; }

        public virtual Mahsolat Mahsolat { get; set; }

        public virtual Miveh Miveh { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SoratHesab> SoratHesabs { get; set; }
    }
}
