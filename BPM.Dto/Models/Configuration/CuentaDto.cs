using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BPM.Dto.Configuration
{
    public class CuentaDto
    {
        public int IdMovimiento { get; set; }
        [Required(ErrorMessage = "Este campo es obligatorio")]
        [MaxLength(50, ErrorMessage = "Debe ingresar máximo 50 caracteres")]
        public int IdCuenta { get; set; }
        public int IdCliente { get; set; }
        public int IdBanco { get; set; }
        public int IdTipo { get; set; }
        public string Cuenta { get; set; }
        public string CuentaOrigen { get; set; }
        public int Saldo { get; set; }
        public int Valor_Retiro { get; set; }
        public int GMF { get; set; }
        public string NameCliente { get; set; }
        public string NameBanco { get; set; }
        public string NameTipo { get; set; }
        public string NameCuenta { get; set; }
        public string NameState { get; set; }
    }
}
