using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BPM.Dto.Configuration
{
    public class TransferenciaDto
    {
        public int IdCuenta { get; set; }
        [Required(ErrorMessage = "Este campo es obligatorio")]
        [MaxLength(50, ErrorMessage = "Debe ingresar máximo 50 caracteres")]
        public string Nombre { get; set; }
        public string NameState { get; set; }

    }
}
