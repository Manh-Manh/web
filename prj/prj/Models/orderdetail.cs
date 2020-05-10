namespace prj.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("orderdetail")]
    public partial class orderdetail
    {
        [Key]
        [Column(Order = 0)]
        [StringLength(20)]
        public string orderID { get; set; }

        [Key]
        [Column(Order = 1)]
        [StringLength(20)]
        public string productID { get; set; }

        public int? unitPrice { get; set; }

        public int? quantity { get; set; }

        public double? discount { get; set; }

        public virtual order order { get; set; }

        public virtual product product { get; set; }
    }
}
