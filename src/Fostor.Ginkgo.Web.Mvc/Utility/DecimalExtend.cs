using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Fostor.Ginkgo.Web
{
    public static class DecimalExtend
    {
        public static string ToShortString(this decimal? dec)
        {
            var s = string.Empty;
            if (dec.HasValue)
            {
                s = dec.Value.ToString("#0.#####");
            }          
            return s;
        }

        public static string ToShortString(this decimal dec)
        {
            var s = string.Empty;
            if(dec != 0)
            {
                s = dec.ToString("#0.#####");
            }
            return s;
        }
    }
}
