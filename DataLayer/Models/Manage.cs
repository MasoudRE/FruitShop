namespace DataLayer.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Manage")]
    public partial class Manage
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int ManageID { get; set; }

        public int? FK_UserID { get; set; }

        public virtual Users User { get; set; }
    }
}
