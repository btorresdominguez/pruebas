//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace BPM.Dal
{
    using System;
    using System.Collections.Generic;
    
    public partial class Tipo_Transaccion
    {
        public Tipo_Transaccion()
        {
            this.Transacciones = new HashSet<Transacciones>();
        }
    
        public int IdTipo { get; set; }
        public string TipoMovimiento { get; set; }
        public Nullable<bool> Estado { get; set; }
    
        public virtual ICollection<Transacciones> Transacciones { get; set; }
    }
}
