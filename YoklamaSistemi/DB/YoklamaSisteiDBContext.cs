namespace YoklamaSistemi.DB
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class YoklamaSisteiDBContext : DbContext
    {
        public YoklamaSisteiDBContext()
            : base("name=YoklamaSisteiDBContext")
        {
        }

        public virtual DbSet<tblAdmin> tblAdmins { get; set; }
        public virtual DbSet<tblAkademisyenDersKaydı> tblAkademisyenDersKaydı { get; set; }
        public virtual DbSet<tblAlinanimza> tblAlinanimzas { get; set; }
        public virtual DbSet<tblClass> tblClasses { get; set; }
        public virtual DbSet<tblDersAtama> tblDersAtamas { get; set; }
        public virtual DbSet<tblDerslar> tblDerslars { get; set; }
        public virtual DbSet<tblImzaListesi> tblImzaListesis { get; set; }
        public virtual DbSet<tblOgrAtama> tblOgrAtamas { get; set; }
        public virtual DbSet<tblStudent> tblStudents { get; set; }
        public virtual DbSet<tblTeacher> tblTeachers { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<tblAdmin>()
                .Property(e => e.name)
                .IsUnicode(false);

            modelBuilder.Entity<tblAdmin>()
                .Property(e => e.surname)
                .IsUnicode(false);

            modelBuilder.Entity<tblAdmin>()
                .Property(e => e.TC)
                .IsUnicode(false);

            modelBuilder.Entity<tblAdmin>()
                .Property(e => e.date_of_birth)
                .IsUnicode(false);

            modelBuilder.Entity<tblAdmin>()
                .Property(e => e.kategori)
                .IsUnicode(false);

            modelBuilder.Entity<tblAdmin>()
                .Property(e => e.phone)
                .IsUnicode(false);

            modelBuilder.Entity<tblAdmin>()
                .Property(e => e.email)
                .IsUnicode(false);

            modelBuilder.Entity<tblAdmin>()
                .Property(e => e.password)
                .IsUnicode(false);

            modelBuilder.Entity<tblAdmin>()
                .Property(e => e.foto)
                .IsUnicode(false);

            modelBuilder.Entity<tblAdmin>()
                .Property(e => e.foto2)
                .IsUnicode(false);

            modelBuilder.Entity<tblAdmin>()
                .Property(e => e.onay)
                .IsUnicode(false);

            modelBuilder.Entity<tblAkademisyenDersKaydı>()
                .Property(e => e.Teacher_id)
                .IsUnicode(false);

            modelBuilder.Entity<tblAkademisyenDersKaydı>()
                .Property(e => e.dersKodu)
                .IsUnicode(false);

            modelBuilder.Entity<tblAlinanimza>()
                .Property(e => e.dersKod)
                .IsUnicode(false);

            modelBuilder.Entity<tblAlinanimza>()
                .Property(e => e.Hafta)
                .IsUnicode(false);

            modelBuilder.Entity<tblClass>()
                .Property(e => e.teacher_id)
                .IsUnicode(false);

            modelBuilder.Entity<tblClass>()
                .Property(e => e.class_name)
                .IsUnicode(false);

            modelBuilder.Entity<tblClass>()
                .Property(e => e.pozisyon)
                .IsUnicode(false);

            modelBuilder.Entity<tblClass>()
                .Property(e => e.aciklama)
                .IsUnicode(false);

            modelBuilder.Entity<tblDersAtama>()
                .Property(e => e.student_id)
                .IsUnicode(false);

            modelBuilder.Entity<tblDersAtama>()
                .Property(e => e.dersKodu)
                .IsUnicode(false);

            modelBuilder.Entity<tblDerslar>()
                .Property(e => e.dersKod)
                .IsUnicode(false);

            modelBuilder.Entity<tblDerslar>()
                .Property(e => e.dersAd)
                .IsUnicode(false);

            modelBuilder.Entity<tblDerslar>()
                .Property(e => e.dersSuresi)
                .IsUnicode(false);

            modelBuilder.Entity<tblDerslar>()
                .Property(e => e.aciklama)
                .IsUnicode(false);

            modelBuilder.Entity<tblImzaListesi>()
                .Property(e => e.student_id)
                .IsUnicode(false);

            modelBuilder.Entity<tblImzaListesi>()
                .Property(e => e.dersKod)
                .IsUnicode(false);

            modelBuilder.Entity<tblImzaListesi>()
                .Property(e => e.Hafta)
                .IsUnicode(false);

            modelBuilder.Entity<tblOgrAtama>()
                .Property(e => e.pzisyon)
                .IsUnicode(false);

            modelBuilder.Entity<tblStudent>()
                .Property(e => e.name)
                .IsUnicode(false);

            modelBuilder.Entity<tblStudent>()
                .Property(e => e.surname)
                .IsUnicode(false);

            modelBuilder.Entity<tblStudent>()
                .Property(e => e.TC)
                .IsUnicode(false);

            modelBuilder.Entity<tblStudent>()
                .Property(e => e.date_of_birth)
                .IsUnicode(false);

            modelBuilder.Entity<tblStudent>()
                .Property(e => e.phone)
                .IsUnicode(false);

            modelBuilder.Entity<tblStudent>()
                .Property(e => e.students_no)
                .IsUnicode(false);

            modelBuilder.Entity<tblStudent>()
                .Property(e => e.email)
                .IsUnicode(false);

            modelBuilder.Entity<tblStudent>()
                .Property(e => e.password)
                .IsUnicode(false);

            modelBuilder.Entity<tblStudent>()
                .Property(e => e.Pozisyon)
                .IsUnicode(false);

            modelBuilder.Entity<tblStudent>()
                .Property(e => e.onay)
                .IsUnicode(false);

            modelBuilder.Entity<tblTeacher>()
                .Property(e => e.name)
                .IsUnicode(false);

            modelBuilder.Entity<tblTeacher>()
                .Property(e => e.surname)
                .IsUnicode(false);

            modelBuilder.Entity<tblTeacher>()
                .Property(e => e.TC)
                .IsUnicode(false);

            modelBuilder.Entity<tblTeacher>()
                .Property(e => e.date_of_birth)
                .IsUnicode(false);

            modelBuilder.Entity<tblTeacher>()
                .Property(e => e.phone)
                .IsUnicode(false);

            modelBuilder.Entity<tblTeacher>()
                .Property(e => e.email)
                .IsUnicode(false);

            modelBuilder.Entity<tblTeacher>()
                .Property(e => e.kategori)
                .IsUnicode(false);

            modelBuilder.Entity<tblTeacher>()
                .Property(e => e.password)
                .IsUnicode(false);

            modelBuilder.Entity<tblTeacher>()
                .Property(e => e.onay)
                .IsUnicode(false);
        }
    }
}
