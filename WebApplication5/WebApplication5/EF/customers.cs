namespace WebApplication5.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class customers
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public customers()
        {
            orders = new HashSet<orders>();
        }

        [Key]
        [StringLength(20)]
        public string customerID { get; set; }

        [Required]
        [StringLength(20)]
        public string password { get; set; }

        [Required]
        [StringLength(100)]
        public string email { get; set; }

        [Required]
        [StringLength(20)]
        public string phone { get; set; }

        [StringLength(200)]
        public string address { get; set; }

        public int? status { get; set; }

        [Required]
        [StringLength(100)]
        public string fullName { get; set; }

        [Column(TypeName = "date")]
        public DateTime? birthDate { get; set; }

        public string avatar { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<orders> orders { get; set; }
    }
}
