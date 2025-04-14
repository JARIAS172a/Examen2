using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace PAV_P2_Grupo_1.Models
{
    public class Maquinarias
    {
        public int Id { get; set; }

        [Required(ErrorMessage = "El nombre es obligatorio")]
        [StringLength(100, ErrorMessage = "Máximo 100 caracteres")]
        public string Nombre { get; set; }

        [Required(ErrorMessage = "La descripción es obligatoria")]
        [StringLength(500, ErrorMessage = "Máximo 500 caracteres")]
        public string Descripcion { get; set; }

        [Required(ErrorMessage = "La marca es obligatoria")]
        [StringLength(100, ErrorMessage = "Máximo 100 caracteres")]
        public string Marca { get; set; }

        [Required(ErrorMessage = "El modelo es obligatorio")]
        [StringLength(100, ErrorMessage = "Máximo 100 caracteres")]
        public string Modelo { get; set; }

        public string? IdUsuarioCreadorM { get; set; }

        [ForeignKey("IdUsuarioCreadorM")]
        public ApplicationUser? UsuarioCreador { get; set; }
    }
}
