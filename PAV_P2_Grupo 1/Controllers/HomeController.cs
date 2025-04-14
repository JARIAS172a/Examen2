using Microsoft.AspNetCore.Mvc;
using PAV_P2_Grupo_1.Models;
using System.Diagnostics;
using Microsoft.EntityFrameworkCore;
using PAV_P2_Grupo_1.Data;
using System.Linq;
using System.Threading.Tasks;

namespace PAV_P2_Grupo_1.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly ApplicationDbContext _context;

        public HomeController(ILogger<HomeController> logger, ApplicationDbContext context)
        {
            _logger = logger;
            _context = context;
        }

        public IActionResult Index()
        {
            return View();
        }

        public async Task<IActionResult> Dashboard()
        {
            var ultimasPreguntas = await _context.Preguntas
            .OrderByDescending(p => p.Fecha)
            .Take(5)
            .ToListAsync();

            var topProductos = await _context.Productos
            .OrderByDescending(p => p.Precio) 
            .Take(3)
            .ToListAsync();

            ViewBag.UltimasPreguntas = ultimasPreguntas;
            ViewBag.TopProductos = topProductos;
            return View();
        }

        public IActionResult Privacy()
        {
            return View();
        }

        public IActionResult Historia()
        {
            return View();
        }
        public IActionResult Equipo()
        {
            return View();
        }
        public IActionResult Contacto()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
