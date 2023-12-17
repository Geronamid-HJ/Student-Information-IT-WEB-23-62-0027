using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using StudentInformationSystem.Models;

namespace StudentInformationSystem.Data
{
    public partial class StudentInformationSystemContext : DbContext
    {
        public StudentInformationSystemContext (DbContextOptions<StudentInformationSystemContext> options)
            : base(options)
        {
        }

        public DbSet<StudentInformationSystem.Models.Course> Course { get; set; } = default!;
        public DbSet<StudentInformationSystem.Models.Student>? Student { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Course>(entity =>
            {
                entity.ToTable("Course");
            });

            modelBuilder.Entity<Student>(entity =>
            {
                entity.ToTable("Student");

                entity.HasOne(d => d.Course)
                    .WithMany(p => p.Students)
                    .HasForeignKey(d => d.CourseId);
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
