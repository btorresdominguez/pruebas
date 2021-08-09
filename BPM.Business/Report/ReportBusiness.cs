using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BPM.Dal.Reports;
using BPM.Dto.Models.Reports;


namespace BPM.Business.Report
{
    public class ReportBusiness
    {
        public List<ReporteDto> GetReport(DateTime initialDate, DateTime finalDate)
        {
            var Reports = new Dal.Reports.ReportsDal();
            return Reports.GetReport(initialDate, finalDate);


        }
      
    }
}
