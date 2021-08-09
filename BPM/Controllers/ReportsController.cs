using BPM.Business.Report;
using BPM.Dto.Models.Reports;
using ClosedXML.Excel;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Mvc;

namespace BPM.Controllers
{
    public class ReportsController : Controller
    {
        ReportBusiness Business = new ReportBusiness();

        // GET: Reporte
       

        public ActionResult Reports()
        {
            return View();
        }

      
        public FileResult DownloadReport(string InitialDate, string FinalDate)
        {

            List<ReporteDto> gpqrs = Business.GetReport(Convert.ToDateTime(InitialDate), Convert.ToDateTime(FinalDate));
            if (gpqrs.Count > 0)
            {
                using (XLWorkbook wb = new XLWorkbook())
                {
                    DataTable dat = new DataTable();
                    string[] cols = new string[] { "CLIENTE","ORIGEN", "TIPO_OPERACION" ,"SALDO", "VALOR_RETIRO" , "VALOR_GMF", "BANCO", "CUENTA_DESTINO",
                   };
                    foreach (string col in cols)
                    {
                        dat.Columns.Add(col);
                    }

                    foreach (ReporteDto pqr in gpqrs)
                    {
                        DataRow row = dat.NewRow();

                        row.SetField(cols[0], pqr.Cliente);
                        row.SetField(cols[1], pqr.CuentaOrigen);
                        row.SetField(cols[2], pqr.Tipo);
                        row.SetField(cols[3], pqr.Saldo);
                        row.SetField(cols[4], pqr.Valor_Retiro);
                        row.SetField(cols[5], pqr.GMF);
                        row.SetField(cols[6], pqr.Banco);
                        row.SetField(cols[7], pqr.Cuenta);

                       


                        dat.Rows.Add(row);

                    }



                    using (MemoryStream stream = new MemoryStream())
                    {

                        wb.Worksheets.Add(dat, "Movimientos");
                        wb.SaveAs(stream);

                        return File(stream.ToArray(), "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", string.Format("Movimientos{0}.xls", DateTime.Now.ToShortDateString().Replace("/", ""), Encoding.UTF8));

                    }
                }
            }

            return null;
        }
    }
}