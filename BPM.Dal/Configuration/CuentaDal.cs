using BPM.Dto.Configuration;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BPM.Dal.Configuration
{
    public class CuentaDal
    {

        public int SaveCuenta(CuentaDto Cuentas)
        {
            try
            {
                using (BPMEntities db = new BPMEntities())
                {

                    var Created = db.Sp_AddCuenta(

                        Cuentas.CuentaOrigen,                     
                        Cuentas.Saldo,
                        Cuentas.Valor_Retiro,
                        Cuentas.GMF,
                        Cuentas.IdCliente,
                        Cuentas.IdBanco,
                        Cuentas.IdTipo,
                        Cuentas.IdCuenta
                     

                        ).ToString().First();
                    return Convert.ToInt32(Created);
                }
            }
            catch (Exception e)
            {
                return 0;
            }
        }

        public List<CuentaDto> GetCuentas()
        {
            try
            {
                using (BPMEntities db = new BPMEntities())
                {
                    var Cuentases = db.Sp_GetCuenta().ToList().ConvertAll(Cuentas => new CuentaDto()
                    {
                        IdMovimiento = Convert.ToInt32(Cuentas.IdMovimiento),
                        CuentaOrigen = Cuentas.CuentaOrigen,
                        Saldo = Convert.ToInt32(Cuentas.Saldo),
                        Valor_Retiro = Convert.ToInt32(Cuentas.Valor_Retiro),
                        GMF = Convert.ToInt32(Cuentas.GMF),
                        NameCliente = Cuentas.NameCliente,
                        NameBanco = Cuentas.NameBanco,
                        NameTipo = Cuentas.NameTipo,
                        NameCuenta = Cuentas.NameCuenta,
                        NameState = Cuentas.NameState,


                    });

                    return Cuentases;
                }
            }
            catch (Exception e)
            {
                return new List<CuentaDto>(); ;
            }
        }

        public int AddCuentas(CuentaDto Cuentas)
        {
            try
            {
                using (BPMEntities db = new BPMEntities())
                {
                    var Created = db.Sp_AddCuenta(


                        Cuentas.CuentaOrigen,
                        Cuentas.Saldo,
                        Cuentas.Valor_Retiro,
                        Cuentas.GMF,
                        Cuentas.IdCliente,
                        Cuentas.IdBanco,
                        Cuentas.IdTipo,
                        Cuentas.IdCuenta


                        ).ToString().First();
                    return Convert.ToInt32(Created);
                }
            }
            catch (Exception e)
            {
                return 0;
            }

        }

        public CuentaDto GetCuenta(int Id)
        {
            try
            {
                using (BPMEntities db = new BPMEntities())
                {
                    var Cuentas = db.Transacciones.Where(x => x.IdMovimiento == Id).FirstOrDefault();
                    var CuentasDto = new CuentaDto
                    {


                        IdMovimiento = Convert.ToInt32(Cuentas.IdMovimiento),
                        CuentaOrigen = Cuentas.CuentaOrigen,
                        Saldo = Convert.ToInt32(Cuentas.Saldo),
                        Valor_Retiro = Convert.ToInt32(Cuentas.Valor_Retiro),
                        GMF = Convert.ToInt32(Cuentas.GMF),
                        IdCliente = Convert.ToInt32(Cuentas.IdCliente),
                        IdBanco = Convert.ToInt32(Cuentas.IdBanco),
                        IdTipo = Convert.ToInt32(Cuentas.IdTipo),
                        IdCuenta = Convert.ToInt32(Cuentas.IdCuenta)


                    };
                    return CuentasDto;
                }
            }
            catch (Exception e)
            {
                CuentaDto CuentasDto = new CuentaDto
                {
                    IdMovimiento = 0,
                };
                return CuentasDto;
            }

        }



        public int EditCuentas(CuentaDto Cuentas)
        {
            try
            {
                using (BPMEntities db = new BPMEntities())
                {
                    var Created = db.Sp_EditCuenta(
                        
                        Cuentas.IdMovimiento,
                        Cuentas.CuentaOrigen,
                        Cuentas.Saldo,
                        Cuentas.Valor_Retiro,
                        Cuentas.GMF,
                        Cuentas.IdCliente,
                        Cuentas.IdBanco,
                        Cuentas.IdTipo,
                        Cuentas.IdCuenta
                        ).ToString();
                    return Convert.ToInt32(Created);
                }
            }
            catch (Exception e)
            {
                return 0;
            }

        }

        public int RemoveCuenta(int id)
        {
            try
            {
                using (BPMEntities db = new BPMEntities())
                {
                    var Remove = db.Sp_RemoveCuenta(id).First();
                    return Convert.ToInt32(Remove);
                }
            }
            catch (Exception e)
            {
                return 0;
            }

        }

        public List<TipoDto> GetTipos()
        {
            try
            {
                using (BPMEntities db = new BPMEntities())
                {
                    var Type = db.Sp_GetTipos().ToList().ConvertAll(Type => new TipoDto()
                    {
                        IdTipo = Type.IdTipo,
                        Nombre = Type.TipoMovimiento,
                        NameState = Type.NameState
                    });

                    return Type;
                }
            }
            catch (Exception e)
            {
                return new List<TipoDto>(); ;
            }
        }

        public List<TransferenciaDto> GetCuentaTransferir()
        {
            try
            {
                using (BPMEntities db = new BPMEntities())
                {
                    var Transferir = db.Sp_GetCuentaTransferir().ToList().ConvertAll(Transferir => new TransferenciaDto()
                    {
                        IdCuenta= Transferir.IdCuenta,
                        Nombre = Transferir.Nombre,
       
                    });

                    return Transferir;
                }
            }
            catch (Exception e)
            {
                return new List<TransferenciaDto>(); ;
            }
        }

        public int Transferir(int IdMovimiento)
        {
            try
            {
                using (BPMEntities db = new BPMEntities())
                {
                    var Retiro = db.Sp_Transferir(IdMovimiento).First();
                    return Convert.ToInt32(Retiro);
                }
            }
            catch (Exception e)
            {
                return 0;
            }

        }

        public int Retirar(int IdMovimiento)
        {
            try
            {
                using (BPMEntities db = new BPMEntities())
                {
                    var Retiro = db.Sp_Retirar(IdMovimiento).First();
                    return Convert.ToInt32(Retiro);
                }
            }
            catch (Exception e)
            {
                return 0;
            }

        }

    }
}
