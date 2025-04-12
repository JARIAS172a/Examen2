using PAV_P2_Grupo_1.Models;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;


namespace PAV_P2_Grupo_1.Models
{
    public class Productos
    {
        [Key]
        public int Id { get; set; }

        [Required]
        public string IdUsuarioCreador { get; set; }

        [Required]
        [MaxLength(100)]
        public string Nombre { get; set; }

        [Required]
        [MaxLength(255)]
        public string Descripcion { get; set; }

        [Required]
        [Column(TypeName = "decimal(10,2)")]
        public decimal Precio { get; set; }
        [MaxLength(255)]
        public string ImagenRuta { get; set; }

        [ForeignKey("IdUsuarioCreador")]
        public ApplicationUser UsuarioCreador { get; set; }
    }
}