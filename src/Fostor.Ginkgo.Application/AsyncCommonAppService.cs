using System;
using System.Collections.Generic;
using System.Text;
using Abp.Application.Services;
using Abp.Domain.Entities;
using Abp.Domain.Repositories;
using System.Threading.Tasks;
using Abp.Application.Services.Dto;
using System.Linq;

namespace Fostor.Ginkgo
{
    public abstract class AsyncCommonAppService<TEntity, TEntityDto> : AsyncCrudAppService<TEntity, TEntityDto>
       where TEntity : CommonEntity
       where TEntityDto : CommonEntityDto
    {
        public new IGinkgoAbpSession AbpSession { get; set; }
        private readonly IRepository<TEntity> _repository;       
        protected AsyncCommonAppService(IRepository<TEntity> repository) : base(repository)
        {
            _repository = repository;            
        }

        public async override Task<TEntityDto> Create(TEntityDto input)
        {            
            input.Creator = AbpSession.UserName;
            input.CreationTime = Abp.Timing.Clock.Now;
            input.TenantId = AbpSession.TenantId;
            return await base.Create(input);
        }

        public async override Task<TEntityDto> Update(TEntityDto input)
        {            
            TEntity t = _repository.Get(input.Id);
            input.CreationTime = t.CreationTime;
            input.Creator = t.Creator;
            input.TenantId = t.TenantId;
            //防止跨租户访问
            if (t.TenantId != AbpSession.TenantId)
            {
                throw new Exception("tenant is incorrect,access error.");
            }
            input.LastModificationTime = Abp.Timing.Clock.Now;
            input.LastModifier = AbpSession.UserName;
            return await base.Update(input);
        }

        public async override Task<TEntityDto> Get(EntityDto<int> input)
        {
            var result = await base.Get(input);
            //防止跨租户访问
            if (result.TenantId != AbpSession.TenantId)
            {
                result = System.Activator.CreateInstance<TEntityDto>();
            }
            return result;
        }

        public override Task Delete(EntityDto<int> input)
        {
            //防止跨租户访问
            TEntity t = _repository.Get(input.Id);
            if (t.TenantId != AbpSession.TenantId)
            {
                throw new Exception("tenant is incorrect,access error.");
            }
            return base.Delete(input);
        }

        public async override Task<PagedResultDto<TEntityDto>> GetAll(PagedAndSortedResultRequestDto input)
        {
            var result = (await base.GetAll(input)).Items.Where(x => x.TenantId == AbpSession.TenantId).ToList();
            return new PagedResultDto<TEntityDto> { Items = result, TotalCount = result.Count() };
        }
    }
}
