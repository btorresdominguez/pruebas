﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Objects;
    using System.Data.Objects.DataClasses;
    using System.Linq;
    
    public partial class BPMEntities : DbContext
    {
        public BPMEntities()
            : base("name=BPMEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<Banco> Banco { get; set; }
        public DbSet<Cliente> Cliente { get; set; }
        public DbSet<Cuenta> Cuenta { get; set; }
        public DbSet<Movimientos> Movimientos { get; set; }
        public DbSet<Tipo_Transaccion> Tipo_Transaccion { get; set; }
        public DbSet<Transacciones> Transacciones { get; set; }
    
        public virtual ObjectResult<Nullable<int>> Sp_AddBank(string nombre)
        {
            var nombreParameter = nombre != null ?
                new ObjectParameter("Nombre", nombre) :
                new ObjectParameter("Nombre", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Nullable<int>>("Sp_AddBank", nombreParameter);
        }
    
        public virtual ObjectResult<Nullable<int>> Sp_AddClient(string nombre)
        {
            var nombreParameter = nombre != null ?
                new ObjectParameter("Nombre", nombre) :
                new ObjectParameter("Nombre", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Nullable<int>>("Sp_AddClient", nombreParameter);
        }
    
        public virtual ObjectResult<Nullable<int>> Sp_EditBank(Nullable<int> id, string nombre)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("Id", id) :
                new ObjectParameter("Id", typeof(int));
    
            var nombreParameter = nombre != null ?
                new ObjectParameter("Nombre", nombre) :
                new ObjectParameter("Nombre", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Nullable<int>>("Sp_EditBank", idParameter, nombreParameter);
        }
    
        public virtual ObjectResult<Nullable<int>> Sp_EditClient(Nullable<int> id, string nombre)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("Id", id) :
                new ObjectParameter("Id", typeof(int));
    
            var nombreParameter = nombre != null ?
                new ObjectParameter("Nombre", nombre) :
                new ObjectParameter("Nombre", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Nullable<int>>("Sp_EditClient", idParameter, nombreParameter);
        }
    
        public virtual ObjectResult<Sp_GetBanks_Result> Sp_GetBanks()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Sp_GetBanks_Result>("Sp_GetBanks");
        }
    
        public virtual ObjectResult<Sp_GetClients_Result> Sp_GetClients()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Sp_GetClients_Result>("Sp_GetClients");
        }
    
        public virtual ObjectResult<Sp_GetTipos_Result> Sp_GetTipos()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Sp_GetTipos_Result>("Sp_GetTipos");
        }
    
        public virtual ObjectResult<Nullable<int>> Sp_RemoveBank(Nullable<int> id)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("Id", id) :
                new ObjectParameter("Id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Nullable<int>>("Sp_RemoveBank", idParameter);
        }
    
        public virtual ObjectResult<Nullable<int>> Sp_RemoveClient(Nullable<int> id)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("Id", id) :
                new ObjectParameter("Id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Nullable<int>>("Sp_RemoveClient", idParameter);
        }
    
        public virtual ObjectResult<Nullable<int>> Sp_RemoveCuenta(Nullable<int> id)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("Id", id) :
                new ObjectParameter("Id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Nullable<int>>("Sp_RemoveCuenta", idParameter);
        }
    
        public virtual ObjectResult<Nullable<int>> Sp_AddCuenta(string cuentaOrigen, Nullable<int> saldo, Nullable<int> valor_Retiro, Nullable<int> gMF, Nullable<int> idCliente, Nullable<int> idBanco, Nullable<int> idTipo, Nullable<int> idCuenta)
        {
            var cuentaOrigenParameter = cuentaOrigen != null ?
                new ObjectParameter("CuentaOrigen", cuentaOrigen) :
                new ObjectParameter("CuentaOrigen", typeof(string));
    
            var saldoParameter = saldo.HasValue ?
                new ObjectParameter("Saldo", saldo) :
                new ObjectParameter("Saldo", typeof(int));
    
            var valor_RetiroParameter = valor_Retiro.HasValue ?
                new ObjectParameter("Valor_Retiro", valor_Retiro) :
                new ObjectParameter("Valor_Retiro", typeof(int));
    
            var gMFParameter = gMF.HasValue ?
                new ObjectParameter("GMF", gMF) :
                new ObjectParameter("GMF", typeof(int));
    
            var idClienteParameter = idCliente.HasValue ?
                new ObjectParameter("IdCliente", idCliente) :
                new ObjectParameter("IdCliente", typeof(int));
    
            var idBancoParameter = idBanco.HasValue ?
                new ObjectParameter("IdBanco", idBanco) :
                new ObjectParameter("IdBanco", typeof(int));
    
            var idTipoParameter = idTipo.HasValue ?
                new ObjectParameter("IdTipo", idTipo) :
                new ObjectParameter("IdTipo", typeof(int));
    
            var idCuentaParameter = idCuenta.HasValue ?
                new ObjectParameter("IdCuenta", idCuenta) :
                new ObjectParameter("IdCuenta", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Nullable<int>>("Sp_AddCuenta", cuentaOrigenParameter, saldoParameter, valor_RetiroParameter, gMFParameter, idClienteParameter, idBancoParameter, idTipoParameter, idCuentaParameter);
        }
    
        public virtual ObjectResult<Nullable<int>> Sp_Retirar(Nullable<int> idMovimiento)
        {
            var idMovimientoParameter = idMovimiento.HasValue ?
                new ObjectParameter("IdMovimiento", idMovimiento) :
                new ObjectParameter("IdMovimiento", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Nullable<int>>("Sp_Retirar", idMovimientoParameter);
        }
    
        public virtual ObjectResult<Nullable<int>> Sp_Transferir(Nullable<int> idMovimiento)
        {
            var idMovimientoParameter = idMovimiento.HasValue ?
                new ObjectParameter("IdMovimiento", idMovimiento) :
                new ObjectParameter("IdMovimiento", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Nullable<int>>("Sp_Transferir", idMovimientoParameter);
        }
    
        public virtual ObjectResult<Sp_GetCuenta_Result> Sp_GetCuenta()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Sp_GetCuenta_Result>("Sp_GetCuenta");
        }
    
        public virtual ObjectResult<Sp_GetCuentaTransferir_Result> Sp_GetCuentaTransferir()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Sp_GetCuentaTransferir_Result>("Sp_GetCuentaTransferir");
        }
    
        public virtual ObjectResult<Nullable<int>> Sp_EditCuenta(Nullable<int> id, string cuentaOrigen, Nullable<int> saldo, Nullable<int> valor_Retiro, Nullable<int> gMF, Nullable<int> idCliente, Nullable<int> idBanco, Nullable<int> idTipo, Nullable<int> idCuenta)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("Id", id) :
                new ObjectParameter("Id", typeof(int));
    
            var cuentaOrigenParameter = cuentaOrigen != null ?
                new ObjectParameter("CuentaOrigen", cuentaOrigen) :
                new ObjectParameter("CuentaOrigen", typeof(string));
    
            var saldoParameter = saldo.HasValue ?
                new ObjectParameter("Saldo", saldo) :
                new ObjectParameter("Saldo", typeof(int));
    
            var valor_RetiroParameter = valor_Retiro.HasValue ?
                new ObjectParameter("Valor_Retiro", valor_Retiro) :
                new ObjectParameter("Valor_Retiro", typeof(int));
    
            var gMFParameter = gMF.HasValue ?
                new ObjectParameter("GMF", gMF) :
                new ObjectParameter("GMF", typeof(int));
    
            var idClienteParameter = idCliente.HasValue ?
                new ObjectParameter("IdCliente", idCliente) :
                new ObjectParameter("IdCliente", typeof(int));
    
            var idBancoParameter = idBanco.HasValue ?
                new ObjectParameter("IdBanco", idBanco) :
                new ObjectParameter("IdBanco", typeof(int));
    
            var idTipoParameter = idTipo.HasValue ?
                new ObjectParameter("IdTipo", idTipo) :
                new ObjectParameter("IdTipo", typeof(int));
    
            var idCuentaParameter = idCuenta.HasValue ?
                new ObjectParameter("IdCuenta", idCuenta) :
                new ObjectParameter("IdCuenta", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Nullable<int>>("Sp_EditCuenta", idParameter, cuentaOrigenParameter, saldoParameter, valor_RetiroParameter, gMFParameter, idClienteParameter, idBancoParameter, idTipoParameter, idCuentaParameter);
        }
    
        public virtual ObjectResult<Sp_GetReporte_Result> Sp_GetReporte(Nullable<System.DateTime> initialDate, Nullable<System.DateTime> finalDate)
        {
            var initialDateParameter = initialDate.HasValue ?
                new ObjectParameter("initialDate", initialDate) :
                new ObjectParameter("initialDate", typeof(System.DateTime));
    
            var finalDateParameter = finalDate.HasValue ?
                new ObjectParameter("finalDate", finalDate) :
                new ObjectParameter("finalDate", typeof(System.DateTime));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Sp_GetReporte_Result>("Sp_GetReporte", initialDateParameter, finalDateParameter);
        }
    }
}
