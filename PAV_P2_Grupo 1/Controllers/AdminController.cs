using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using PAV_P2_Grupo_1.Models;
using System.Linq;
using System.Threading.Tasks;

[Authorize(Roles = "Administrador")]
public class AdminController : Controller
{
    private readonly UserManager<ApplicationUser> _userManager;
    private readonly RoleManager<IdentityRole> _roleManager;

    public AdminController(UserManager<ApplicationUser> userManager, RoleManager<IdentityRole> roleManager)
    {
        _userManager = userManager;
        _roleManager = roleManager;
    }

    public IActionResult Index()
    {
        var users = _userManager.Users.ToList();
        return View(users);
    }

    // Métodos para CRUD (Crear, Leer, Actualizar, Eliminar) de usuarios

    public async Task<IActionResult> Edit(string id)
    {
        var user = await _userManager.FindByIdAsync(id);
        if (user == null)
        {
            return NotFound();
        }
        return View(user);
    }

    [HttpPost]
    public async Task<IActionResult> Edit(ApplicationUser user)
    {
        var existingUser = await _userManager.FindByIdAsync(user.Id);
        if (existingUser == null)
        {
            return NotFound();
        }

        existingUser.Nombre = user.Nombre;
        existingUser.Apellidos = user.Apellidos;
        existingUser.Email = user.Email;
        existingUser.Direccion = user.Direccion;

        var result = await _userManager.UpdateAsync(existingUser);
        if (result.Succeeded)
        {
            return RedirectToAction(nameof(Index));
        }

        return View(user);
    }

    public async Task<IActionResult> Delete(string id)
    {
        var user = await _userManager.FindByIdAsync(id);
        if (user == null || user.EmailConfirmed) // Cambia esta condición según tu implementación
        {
            return NotFound();
        }

        var result = await _userManager.DeleteAsync(user);
        if (result.Succeeded)
        {
            return RedirectToAction(nameof(Index));
        }

        return View("Index", _userManager.Users.ToList());
    }
}

