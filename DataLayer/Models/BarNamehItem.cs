namespace DataLayer.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("BarNamehItem")]
    public partial class BarNamehItem
    {
        public int BarNamehItemID { get; set; }

        public DateTime? Time { get; set; }

        public int? FK_AshkhasID { get; set; }

        public int? MivehID { get; set; }

        public int? Count { get; set; }

        public double? Vazn_Nakhales { get; set; }

        public double? Vazn_Khales { get; set; }

        public double? Vazn_Zarf { get; set; }

        public int? Ghimat { get; set; }

        public int? Kerayeh { get; set; }

        public int? JamKharid { get; set; }

        public int? GheymatForosh { get; set; }

        public virtual Ashkhas Ashkha { get; set; }

        public virtual Miveh Miveh { get; set; }
    }
}
