namespace prj.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class employee
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public employee()
        {
            orders = new HashSet<order>();
        }

        [StringLength(20)]
        public string employeeID { get; set; }

        [Required]
        [StringLength(100)]
        public string employeeName { get; set; }

        [StringLength(200)]
        public string address { get; set; }

        [Required]
        [StringLength(100)]
        public string email { get; set; }

        [Required]
        [StringLength(32)]
        public string password { get; set; }

        [Required]
        [StringLength(20)]
        public string phone { get; set; }

        [Column(TypeName = "date")]
        public DateTime? birthDate { get; set; }

        [Column(TypeName = "text")]
        public string avatar { get; set; }

        [Required]
        [StringLength(10)]
        public string roll { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<order> orders { get; set; }
    }
}
