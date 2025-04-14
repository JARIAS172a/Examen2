using PAV_P2_Grupo_1.Models;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace PAV_P2_Grupo_1.Models
{
    public class Preguntas
    {
        [Key]
        public int Id { get; set; }
                
        public string IdUsuarioCreadorP { get; set; }

        [Required(ErrorMessage = "El título es obligatorio")]
        [MaxLength(100)]
        public string Titulo { get; set; }

        [Required(ErrorMessage = "El contenido es obligatorio")]
        public string Contenido { get; set; }

        public DateTime Fecha { get; set; } = DateTime.Now;

        [ForeignKey("IdUsuarioCreadorP")]
        public ApplicationUser UsuarioCreador { get; set; }
    }
}
