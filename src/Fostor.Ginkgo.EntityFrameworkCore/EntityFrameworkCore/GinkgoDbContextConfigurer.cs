using System.Data.Common;
using Microsoft.EntityFrameworkCore;

namespace Fostor.Ginkgo.EntityFrameworkCore
{
    public static class GinkgoDbContextConfigurer
    {
        public static void Configure(DbContextOptionsBuilder<GinkgoDbContext> builder, string connectionString)
        {
            builder.UseSqlServer(connectionString);
        }

        public static void Configure(DbContextOptionsBuilder<GinkgoDbContext> builder, DbConnection connection)
        {
            builder.UseSqlServer(connection);
        }
    }
}
