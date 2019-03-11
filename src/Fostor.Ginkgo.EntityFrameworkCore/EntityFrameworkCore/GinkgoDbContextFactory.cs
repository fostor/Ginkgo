using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Design;
using Microsoft.Extensions.Configuration;
using Fostor.Ginkgo.Configuration;
using Fostor.Ginkgo.Web;

namespace Fostor.Ginkgo.EntityFrameworkCore
{
    /* This class is needed to run "dotnet ef ..." commands from command line on development. Not used anywhere else */
    public class GinkgoDbContextFactory : IDesignTimeDbContextFactory<GinkgoDbContext>
    {
        public GinkgoDbContext CreateDbContext(string[] args)
        {
            var builder = new DbContextOptionsBuilder<GinkgoDbContext>();
            var configuration = AppConfigurations.Get(WebContentDirectoryFinder.CalculateContentRootFolder());

            GinkgoDbContextConfigurer.Configure(builder, configuration.GetConnectionString(GinkgoConsts.ConnectionStringName));

            return new GinkgoDbContext(builder.Options);
        }
    }
}
