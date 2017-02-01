namespace DataLayer.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("SabtDaryafti")]
    public partial class SabtDaryafti
    {
        public int SabtDaryaftiID { get; set; }

        public int? FK_SoratHesabID { get; set; }

        public DateTime? Time { get; set; }

        public int? FK_UserID { get; set; }

        public string Tozihat { get; set; }

        public int? MablaghKol { get; set; }

        public virtual SoratHesab SoratHesab { get; set; }

        public virtual Users User { get; set; }
    }
}
