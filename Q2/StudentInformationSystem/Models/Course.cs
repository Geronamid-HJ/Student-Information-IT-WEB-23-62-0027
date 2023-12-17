using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace StudentInformationSystem.Models
{
    public class Course
    {
        public Course()
        {
            Students = new HashSet<Student>();
        }

        [Key]
        public int CourseId { get; set; }

        [DisplayName("Course Name")]
        public string CourseName { get; set; } = null!;

        [DisplayName("Lecturer Name")]
        public string LecturerName { get; set; } = null!;

        public virtual ICollection<Student> Students { get; set; }
    }
}
