using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace CIS376Project.model
{
    public partial class menu_databaseContext : DbContext
    {
        public menu_databaseContext()
        {
        }

        public menu_databaseContext(DbContextOptions<menu_databaseContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Items> Items { get; set; }
        public virtual DbSet<Orderitems> Orderitems { get; set; }
        public virtual DbSet<Orders> Orders { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.HasAnnotation("ProductVersion", "2.2.3-servicing-35854");

            modelBuilder.Entity<Items>(entity =>
            {
                entity.ToTable("items", "menu_database");

                entity.Property(e => e.Id).HasColumnType("int(11)");

                entity.Property(e => e.Descript)
                    .IsRequired()
                    .HasColumnName("descript")
                    .HasMaxLength(500)
                    .IsUnicode(false);

                entity.Property(e => e.ImageUrl)
                    .IsRequired()
                    .HasColumnName("imageURL")
                    .HasMaxLength(500)
                    .IsUnicode(false);

                entity.Property(e => e.Price).HasColumnName("price");

                entity.Property(e => e.ProductType)
                    .HasColumnName("productType")
                    .HasColumnType("int(11)");

                entity.Property(e => e.Title)
                    .IsRequired()
                    .HasColumnName("title")
                    .HasMaxLength(100)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Orderitems>(entity =>
            {
                entity.ToTable("orderitems", "menu_database");

                entity.Property(e => e.Id).HasColumnType("int(11)");

                entity.Property(e => e.ItemId)
                    .HasColumnName("itemId")
                    .HasColumnType("int(11)");

                entity.Property(e => e.OrderId)
                    .HasColumnName("orderId")
                    .HasColumnType("int(11)");

                entity.Property(e => e.Quantity)
                    .HasColumnName("quantity")
                    .HasColumnType("int(11)");
            });

            modelBuilder.Entity<Orders>(entity =>
            {
                entity.ToTable("orders", "menu_database");

                entity.Property(e => e.Id).HasColumnType("int(11)");

                entity.Property(e => e.CustomerName)
                    .IsRequired()
                    .HasMaxLength(100)
                    .IsUnicode(false);
            });
        }
    }
}
