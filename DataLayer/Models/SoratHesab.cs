namespace DataLayer.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("SoratHesab")]
    public partial class SoratHesab
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public SoratHesab()
        {
            SabtDaryaftis = new HashSet<SabtDaryafti>();
        }

        public int SoratHesabID { get; set; }

        public int? FK_SoratHesabItemID { get; set; }

        public int? CodePeygiri { get; set; }

        public int? FK_UserID { get; set; }

        public DateTime? Time { get; set; }

        public int? JamKol { get; set; }

        public int? Takhfif { get; set; }

        public int? GheymatKol { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SabtDaryafti> SabtDaryaftis { get; set; }

        public virtual SoratHesabItem SoratHesabItem { get; set; }

        public virtual Users User { get; set; }
    }
}
