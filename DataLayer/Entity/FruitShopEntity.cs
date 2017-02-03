namespace DataLayer.Models
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class FruitShopEntity : DbContext
    {
        public FruitShopEntity()
            : base("name=FruitShopEntity")
        {
        }

        public virtual DbSet<Anbar> Anbars { get; set; }
        public virtual DbSet<Ashkha> Ashkhas { get; set; }
        public virtual DbSet<BarNameh> BarNamehs { get; set; }
        public virtual DbSet<BarNamehItem> BarNamehItems { get; set; }
        public virtual DbSet<Customer> Customers { get; set; }
        public virtual DbSet<Mahsolat> Mahsolats { get; set; }
        public virtual DbSet<Manage> Manages { get; set; }
        public virtual DbSet<Miveh> Mivehs { get; set; }
        public virtual DbSet<SabtDaryafti> SabtDaryaftis { get; set; }
        public virtual DbSet<SabtPardakhti> SabtPardakhtis { get; set; }
        public virtual DbSet<SoratHesab> SoratHesabs { get; set; }
        public virtual DbSet<SoratHesabItem> SoratHesabItems { get; set; }
        public virtual DbSet<SeyfiJat> Sabzijats { get; set; }
        public virtual DbSet<Users> Users { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Ashkha>()
                .HasMany(e => e.BarNamehs)
                .WithOptional(e => e.Ashkha)
                .HasForeignKey(e => e.FK_AshkhasID);

            modelBuilder.Entity<Ashkha>()
                .HasMany(e => e.BarNamehItems)
                .WithOptional(e => e.Ashkha)
                .HasForeignKey(e => e.FK_AshkhasID);

            modelBuilder.Entity<Ashkha>()
                .HasMany(e => e.SabtPardakhtis)
                .WithOptional(e => e.Ashkha)
                .HasForeignKey(e => e.FK_AshkhasID);

            modelBuilder.Entity<BarNameh>()
                .HasMany(e => e.SabtPardakhtis)
                .WithOptional(e => e.BarNameh)
                .HasForeignKey(e => e.FK_BarNamehID);

            modelBuilder.Entity<SoratHesab>()
                .HasMany(e => e.SabtDaryaftis)
                .WithOptional(e => e.SoratHesab)
                .HasForeignKey(e => e.FK_SoratHesabID);

            modelBuilder.Entity<SoratHesabItem>()
                .HasMany(e => e.SoratHesabs)
                .WithOptional(e => e.SoratHesabItem)
                .HasForeignKey(e => e.FK_SoratHesabItemID);

            modelBuilder.Entity<Users>()
                .HasMany(e => e.Customers)
                .WithOptional(e => e.User)
                .HasForeignKey(e => e.FK_UserID);

            modelBuilder.Entity<Users>()
                .HasMany(e => e.Manages)
                .WithOptional(e => e.User)
                .HasForeignKey(e => e.FK_UserID);

            modelBuilder.Entity<Users>()
                .HasMany(e => e.SabtDaryaftis)
                .WithOptional(e => e.User)
                .HasForeignKey(e => e.FK_UserID);

            modelBuilder.Entity<Users>()
                .HasMany(e => e.SoratHesabs)
                .WithOptional(e => e.User)
                .HasForeignKey(e => e.FK_UserID);
        }
    }
}
