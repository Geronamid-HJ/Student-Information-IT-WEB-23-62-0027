using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace StudentInformationSystem.Models
{
    public class Student
    {
        [Key]
        public int StudentId { get; set; }

        [DisplayName("Student Name")]
        public string? StudentName { get; set; }

        [DisplayName("City")]
        public string? City { get; set; }
        
       
        [ForeignKey("Course")]
        public int CourseId { get; set; }
        public Course? Course { get; set; } = null!;
    }
}
