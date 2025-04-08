using Microsoft.AspNetCore.Identity;
using System.ComponentModel.DataAnnotations;

namespace PAV_P2_Grupo_1.Models
{
    public class ApplicationUser : IdentityUser
    {
        [Required]
        public string Nombre { get; set; }
        [Required]
        public string  Apellidos { get; set; }
        [Required]
        public string  Direccion { get; set; }
        
    }
}
