using BPM.Dal;
using BPM.Dto.Configuration;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;

namespace WebApp.Tests
{
    [TestClass]
    public class TransaccionesTest
    {
        [TestMethod]
        public void EsValido_LaCuenta()
        {
            var Transacciones = new Cuenta();

            var Cuenta = new CuentaDto() { Cuenta = string.Empty };

            var resultado = Transacciones.Nombre;

            Assert.IsNull(resultado);
        }

        [TestMethod]
        public void EsValido_LaCuentaA()
        {
            var Transacciones = new Cuenta();

            var Cuenta = new CuentaDto() { Cuenta = "A" };

            var resultado = Transacciones.Nombre;

            Assert.IsNull(resultado);
        }
    }
}
