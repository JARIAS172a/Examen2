using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using PAV_P2_Grupo_1.Data;
using PAV_P2_Grupo_1.Models;

namespace PAV_P2_Grupo_1.Controllers
{
    [Authorize]
    public class MaquinariaController : Controller
    {
        private readonly ApplicationDbContext _context;
        private readonly UserManager<ApplicationUser> _userManager;

        public MaquinariaController(ApplicationDbContext context, UserManager<ApplicationUser> userManager)
        {
            _context = context;
            _userManager = userManager;
        }

        public async Task<IActionResult> Index()
        {
            var maquinarias = await _context.Maquinarias
                .Include(m => m.UsuarioCreador)
                .ToListAsync();
            return View(maquinarias);
        }

        [HttpGet]
        public IActionResult Crear()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Crear(Maquinarias maquinaria)
        {
            if (ModelState.IsValid)
            {
                maquinaria.IdUsuarioCreadorM = _userManager.GetUserId(User);
                _context.Maquinarias.Add(maquinaria);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }

            return View(maquinaria);
        }

        [HttpGet]
        public async Task<IActionResult> Edit(int id)
        {
            var maquinaria = await _context.Maquinarias.FindAsync(id);
            if (maquinaria == null)
            {
                return NotFound();
            }
            return View(maquinaria);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(Maquinarias maquinaria)
        {
            if (ModelState.IsValid)
            {
                var existente = await _context.Maquinarias.FindAsync(maquinaria.Id);
                if (existente == null)
                    return NotFound();

                existente.Nombre = maquinaria.Nombre;
                existente.Descripcion = maquinaria.Descripcion;
                existente.Marca = maquinaria.Marca;
                existente.Modelo = maquinaria.Modelo;

                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(maquinaria);
        }

        [HttpPost]
        public async Task<IActionResult> Delete(int id)
        {
            var maquinaria = await _context.Maquinarias.FindAsync(id);
            if (maquinaria == null)
                return NotFound();

            _context.Maquinarias.Remove(maquinaria);
            await _context.SaveChangesAsync();

            return RedirectToAction(nameof(Index));
        }
    }
}
