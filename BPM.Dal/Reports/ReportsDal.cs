using BPM.Dto.Models.Reports;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BPM.Dal.Reports
{
    public class ReportsDal
    {

        public List<ReporteDto> GetReport(DateTime initialDate, DateTime finalDate)
        {
            try
            {
                using (BPMEntities db = new BPMEntities())
                {
                    var report = db.Sp_GetReporte(initialDate, finalDate).ToList().ConvertAll(row => new ReporteDto()
                    {
                     
                        Cliente = row.CLIENTE,
                        CuentaOrigen = row.ORIGEN,
                        Tipo = row.TIPO_OPERACION,
                        Saldo = Convert.ToInt32(row.SALDO),
                        Valor_Retiro = Convert.ToInt32(row.VALOR_RETIRO),
                        GMF = Convert.ToInt32(row.VALOR_GMF),
                        Banco = row.BANCO,
                        Cuenta = row.CUENTA_DESTINO





                    });
                return report;
            }
            }
            catch (Exception e)
            {
                return new List<ReporteDto>();
            }
}

 
    }
}
