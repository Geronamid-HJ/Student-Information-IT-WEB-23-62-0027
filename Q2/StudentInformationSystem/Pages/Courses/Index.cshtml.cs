using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using StudentInformationSystem.Data;
using StudentInformationSystem.Models;

namespace StudentInformationSystem.Pages.Courses
{
    public class IndexModel : PageModel
    {
        private readonly StudentInformationSystem.Data.StudentInformationSystemContext _context;

        public IndexModel(StudentInformationSystem.Data.StudentInformationSystemContext context)
        {
            _context = context;
        }

        public IList<Course> Course { get;set; } = default!;

        public async Task OnGetAsync()
        {
            if (_context.Course != null)
            {
                Course = await _context.Course.ToListAsync();
            }
        }
    }
}
