using BPM.Business.Configuration;
using BPM.Dto.Configuration;
using DocumentFormat.OpenXml.Office2010.Excel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Mvc;

namespace BPM.Controllers
{
    public class CuentaController : Controller
    {

        #region "VARIABLE"
        CuentaBusiness Business = new CuentaBusiness();
        
        #endregion

        
        public ActionResult Cuenta()
        {
            try
            {
                var CuentaObjects = new CuentaCreationDto();

                CuentaObjects.CuentaList = Business.GetCuentas();
                CuentaObjects.ClientList = Business.GetClientes();
                CuentaObjects.BankList = Business.GetBancos();
                CuentaObjects.TipoList = Business.GetTipos();
                CuentaObjects.TransferenciaList = Business.GetCuentaTransferir();

                return View(CuentaObjects);

            }
            catch (Exception e)
            {
                ViewBag.Error = e.Message;
                return View();
            }
        }
        //Metodo para agregar transacciones
       
        public ActionResult Add(

                    string CuentaOrigen,
                    int Saldo,
                    int Valor_Retiro,
                    //int GMF,
                    string SelectedClient,
                    string SelectedBank,
                    string SelectedTipo,
                    string SelectedCuenta
                  


                   )
        {
            try
            {
               
                var CuentaDtos = new CuentaDto
                {
                    CuentaOrigen = CuentaOrigen,
                    Saldo = Saldo,
                    Valor_Retiro = Valor_Retiro,
                    GMF= 0,
                    IdCliente = Convert.ToInt32(SelectedClient),
                    IdBanco = Convert.ToInt32(SelectedBank),
                    IdTipo = Convert.ToInt32(SelectedTipo),
                    IdCuenta = Convert.ToInt32(SelectedCuenta),


                };

                var CreatedStatus = Business.SaveCuenta(CuentaDtos);

                if (CreatedStatus == 1)
                {
                    return RedirectToAction("Cuenta", "Cuenta");
                }
                else if (CreatedStatus == 2)
                {
                    ViewBag.Error = "El Cuenta ya existe.";
                    return View();
                }
                else
                {
                    return RedirectToAction("Cuenta", "Cuenta");
                    //ViewBag.Error = "Hay un error en el sistema, contacte al administrador.";
                    //return View();
                }
            }
            catch (Exception e)
            {

                ViewBag.Error = e.Message;
                return View();
            }
        }


        
        public ActionResult Remove(int Id)
        {
            try
            {

                var RemoveStatus = Business.RemoveCuenta(Id);

                if (RemoveStatus == 1)
                {
                    return RedirectToAction("Cuenta", "Cuenta");
                }
                else
                {
                    ViewBag.Error = "Hay un error en el sistema, contacte al administrador.";
                    return View();
                }

            }
            catch (Exception e)
            {
                ViewBag.Error = e.Message;
                return View();
            }
        }

      
        public ActionResult Edit(int IdMovimiento)
        {
            var CuentaObjects = new CuentaCreationDto();
            CuentaObjects.CuentaList = new List<CuentaDto>() { Business.GetCuenta(Convert.ToInt32(IdMovimiento)) };

            CuentaObjects.ClientList = Business.GetClientes();
            CuentaObjects.SelectedClient = CuentaObjects.CuentaList.FirstOrDefault().IdCliente;

            CuentaObjects.BankList = Business.GetBancos();
            CuentaObjects.SelectedBank = CuentaObjects.CuentaList.FirstOrDefault().IdBanco;
           
            CuentaObjects.TipoList = Business.GetTipos();
            CuentaObjects.SelectedTipo = CuentaObjects.CuentaList.FirstOrDefault().IdTipo;

            CuentaObjects.TransferenciaList = Business.GetCuentaTransferir();
            CuentaObjects.SelectedCuenta = CuentaObjects.CuentaList.FirstOrDefault().IdCuenta;


            return View(CuentaObjects);

        }

        [HttpPost]
       
        public ActionResult Edit(
            string IdMovimiento,
            string CuentaOrigen,
            int Saldo,
            int Valor_Retiro,
            int GMF,
            string SelectedClient,
            string SelectedBank,
            string SelectedTipo,
             string SelectedCuenta
             )
        {
            try
            {
                if (ModelState.IsValid)
                {
                   
                    var Cuentas = new CuentaDto()
                    {
                        IdMovimiento = Convert.ToInt32(IdMovimiento),
                        CuentaOrigen = CuentaOrigen,
                        Saldo = Convert.ToInt32(Saldo),
                        Valor_Retiro = Convert.ToInt32(Valor_Retiro),
                        GMF = Convert.ToInt32(GMF),
                        IdCliente = Convert.ToInt32(SelectedClient),
                        IdBanco = Convert.ToInt32(SelectedBank),
                        IdTipo = Convert.ToInt32(SelectedTipo),
                        IdCuenta = Convert.ToInt32(SelectedCuenta)


                    };

                    var CreatedStatus = Business.EditCuenta(Cuentas);

                    if (CreatedStatus == 1)
                    {
                        return RedirectToAction("Cuenta", "Cuenta");
                    }
                    else
                    {
                        return RedirectToAction("Cuenta", "Cuenta");
                        //ViewBag.Error = "Hay un error en el sistema, contacte al administrador.";
                        //return View();
                    }
                }
                else
                {
                    return View();
                }
            }
            catch (Exception e)
            {
                ViewBag.Error = e.Message;
                return View();
            }
        }

        public ActionResult Transferir(int IdMovimiento)
        {

            try
            {

                var RetirarStatus = Business.Transferir(IdMovimiento);

                if (RetirarStatus == 1)
                {
                    return RedirectToAction("Cuenta", "Cuenta");
                }
                else
                {
                    ViewBag.Error = "Hay un error en el sistema, contacte al administrador.";
                    return RedirectToAction("Cuenta", "Cuenta");
                }

            }
            catch (Exception e)
            {
                ViewBag.Error = e.Message;
                return View();
            }

        }

        public ActionResult Retirar(int IdMovimiento)
        {

            try
            {

                var RetirarStatus = Business.Retirar(IdMovimiento);

                if (RetirarStatus == 1)
                {
                    return RedirectToAction("Cuenta", "Cuenta");
                }
                else
                {
                    ViewBag.Error = "Hay un error en el sistema, contacte al administrador.";
                    return RedirectToAction("Cuenta", "Cuenta");
                }

            }
            catch (Exception e)
            {
                ViewBag.Error = e.Message;
                return View();
            }

        }

    }
}
