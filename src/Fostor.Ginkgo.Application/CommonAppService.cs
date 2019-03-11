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
    public abstract class CommonAppService<TEntity, TEntityDto> : CrudAppService<TEntity, TEntityDto>
       where TEntity : CommonEntity
       where TEntityDto : CommonEntityDto
    {
        public new IGinkgoAbpSession AbpSession { get; set; }
        private readonly IRepository<TEntity> _repository;
        protected CommonAppService(IRepository<TEntity> repository) : base(repository)
        {
            _repository = repository;
        }

        public override TEntityDto Create(TEntityDto input)
        {
            input.Creator = AbpSession.UserName;
            input.CreationTime = Abp.Timing.Clock.Now;
            input.TenantId = AbpSession.TenantId;
            return base.Create(input);
        }
        public override TEntityDto Update(TEntityDto input)
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
            return base.Update(input);
        }

        public override void Delete(EntityDto<int> input)
        {
            //防止跨租户访问
            TEntity t = _repository.Get(input.Id);
            if (t.TenantId != AbpSession.TenantId)
            {
                throw new Exception("tenant is incorrect,access error.");
            }
            base.Delete(input);
        }
        public override TEntityDto Get(EntityDto<int> input)
        {            
            var result = base.Get(input);
            //防止跨租户访问
            if (result.TenantId != AbpSession.TenantId)
            {
                result = System.Activator.CreateInstance<TEntityDto>();
            }
            return result;
        }
        public override PagedResultDto<TEntityDto> GetAll(PagedAndSortedResultRequestDto input)
        {            
            var result = base.GetAll(input).Items.Where(x => x.TenantId == AbpSession.TenantId).ToList();
            return new PagedResultDto<TEntityDto> { Items = result, TotalCount = result.Count() };
        }
    }
}
