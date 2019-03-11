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
    public class DataDictionaryAppService:AsyncCommonAppService<DataDictionary,DataDictionaryDto>,IDataDictionaryAppService
    {
        private readonly IRepository<DataDictionary> _repository;
        public DataDictionaryAppService(IRepository<DataDictionary> repository) : base(repository)
        {
            _repository = repository;
        }

        public List<DataConfigDto> GetDataConfigByCode(string categoryCode)
        {
            var list = _repository.GetAllList(t => t.TenantId == AbpSession.TenantId 
            && t.CategoryCode==categoryCode).OrderBy(x => x.Key).ToList();
            var listReturn = new List<DataConfigDto>();
            foreach (var d in list)
            {
                listReturn.Add(new DataConfigDto { Id = d.Id, Code = d.Key, Name = d.Value });
            }
            return listReturn;
        }

        public List<DataDictionaryDto> GetList(string categoryCode)
        {
            var list = _repository.GetAllList(t => t.TenantId == AbpSession.TenantId 
            && t.CategoryCode==categoryCode).OrderBy(x => x.Key).ToList();
            return list.MapTo<List<DataDictionaryDto>>();
        }
    }
}
