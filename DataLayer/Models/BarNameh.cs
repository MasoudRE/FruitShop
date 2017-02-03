namespace DataLayer.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("BarNameh")]
    public partial class BarNameh
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public BarNameh()
        {
            SabtPardakhtis = new HashSet<SabtPardakhti>();
        }

        public int BarNamehID { get; set; }

        public int? FK_BarNamehItemID { get; set; }

        public int? FK_AshkhasID { get; set; }

        public int? No_Bar { get; set; }

        public int? JamKharid { get; set; }

        public int? Takhfif { get; set; }

        public int? GhimatKol { get; set; }

        [StringLength(50)]
        public string Sh_Chek { get; set; }

        public DateTime? Time { get; set; }

        public virtual Ashkhas Ashkha { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SabtPardakhti> SabtPardakhtis { get; set; }
    }
}
