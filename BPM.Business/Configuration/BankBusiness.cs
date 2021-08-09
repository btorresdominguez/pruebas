using BPM.Dal;
using BPM.Dal.Configuration;
using BPM.Dto.Configuration;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BPM.Business.Configuration
{
    public class BankBusiness
    {

        public List<BancoDto> GetBanks()
        {
            var Dal = new BankDal();
            return Dal.GetBanks();
        }

        public int AddBank(BancoDto Bank)
        {
            var Dal = new BankDal();
            return Dal.AddBank(Bank);

        }

        public BancoDto GetBank(int IdBanke)
        {
            var Dal = new BankDal();
            return Dal.GetBank(IdBanke);
        }

        public int EditBank(BancoDto Bank)
        {
            var Dal = new BankDal();
            return Dal.EditBank(Bank);

        }

        public int RemoveBank(int Id)
        {
            var Dal = new BankDal();
            return Dal.RemoveBank(Id);
        }

        public int SaveBank(BancoDto Bank)
        {
            var Dal = new BankDal();
            return Dal.SaveBank(Bank);
        }

    }
}
