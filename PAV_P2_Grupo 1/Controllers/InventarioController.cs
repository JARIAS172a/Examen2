using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using PAV_P2_Grupo_1.Data;
using PAV_P2_Grupo_1.Models;
using System.Reflection.Emit;

namespace PAV_P2_Grupo_1.Controllers
{
    public class InventarioController : Controller
    {
        private readonly IWebHostEnvironment _hostingEnvironment;
        private readonly ApplicationDbContext _context;

        public InventarioController(ApplicationDbContext context, IWebHostEnvironment hostingEnvironment)
        {
            _hostingEnvironment = hostingEnvironment;
            _context = context;

        }

        public IActionResult Index()
        {
            return View();
        }

        [Authorize]
        [HttpGet]
        public IActionResult Crear()
        {
            return View();
        }
        [Authorize]
        [HttpPost]
        public IActionResult Crear(Maquinarias maquinaria)
        {

            return View();
        }
        
        [Authorize]
        [HttpGet]
        public IActionResult Edit(int id)
        {
            Maquinarias maquinaria = new Maquinarias();
            maquinaria = _context.Maquinarias.FirstOrDefault(maquinaria => maquinaria.Id == id);
            if (maquinaria == null)
            {
                return NotFound();
            }
            return View(maquinaria);
        }

        [Authorize]
        [HttpPost]
        public IActionResult Edit(Maquinarias maquinaria)
        {
            return View();
        }

    }
}
