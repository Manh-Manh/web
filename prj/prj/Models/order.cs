namespace prj.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class order
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public order()
        {
            orderdetails = new HashSet<orderdetail>();
        }

        [StringLength(20)]
        public string orderID { get; set; }

        [Required]
        [StringLength(20)]
        public string employeeID { get; set; }

        [Required]
        [StringLength(20)]
        public string customerID { get; set; }

        [Column(TypeName = "date")]
        public DateTime? orderDate { get; set; }

        [StringLength(20)]
        public string shipperID { get; set; }

        [Column(TypeName = "date")]
        public DateTime? shippedDate { get; set; }

        [StringLength(10)]
        public string status { get; set; }

        public virtual customer customer { get; set; }

        public virtual employee employee { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<orderdetail> orderdetails { get; set; }

        public virtual shipper shipper { get; set; }
    }
}
