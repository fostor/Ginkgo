using System;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;

namespace Fostor.Ginkgo.Migrations
{
    public partial class AddSysTaskModule : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "LeaveApplications",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    TenantId = table.Column<int>(nullable: true),
                    LastModifier = table.Column<string>(maxLength: 30, nullable: true),
                    LastModificationTime = table.Column<DateTime>(nullable: true),
                    Creator = table.Column<string>(maxLength: 30, nullable: false),
                    CreationTime = table.Column<DateTime>(nullable: true),
                    AppliNumber = table.Column<string>(maxLength: 20, nullable: true),
                    Applicant = table.Column<string>(maxLength: 30, nullable: true),
                    Title = table.Column<string>(maxLength: 50, nullable: true),
                    Description = table.Column<string>(maxLength: 500, nullable: true),
                    LeaveType = table.Column<string>(maxLength: 10, nullable: true),
                    FromTime = table.Column<DateTime>(nullable: true),
                    EndTime = table.Column<DateTime>(nullable: true),
                    TotalHours = table.Column<decimal>(nullable: true),
                    Status = table.Column<string>(maxLength: 10, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_LeaveApplications", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "SysDataDictionary",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    TenantId = table.Column<int>(nullable: true),
                    LastModifier = table.Column<string>(maxLength: 30, nullable: true),
                    LastModificationTime = table.Column<DateTime>(nullable: true),
                    Creator = table.Column<string>(maxLength: 30, nullable: false),
                    CreationTime = table.Column<DateTime>(nullable: true),
                    IsDeleted = table.Column<bool>(nullable: false),
                    Deleter = table.Column<string>(maxLength: 30, nullable: true),
                    DeletionTime = table.Column<DateTime>(nullable: true),
                    CategoryCode = table.Column<string>(maxLength: 50, nullable: false),
                    Key = table.Column<string>(maxLength: 50, nullable: false),
                    Value = table.Column<string>(maxLength: 1000, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_SysDataDictionary", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "SysObject",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    TenantId = table.Column<int>(nullable: true),
                    LastModifier = table.Column<string>(maxLength: 30, nullable: true),
                    LastModificationTime = table.Column<DateTime>(nullable: true),
                    Creator = table.Column<string>(maxLength: 30, nullable: false),
                    CreationTime = table.Column<DateTime>(nullable: true),
                    IsDeleted = table.Column<bool>(nullable: false),
                    Deleter = table.Column<string>(maxLength: 30, nullable: true),
                    DeletionTime = table.Column<DateTime>(nullable: true),
                    ObjectKey = table.Column<string>(maxLength: 255, nullable: false),
                    ParentKey = table.Column<string>(maxLength: 200, nullable: true),
                    DisplayName = table.Column<string>(maxLength: 30, nullable: false),
                    Icon = table.Column<string>(maxLength: 30, nullable: true),
                    IsMenuItem = table.Column<bool>(nullable: true),
                    MenuLevel = table.Column<int>(nullable: true),
                    SortCode = table.Column<int>(nullable: true),
                    Uri = table.Column<string>(maxLength: 255, nullable: true),
                    IsEnable = table.Column<bool>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_SysObject", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "SysObjectPermission",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    TenantId = table.Column<int>(nullable: true),
                    LastModifier = table.Column<string>(maxLength: 30, nullable: true),
                    LastModificationTime = table.Column<DateTime>(nullable: true),
                    Creator = table.Column<string>(maxLength: 30, nullable: false),
                    CreationTime = table.Column<DateTime>(nullable: true),
                    ObjectKey = table.Column<string>(maxLength: 255, nullable: false),
                    PermissionName = table.Column<string>(maxLength: 20, nullable: false),
                    DisplayName = table.Column<string>(maxLength: 30, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_SysObjectPermission", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "SysSequenceNumber",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    TenantId = table.Column<int>(nullable: true),
                    LastModifier = table.Column<string>(maxLength: 30, nullable: true),
                    LastModificationTime = table.Column<DateTime>(nullable: true),
                    Creator = table.Column<string>(maxLength: 30, nullable: false),
                    CreationTime = table.Column<DateTime>(nullable: true),
                    IsDeleted = table.Column<bool>(nullable: false),
                    Deleter = table.Column<string>(maxLength: 30, nullable: true),
                    DeletionTime = table.Column<DateTime>(nullable: true),
                    NumberCode = table.Column<string>(maxLength: 40, nullable: false),
                    DateStringSpec = table.Column<string>(maxLength: 20, nullable: true),
                    Prefix = table.Column<string>(maxLength: 5, nullable: true),
                    Infix = table.Column<string>(maxLength: 5, nullable: true),
                    Suffix = table.Column<string>(maxLength: 5, nullable: true),
                    SeqLength = table.Column<int>(nullable: false),
                    Sequence = table.Column<int>(nullable: false),
                    LatestNumber = table.Column<string>(maxLength: 40, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_SysSequenceNumber", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "TaskExecuteLogs",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    TenantId = table.Column<int>(nullable: true),
                    LastModifier = table.Column<string>(maxLength: 30, nullable: true),
                    LastModificationTime = table.Column<DateTime>(nullable: true),
                    Creator = table.Column<string>(maxLength: 30, nullable: false),
                    CreationTime = table.Column<DateTime>(nullable: true),
                    InstanceCode = table.Column<string>(maxLength: 30, nullable: true),
                    PhaseCode = table.Column<string>(maxLength: 10, nullable: true),
                    Actor = table.Column<string>(maxLength: 40, nullable: true),
                    HandleResult = table.Column<string>(maxLength: 10, nullable: true),
                    Memo = table.Column<string>(maxLength: 1000, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TaskExecuteLogs", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "TaskInstances",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    TenantId = table.Column<int>(nullable: true),
                    LastModifier = table.Column<string>(maxLength: 30, nullable: true),
                    LastModificationTime = table.Column<DateTime>(nullable: true),
                    Creator = table.Column<string>(maxLength: 30, nullable: false),
                    CreationTime = table.Column<DateTime>(nullable: true),
                    InstanceCode = table.Column<string>(maxLength: 30, nullable: true),
                    TaskCode = table.Column<string>(maxLength: 20, nullable: true),
                    TaskName = table.Column<string>(maxLength: 30, nullable: true),
                    KeyInfo = table.Column<string>(maxLength: 600, nullable: true),
                    FormUri = table.Column<string>(maxLength: 600, nullable: true),
                    UseConditionControl = table.Column<bool>(nullable: true),
                    Condition1Name = table.Column<string>(maxLength: 20, nullable: true),
                    Condition1Value = table.Column<decimal>(nullable: true),
                    Condition2Name = table.Column<string>(maxLength: 20, nullable: true),
                    Condition2Value = table.Column<decimal>(nullable: true),
                    Condition3Name = table.Column<string>(maxLength: 20, nullable: true),
                    Condition3Value = table.Column<decimal>(nullable: true),
                    Originator = table.Column<string>(maxLength: 40, nullable: true),
                    CurrentPhaseCode = table.Column<string>(maxLength: 10, nullable: true),
                    CurrentActors = table.Column<string>(maxLength: 8000, nullable: true),
                    CanBatchHandle = table.Column<bool>(nullable: true),
                    BatchHandleUrl = table.Column<string>(maxLength: 600, nullable: true),
                    CanReject = table.Column<bool>(nullable: true),
                    CanUpdateForm = table.Column<bool>(nullable: true),
                    UpdateFormUri = table.Column<string>(maxLength: 600, nullable: true),
                    IsCountersigning = table.Column<bool>(nullable: true),
                    IsSignIn = table.Column<bool>(nullable: true),
                    ReturnPhaseCode = table.Column<string>(maxLength: 10, nullable: true),
                    ReturnActors = table.Column<string>(maxLength: 8000, nullable: true),
                    Status = table.Column<string>(maxLength: 10, nullable: true),
                    CanAppendPhase = table.Column<bool>(nullable: true),
                    Revocable = table.Column<bool>(nullable: true),
                    ReturnType = table.Column<string>(maxLength: 5, nullable: true),
                    ResubmitType = table.Column<string>(maxLength: 5, nullable: true),
                    NotifyTitle = table.Column<string>(maxLength: 100, nullable: true),
                    NotifyContent = table.Column<string>(maxLength: 1000, nullable: true),
                    FinalService = table.Column<string>(maxLength: 1000, nullable: true),
                    StartService = table.Column<string>(maxLength: 1000, nullable: true),
                    AbortService = table.Column<string>(maxLength: 1000, nullable: true),
                    PhaseService = table.Column<string>(maxLength: 1000, nullable: true),
                    NeedToCallMiddleService = table.Column<bool>(nullable: true),
                    LastPhaseHandleTime = table.Column<DateTime>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TaskInstances", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "TaskNotifyLogs",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    TenantId = table.Column<int>(nullable: true),
                    LastModifier = table.Column<string>(maxLength: 30, nullable: true),
                    LastModificationTime = table.Column<DateTime>(nullable: true),
                    Creator = table.Column<string>(maxLength: 30, nullable: false),
                    CreationTime = table.Column<DateTime>(nullable: true),
                    InstanceCode = table.Column<string>(maxLength: 30, nullable: true),
                    PhaseCode = table.Column<string>(maxLength: 10, nullable: true),
                    NotifyTitle = table.Column<string>(maxLength: 100, nullable: true),
                    NotifyContent = table.Column<string>(maxLength: 1000, nullable: true),
                    NotifyUserNames = table.Column<string>(maxLength: 8000, nullable: true),
                    Status = table.Column<string>(maxLength: 10, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TaskNotifyLogs", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "TaskOriginatorRoutes",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    TenantId = table.Column<int>(nullable: true),
                    LastModifier = table.Column<string>(maxLength: 30, nullable: true),
                    LastModificationTime = table.Column<DateTime>(nullable: true),
                    Creator = table.Column<string>(maxLength: 30, nullable: false),
                    CreationTime = table.Column<DateTime>(nullable: true),
                    TaskCode = table.Column<string>(maxLength: 20, nullable: true),
                    Originator = table.Column<string>(maxLength: 40, nullable: true),
                    PhaseCode = table.Column<string>(maxLength: 10, nullable: true),
                    Actors = table.Column<string>(maxLength: 8000, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TaskOriginatorRoutes", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "TaskOriginators",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    TenantId = table.Column<int>(nullable: true),
                    LastModifier = table.Column<string>(maxLength: 30, nullable: true),
                    LastModificationTime = table.Column<DateTime>(nullable: true),
                    Creator = table.Column<string>(maxLength: 30, nullable: false),
                    CreationTime = table.Column<DateTime>(nullable: true),
                    TaskCode = table.Column<string>(maxLength: 20, nullable: true),
                    Originator = table.Column<string>(maxLength: 40, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TaskOriginators", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "TaskPhases",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    TenantId = table.Column<int>(nullable: true),
                    LastModifier = table.Column<string>(maxLength: 30, nullable: true),
                    LastModificationTime = table.Column<DateTime>(nullable: true),
                    Creator = table.Column<string>(maxLength: 30, nullable: false),
                    CreationTime = table.Column<DateTime>(nullable: true),
                    TaskCode = table.Column<string>(maxLength: 20, nullable: true),
                    PhaseCode = table.Column<string>(maxLength: 10, nullable: true),
                    PhaseName = table.Column<string>(maxLength: 30, nullable: true),
                    TaskRole = table.Column<string>(maxLength: 20, nullable: true),
                    TaskUsers = table.Column<string>(maxLength: 8000, nullable: true),
                    IsCountersignPhase = table.Column<bool>(nullable: true),
                    IsSignInPhase = table.Column<bool>(nullable: true),
                    Condition1EndValue = table.Column<decimal>(nullable: true),
                    Condition2EndValue = table.Column<decimal>(nullable: true),
                    Condition3EndValue = table.Column<decimal>(nullable: true),
                    CanUpdateForm = table.Column<bool>(nullable: true),
                    UpdateFormUriTemplate = table.Column<string>(maxLength: 500, nullable: true),
                    CanBatchHandle = table.Column<bool>(nullable: true),
                    BatchHandleUriTemplate = table.Column<string>(maxLength: 500, nullable: true),
                    CanReject = table.Column<bool>(nullable: true),
                    NeedToCallMiddleService = table.Column<bool>(nullable: true),
                    PhaseServiceTemplate = table.Column<string>(maxLength: 500, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TaskPhases", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "TaskRoleMembers",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    TenantId = table.Column<int>(nullable: true),
                    LastModifier = table.Column<string>(maxLength: 30, nullable: true),
                    LastModificationTime = table.Column<DateTime>(nullable: true),
                    Creator = table.Column<string>(maxLength: 30, nullable: false),
                    CreationTime = table.Column<DateTime>(nullable: true),
                    TaskRole = table.Column<string>(maxLength: 20, nullable: true),
                    UserName = table.Column<string>(maxLength: 40, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TaskRoleMembers", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "TaskRoles",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    TenantId = table.Column<int>(nullable: true),
                    LastModifier = table.Column<string>(maxLength: 30, nullable: true),
                    LastModificationTime = table.Column<DateTime>(nullable: true),
                    Creator = table.Column<string>(maxLength: 30, nullable: false),
                    CreationTime = table.Column<DateTime>(nullable: true),
                    RoleCode = table.Column<string>(maxLength: 20, nullable: true),
                    RoleName = table.Column<string>(maxLength: 30, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TaskRoles", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "TaskTemplates",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn),
                    TenantId = table.Column<int>(nullable: true),
                    LastModifier = table.Column<string>(maxLength: 30, nullable: true),
                    LastModificationTime = table.Column<DateTime>(nullable: true),
                    Creator = table.Column<string>(maxLength: 30, nullable: false),
                    CreationTime = table.Column<DateTime>(nullable: true),
                    TaskCode = table.Column<string>(maxLength: 20, nullable: true),
                    TaskName = table.Column<string>(maxLength: 30, nullable: true),
                    Description = table.Column<string>(maxLength: 100, nullable: true),
                    KeyInfoTemplate = table.Column<string>(maxLength: 500, nullable: true),
                    UseConditionControl = table.Column<bool>(nullable: true),
                    Condition1Name = table.Column<string>(maxLength: 20, nullable: true),
                    Condition2Name = table.Column<string>(maxLength: 20, nullable: true),
                    Condition3Name = table.Column<string>(maxLength: 20, nullable: true),
                    CanAppendPhase = table.Column<bool>(nullable: true),
                    Revocable = table.Column<bool>(nullable: true),
                    ReturnType = table.Column<string>(maxLength: 5, nullable: true),
                    ResubmitType = table.Column<string>(maxLength: 5, nullable: true),
                    NotifyTitleTemplate = table.Column<string>(maxLength: 100, nullable: true),
                    NotifyContentTemplate = table.Column<string>(maxLength: 1000, nullable: true),
                    FormUriTemplate = table.Column<string>(maxLength: 500, nullable: true),
                    FinalServiceTemplate = table.Column<string>(maxLength: 500, nullable: true),
                    StartServiceTemplate = table.Column<string>(maxLength: 500, nullable: true),
                    IsDefaultForAllUser = table.Column<bool>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TaskTemplates", x => x.Id);
                });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "LeaveApplications");

            migrationBuilder.DropTable(
                name: "SysDataDictionary");

            migrationBuilder.DropTable(
                name: "SysObject");

            migrationBuilder.DropTable(
                name: "SysObjectPermission");

            migrationBuilder.DropTable(
                name: "SysSequenceNumber");

            migrationBuilder.DropTable(
                name: "TaskExecuteLogs");

            migrationBuilder.DropTable(
                name: "TaskInstances");

            migrationBuilder.DropTable(
                name: "TaskNotifyLogs");

            migrationBuilder.DropTable(
                name: "TaskOriginatorRoutes");

            migrationBuilder.DropTable(
                name: "TaskOriginators");

            migrationBuilder.DropTable(
                name: "TaskPhases");

            migrationBuilder.DropTable(
                name: "TaskRoleMembers");

            migrationBuilder.DropTable(
                name: "TaskRoles");

            migrationBuilder.DropTable(
                name: "TaskTemplates");
        }
    }
}
