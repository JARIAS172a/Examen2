using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using PAV_P2_Grupo_1.Data;
using PAV_P2_Grupo_1.Models;

namespace PAV_P2_Grupo_1.Controllers
{
    public class InventarioController : Controller
    {
        private readonly IWebHostEnvironment _hostingEnvironment;
        private readonly ApplicationDbContext _context;
        private readonly UserManager<ApplicationUser> _userManager;

        public InventarioController(ApplicationDbContext context, IWebHostEnvironment hostingEnvironment, UserManager<ApplicationUser> userManager)
        {
            _hostingEnvironment = hostingEnvironment;
            _context = context;
            _userManager = userManager;
        }

        public IActionResult Index()
        {
            var productos = _context.Productos
                .Include(p => p.UsuarioCreador)
                .ToList();
            return View(productos);
        }

        [Authorize]
        [HttpGet]
        public IActionResult Crear()
        {
            return View();
        }

        [Authorize]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Crear(Productos producto, IFormFile imagen)
        {
            //if (ModelState.IsValid)
            //{
                if (imagen != null && imagen.Length > 0)
                {
                    string nombreArchivo = Guid.NewGuid().ToString();
                    string extension = Path.GetExtension(imagen.FileName);
                    string rutaPrincipal = _hostingEnvironment.WebRootPath;
                    string carpetaImagenes = Path.Combine(rutaPrincipal, "imagenes", "productos");

                    if (!Directory.Exists(carpetaImagenes))
                        Directory.CreateDirectory(carpetaImagenes);

                    string rutaCompleta = Path.Combine(carpetaImagenes, nombreArchivo + extension);

                    using (var stream = new FileStream(rutaCompleta, FileMode.Create))
                    {
                        await imagen.CopyToAsync(stream);
                    }

                    producto.ImagenRuta = "/imagenes/productos/" + nombreArchivo + extension;
                }

                producto.IdUsuarioCreador = _userManager.GetUserId(User);

                _context.Productos.Add(producto);
                await _context.SaveChangesAsync();

                return RedirectToAction(nameof(Index));
            //}

            //return View(producto);
        }

        [Authorize]
        [HttpGet]
        public IActionResult Edit(int id)
        {
            var producto = _context.Productos.FirstOrDefault(p => p.Id == id);
            if (producto == null)
            {
                return NotFound();
            }
            return View(producto);
        }

        [Authorize]
        [HttpPost]
        public async Task<IActionResult> Edit(Productos producto, IFormFile imagen)
        {
            var productoExistente = _context.Productos.FirstOrDefault(p => p.Id == producto.Id);
            if (productoExistente == null)
            {
                return NotFound();
            }

            //if (ModelState.IsValid)
            //{
                productoExistente.Nombre = producto.Nombre;
                productoExistente.Descripcion = producto.Descripcion;
                productoExistente.Precio = producto.Precio;

                if (imagen != null && imagen.Length > 0)
                {
                    string nombreArchivo = Guid.NewGuid().ToString();
                    string extension = Path.GetExtension(imagen.FileName);
                    string rutaPrincipal = _hostingEnvironment.WebRootPath;
                    string carpetaImagenes = Path.Combine(rutaPrincipal, "imagenes", "productos");

                    if (!Directory.Exists(carpetaImagenes))
                        Directory.CreateDirectory(carpetaImagenes);

                    string rutaCompleta = Path.Combine(carpetaImagenes, nombreArchivo + extension);

                    using (var stream = new FileStream(rutaCompleta, FileMode.Create))
                    {
                        await imagen.CopyToAsync(stream);
                    }

                    productoExistente.ImagenRuta = "/imagenes/productos/" + nombreArchivo + extension;
                }

                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            //}

            //return View(producto);
        }

        [Authorize]
        [HttpPost]
        public async Task<IActionResult> Delete(int id)
        {
            var producto = await _context.Productos.FindAsync(id);
            if (producto == null)
            {
                return NotFound();
            }

            _context.Productos.Remove(producto);
            await _context.SaveChangesAsync();

            return RedirectToAction(nameof(Index));
        }
    }
}
