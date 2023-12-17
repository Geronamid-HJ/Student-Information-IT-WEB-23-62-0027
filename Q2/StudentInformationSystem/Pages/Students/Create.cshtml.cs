using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;
using StudentInformationSystem.Data;
using StudentInformationSystem.Models;

namespace StudentInformationSystem.Pages.Students
{
    public class CreateModel : PageModel
    {
        private readonly StudentInformationSystem.Data.StudentInformationSystemContext _context;

        public CreateModel(StudentInformationSystem.Data.StudentInformationSystemContext context)
        {
            _context = context;
        } 

       
        public IActionResult OnGet()
        {
            ViewData["CourseId"] = new SelectList(_context.Course, "CourseId", "CourseName");
            return Page();
        }

        [BindProperty]
        public Student Student { get; set; } = default!;


        // To protect from overposting attacks, see https://aka.ms/RazorPagesCRUD
        public async Task<IActionResult> OnPostAsync()
        {
            if (!ModelState.IsValid || _context.Student == null || Student == null)
            {
                return Page();
            }

            _context.Student.Add(Student);
            await _context.SaveChangesAsync();

            return RedirectToPage("./Index");
        }
    }
}
