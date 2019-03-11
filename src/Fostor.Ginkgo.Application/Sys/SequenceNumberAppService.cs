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
using Abp.Timing;

namespace Fostor.Ginkgo.Sys
{
    public class SequenceNumberAppService:CommonAppService<SequenceNumber,SequenceNumberDto>,ISequenceNumberAppService
    {
        private readonly IRepository<SequenceNumber> _repository;
        public SequenceNumberAppService(IRepository<SequenceNumber> repository) : base(repository)
        {
            _repository = repository;
        }
        public string GetSequenceNumberStringByCode(string numberCode)
        {
            string strReturn = "";
            SequenceNumber seqnumber = _repository.FirstOrDefault(x => x.NumberCode == numberCode && x.TenantId == AbpSession.TenantId);
            if (seqnumber != null)
            {
                int seq = seqnumber.Sequence + 1;
                string dateSpec = seqnumber.DateStringSpec;
                string prefix = string.IsNullOrEmpty(seqnumber.Prefix) ? "" : seqnumber.Prefix.Trim();
                string infix = string.IsNullOrEmpty(seqnumber.Infix) ? "" : seqnumber.Infix.Trim();
                string suffix = string.IsNullOrEmpty(seqnumber.Suffix) ? "" : seqnumber.Suffix.Trim();
                int n = seqnumber.SeqLength.HasValue ? seqnumber.SeqLength.Value : 0;
                string latestNumber = (seqnumber.LatestNumber??"").Trim();
                string dateString = string.Empty;
                switch (dateSpec)
                {
                    case "YYYYMMDD":
                        dateString = Clock.Now.ToString("yyyyMMdd");
                        break;
                    case "YYMMDD":
                        dateString = Clock.Now.ToString("yyMMdd");
                        break;
                    case "YYYYMM":
                        dateString = Clock.Now.ToString("yyyyMM");
                        break;
                    case "YYMM":
                        dateString = Clock.Now.ToString("yyMM");
                        break;
                    case "YY":
                        dateString = Clock.Now.ToString("yy");
                        break;
                    default:
                        dateString = string.Empty;
                        break;
                }
                //检查流水码是否需要重置
                if (latestNumber != null && latestNumber.Length > 0)
                {                   
                    if ((dateString ?? "").Length > 0 && latestNumber.Substring(0, (prefix + dateString).Length) != (prefix + dateString))
                    {
                        seq = 1;
                    }
                }
                //处理流水码
                string seqString = seq.ToString().PadLeft(n, '0');                
                //生成返回值
                strReturn = prefix + dateString + infix + seqString + suffix;
                //更新配置数据
                seqnumber.Sequence = seq;
                seqnumber.LatestNumber = strReturn;
            }
            else
            {
                throw new Abp.UI.UserFriendlyException("SequenceNumberIsNotConfig");
            }

            return strReturn;
        }

        public int GetSequenceNumberByCode(string numberCode)
        {
            int result = 0;
            SequenceNumber seqnumber = _repository.FirstOrDefault(x => x.NumberCode == numberCode && x.TenantId == AbpSession.TenantId);
            if (seqnumber != null)
            {
                result = seqnumber.Sequence + 1;
                seqnumber.Sequence = result;
                seqnumber.LatestNumber = result.ToString();
            }
            else
            {
                throw new Abp.UI.UserFriendlyException("SequenceNumberIsNotConfig");
            }

            return result;
        }
    }
}
