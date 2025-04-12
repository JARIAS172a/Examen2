using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace PAV_P2_Grupo_1.Data.Migrations
{
    /// <inheritdoc />
    public partial class foto : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "ImagenRuta",
                table: "Maquinarias");

            migrationBuilder.AddColumn<string>(
                name: "ImagenRuta",
                table: "Productos",
                type: "nvarchar(255)",
                maxLength: 255,
                nullable: false,
                defaultValue: "");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "ImagenRuta",
                table: "Productos");

            migrationBuilder.AddColumn<string>(
                name: "ImagenRuta",
                table: "Maquinarias",
                type: "nvarchar(255)",
                maxLength: 255,
                nullable: false,
                defaultValue: "");
        }
    }
}
