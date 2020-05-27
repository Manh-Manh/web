namespace WebApplication5.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class products
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public products()
        {
            orderdetail = new HashSet<orderdetail>();
        }

        [Key]
        [StringLength(20)]
        public string productID { get; set; }

        [Required]
        [StringLength(150)]
        public string productName { get; set; }

        [StringLength(150)]
        public string supplierID { get; set; }

        [StringLength(50)]
        public string categoryID { get; set; }

        public int? quantity { get; set; }

        public int? unitPrice { get; set; }

        public double? discount { get; set; }

        public int? status { get; set; }

        public string description { get; set; }

        [Required]
        [StringLength(500)]
        public string thumbnail { get; set; }

        [Column(TypeName = "text")]
        public string image { get; set; }

        public virtual categories categories { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<orderdetail> orderdetail { get; set; }

        public virtual suppliers suppliers { get; set; }
    }
}
