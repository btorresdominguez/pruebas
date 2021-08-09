using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BPM.Dto.Configuration
{
    public class CuentaCreationDto
    {
        public IEnumerable<CuentaDto> CuentaList { get; set; }
        public IEnumerable<ClienteDto> ClientList { get; set; }
        public IEnumerable<BancoDto> BankList { get; set; }
        public IEnumerable<TipoDto> TipoList { get; set; }
        public IEnumerable<TransferenciaDto> TransferenciaList { get; set; }
        public int SelectedClient { get; set; }
        public int SelectedBank { get; set; }
        public int SelectedTipo { get; set; }
        public int SelectedCuenta { get; set; }

    }
}

