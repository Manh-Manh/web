namespace prj.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class supplier
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public supplier()
        {
            products = new HashSet<product>();
        }

        [StringLength(150)]
        public string supplierID { get; set; }

        [Required]
        [StringLength(150)]
        public string companyName { get; set; }

        [StringLength(150)]
        public string address { get; set; }

        [StringLength(20)]
        public string phone { get; set; }

        [StringLength(80)]
        public string website { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<product> products { get; set; }
    }
}
