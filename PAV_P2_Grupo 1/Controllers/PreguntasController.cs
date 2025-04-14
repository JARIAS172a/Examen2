using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Identity;
using PAV_P2_Grupo_1.Data;
using PAV_P2_Grupo_1.Models;

namespace PAV_P2_Grupo_1.Controllers
{
    [Authorize]
    public class PreguntasController : Controller
    {
        private readonly IWebHostEnvironment _hostingEnvironment;
        private readonly ApplicationDbContext _context;
        private readonly UserManager<ApplicationUser> _userManager;

        public PreguntasController(ApplicationDbContext context, IWebHostEnvironment hostingEnvironment, UserManager<ApplicationUser> userManager)
        {
            _hostingEnvironment = hostingEnvironment;
            _context = context;
            _userManager = userManager;
        }

        public IActionResult Index()
        {
            return View(/*new Preguntas()*/);
        }

        [HttpGet]
        public IActionResult CrearPregunta()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> CrearPregunta(Preguntas pregunta)
        {
            try
            {
                ModelState.Remove(nameof(pregunta.IdUsuarioCreadorP));
                ModelState.Remove(nameof(pregunta.UsuarioCreador));

                if (ModelState.IsValid)
                {
                    var user = await _userManager.GetUserAsync(User);
                    pregunta.IdUsuarioCreadorP = user.Id;
                    pregunta.Fecha = DateTime.Now;

                    _context.Preguntas.Add(pregunta);
                    await _context.SaveChangesAsync();

                    return Json(new { success = true });
                }

                return Json(new { success = false, errores = ModelState.Values.SelectMany(x => x.Errors).Select(e => e.ErrorMessage) });
            }
            catch (Exception ex)
            {
                return Json(new { success = false, error = ex.Message });
            }
            
        }
    }
}

