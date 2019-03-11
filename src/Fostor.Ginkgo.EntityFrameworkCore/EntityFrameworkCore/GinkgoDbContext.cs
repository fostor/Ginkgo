using Microsoft.EntityFrameworkCore;
using Abp.Zero.EntityFrameworkCore;
using Fostor.Ginkgo.Authorization.Roles;
using Fostor.Ginkgo.Authorization.Users;
using Fostor.Ginkgo.MultiTenancy;
using Fostor.Ginkgo.Sys;
using Fostor.Ginkgo.TaskFlow;
using Fostor.Ginkgo.TaskSample;

namespace Fostor.Ginkgo.EntityFrameworkCore
{
    public class GinkgoDbContext : AbpZeroDbContext<Tenant, Role, User, GinkgoDbContext>
    {
        /* Define a DbSet for each entity of the application */
        /* Sys Module */
        public DbSet<SysObject> SysObject { get; set; }
        public DbSet<ObjectPermission> SysObjectPermission { get; set; }
        public DbSet<DataDictionary> SysDataDictionary { get; set; }
        public DbSet<SequenceNumber> SysSequenceNumber { get; set; }
        /* Task Module */
        public DbSet<TaskTemplate> TaskTemplates { get; set; }
        public DbSet<TaskPhase> TaskPhases { get; set; }
        public DbSet<TaskRole> TaskRoles { get; set; }
        public DbSet<TaskRoleMember> TaskRoleMembers { get; set; }
        public DbSet<TaskOriginator> TaskOriginators { get; set; }
        public DbSet<TaskOriginatorRoute> TaskOriginatorRoutes { get; set; }
        public DbSet<TaskInstance> TaskInstances { get; set; }
        public DbSet<TaskExecuteLog> TaskExecuteLogs { get; set; }
        public DbSet<TaskNotifyLog> TaskNotifyLogs { get; set; }
        public DbSet<LeaveApplication> LeaveApplications { get; set; }
        
        public GinkgoDbContext(DbContextOptions<GinkgoDbContext> options)
            : base(options)
        {
        }
    }
}
