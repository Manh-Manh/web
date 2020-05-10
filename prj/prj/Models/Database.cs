namespace prj.Models
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class Database : DbContext
    {
        public Database()
            : base("name=Database")
        {
        }

        public virtual DbSet<category> categories { get; set; }
        public virtual DbSet<customer> customers { get; set; }
        public virtual DbSet<employee> employees { get; set; }
        public virtual DbSet<orderdetail> orderdetails { get; set; }
        public virtual DbSet<order> orders { get; set; }
        public virtual DbSet<product> products { get; set; }
        public virtual DbSet<shipper> shippers { get; set; }
        public virtual DbSet<supplier> suppliers { get; set; }
        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<customer>()
                .Property(e => e.avatar)
                .IsUnicode(false);

            modelBuilder.Entity<customer>()
                .HasMany(e => e.orders)
                .WithRequired(e => e.customer)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<employee>()
                .Property(e => e.avatar)
                .IsUnicode(false);

            modelBuilder.Entity<employee>()
                .HasMany(e => e.orders)
                .WithRequired(e => e.employee)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<order>()
                .HasMany(e => e.orderdetails)
                .WithRequired(e => e.order)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<product>()
                .Property(e => e.description)
                .IsUnicode(false);

            modelBuilder.Entity<product>()
                .Property(e => e.image)
                .IsUnicode(false);

            modelBuilder.Entity<product>()
                .HasMany(e => e.orderdetails)
                .WithRequired(e => e.product)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<shipper>()
                .Property(e => e.description)
                .IsUnicode(false);
        }
    }
}
