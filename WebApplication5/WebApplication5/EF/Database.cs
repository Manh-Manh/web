namespace WebApplication5.EF
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

        public virtual DbSet<categories> categories { get; set; }
        public virtual DbSet<customers> customers { get; set; }
        public virtual DbSet<employees> employees { get; set; }
        public virtual DbSet<orderdetail> orderdetail { get; set; }
        public virtual DbSet<orders> orders { get; set; }
        public virtual DbSet<products> products { get; set; }
        public virtual DbSet<shippers> shippers { get; set; }
        public virtual DbSet<suppliers> suppliers { get; set; }
        public virtual DbSet<User> User { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<customers>()
                .HasMany(e => e.orders)
                .WithRequired(e => e.customers)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<employees>()
                .Property(e => e.avatar)
                .IsUnicode(false);

            modelBuilder.Entity<employees>()
                .HasMany(e => e.orders)
                .WithRequired(e => e.employees)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<orders>()
                .HasMany(e => e.orderdetail)
                .WithRequired(e => e.orders)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<products>()
                .Property(e => e.image)
                .IsUnicode(false);

            modelBuilder.Entity<products>()
                .HasMany(e => e.orderdetail)
                .WithRequired(e => e.products)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<shippers>()
                .Property(e => e.description)
                .IsUnicode(false);
        }
    }
}
