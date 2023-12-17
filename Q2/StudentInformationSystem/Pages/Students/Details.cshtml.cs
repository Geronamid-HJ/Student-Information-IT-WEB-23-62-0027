using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using StudentInformationSystem.Data;
using StudentInformationSystem.Models;

namespace StudentInformationSystem.Pages.Students
{
    public class DetailsModel : PageModel
    {
        private readonly StudentInformationSystem.Data.StudentInformationSystemContext _context;

        public DetailsModel(StudentInformationSystem.Data.StudentInformationSystemContext context)
        {
            _context = context;
        }

        public Student Student { get; set; } = default!; 

        public async Task<IActionResult> OnGetAsync(int? id)
        {
            if (id == null || _context.Student == null)
            {
                return NotFound();
            }

            var student = await _context.Student.FirstOrDefaultAsync(m => m.StudentId == id);

            if (student == null)
            {
                return NotFound();
            }
            else 
            {
                var courseId = student.CourseId;

                var course = await _context.Course.FirstOrDefaultAsync(m => m.CourseId == courseId);

                if (course != null) 
                {
                    student.Course = course;
                }
                Student = student;              
            }
            return Page();
        }
    }
}
