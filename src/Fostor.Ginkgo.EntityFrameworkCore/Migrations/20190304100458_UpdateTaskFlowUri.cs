using Microsoft.EntityFrameworkCore.Migrations;

namespace Fostor.Ginkgo.Migrations
{
    public partial class UpdateTaskFlowUri : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "BatchHandleUrl",
                table: "TaskInstances",
                newName: "BatchHandleUri");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "BatchHandleUri",
                table: "TaskInstances",
                newName: "BatchHandleUrl");
        }
    }
}
