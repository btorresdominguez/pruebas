using BPM.Dto.Configuration;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BPM.Dal.Configuration
{
    public class BankDal
    {

        public int SaveBank(BancoDto Bank)
        {
            try
            {
                using (BPMEntities db = new BPMEntities())
                {
                    var Created = db.Sp_AddBank(Bank.Nombre).First();
                    return Convert.ToInt32(Created);
                }
            }
            catch (Exception e)
            {

                return 0;
            }
        }

        public List<BancoDto> GetBanks()
        {
            try
            {
                using (BPMEntities db = new BPMEntities())
                {
                    var Banks = db.Sp_GetBanks().ToList().ConvertAll(Bank => new BancoDto()
                    {
                        IdBanco = Bank.IdBanco,
                        Nombre = Bank.Nombre,
                        NameState = Bank.NameState
                    });

                    return Banks;
                }
            }
            catch (Exception e)
            {
                return new List<BancoDto>(); ;
            }
        }

        public int AddBank(BancoDto Bank)
        {
            try
            {
                using (BPMEntities db = new BPMEntities())
                {
                    var Created = db.Sp_AddBank(Bank.Nombre).First();
                    return Convert.ToInt32(Created);
                }
            }
            catch (Exception e)
            {
                return 0;
            }

        }

        public BancoDto GetBank(int Id)
        {
            try
            {
                using (BPMEntities db = new BPMEntities())
                {
                    var Bank = db.Banco.Where(x => x.IdBanco == Id).FirstOrDefault();
                    var BancoDto = new BancoDto
                    {
                        IdBanco = Bank.IdBanco,
                        Nombre = Bank.Nombre

                    };
                    return BancoDto;
                }
            }
            catch (Exception e)
            {
                BancoDto BancoDto = new BancoDto
                {
                    IdBanco = 0,
                };
                return BancoDto;
            }

        }
        public int EditBank(BancoDto Bank)
        {
            try
            {
                using (BPMEntities db = new BPMEntities())
                {
                    var Created = db.Sp_EditBank(Bank.IdBanco, Bank.Nombre).First();
                    return Convert.ToInt32(Created);
                }
            }
            catch (Exception e)
            {
                return 0;
            }

        }

        public int RemoveBank(int Id)
        {
            try
            {
                using (BPMEntities db = new BPMEntities())
                {
                    var Remove = db.Sp_RemoveBank(Id).First();
                    return Convert.ToInt32(Remove);
                }
            }
            catch (Exception e)
            {
                return 0;
            }

        }

    }
}
