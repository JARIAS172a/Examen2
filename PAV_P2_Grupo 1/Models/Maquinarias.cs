using PAV_P2_Grupo_1.Models;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace PAV_P2_Grupo_1.Models
{
    public class Maquinarias
    {
        [Key]
        public int Id { get; set; }

        [Required]
        public string IdUsuarioCreadorM { get; set; }

        [MaxLength(100)]
        public string Nombre { get; set; }

        [MaxLength(255)]
        public string Descripcion { get; set; }

        [MaxLength(50)]
        public string Marca { get; set; }

        [MaxLength(50)]
        public string Modelo { get; set; }

        [ForeignKey("IdUsuarioCreadorM")]
        public ApplicationUser UsuarioCreador { get; set; }
    }
}
