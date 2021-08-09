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
    public class CuentaBusiness
    {

        #region "VARIABLES"
        CuentaDal Dal = new CuentaDal();
        BankDal BankDal = new BankDal();
        ClientDal clientDal = new ClientDal();
       
        #endregion

        public int SaveCuenta(CuentaDto Cuentas)
        {
            return Dal.SaveCuenta(Cuentas);
        }

        public List<CuentaDto> GetCuentas()
        {
            return Dal.GetCuentas();
        }

        public int AddCuenta(CuentaDto Cuenta)
        {
            return Dal.AddCuentas(Cuenta);

        }

        public CuentaDto GetCuenta(int Id)
        {
            return Dal.GetCuenta(Id);
        }
        public int EditCuenta(CuentaDto Cuentas)
        {
            return Dal.EditCuentas(Cuentas);

        }

        public int RemoveCuenta(int Id)
        {
            return Dal.RemoveCuenta(Id);

        }

         public List<ClienteDto> GetClientes()
        {
            return clientDal.GetClients();
        }

        public List<BancoDto> GetBancos()
        {
            return BankDal.GetBanks();
        }

        public List<TipoDto> GetTipos()
        {
            return Dal.GetTipos();
        }
        public List<TransferenciaDto> GetCuentaTransferir()
        {
            return Dal.GetCuentaTransferir();
        }

        public int Transferir(int IdMovimiento)
        {

            return Dal.Transferir(IdMovimiento);
        }

        public int Retirar(int IdMovimiento)
        {

            return Dal.Retirar(IdMovimiento);
        }
    }
}
