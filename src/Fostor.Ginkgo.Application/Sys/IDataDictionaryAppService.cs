using System;
using System.Collections.Generic;
using System.Text;
using Abp.Application.Services;
using Abp.Domain.Repositories;
using System.Threading.Tasks;
using Abp.Application.Services.Dto;
using System.Linq;
using Abp.AutoMapper;
using System.Data.SqlClient;
using Abp.Authorization;
using Fostor.Ginkgo.Sys.Dto;
using Fostor.Ginkgo.Sql;

namespace Fostor.Ginkgo.Sys
{
    public interface IDataDictionaryAppService:IAsyncCrudAppService<DataDictionaryDto>
    {
        List<DataConfigDto> GetDataConfigByCode(string categoryCode);
        List<DataDictionaryDto> GetList(string categoryCode);
    }
}
