using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using StudentInformationSystem.Models;

namespace StudentInformationSystem.Pages
{
    public class ViewModel : PageModel
    {
        private readonly StudentInformationSystem.Data.StudentInformationSystemContext _context;

        public ViewModel(StudentInformationSystem.Data.StudentInformationSystemContext context)
        {
            _context = context;
        }

        public IList<Course> Course { get; set; } = default!;
        public IList<Student> Student { get; set; } = default!;

        public async Task OnGetAsync()
        {
            if (_context.Course != null)
            {
                Course = await _context.Course.ToListAsync();
            }

            if (_context.Student != null)
            {
                Student = await _context.Student
                .Include(s => s.Course).ToListAsync();
            }
        }
    }
}
