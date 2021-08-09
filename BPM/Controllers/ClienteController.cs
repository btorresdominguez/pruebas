using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web.Mvc;
using BPM.Business.Configuration;
using BPM.Dto.Configuration;


namespace BPM.Controllers
{
    public class ClienteController : Controller
    {
        //[AuthorizeUser(Module: "Clientes")]
        public ActionResult Cliente()
        {
            try
            {
                var Business = new ClientBusiness();
                var ListClients = Business.GetClients();
                return View(ListClients);

            }
            catch (Exception e)
            {
                ViewBag.Error = e.Message;
                return View();
            }
        }

       // [AuthorizeUser(Module: "Clientes")]
        public ActionResult Add(ClienteDto Client)
        {
            try
            {

                    var Business = new ClientBusiness();
                    var CreatedStatus = Business.AddClient(Client);

                    if (CreatedStatus == 1)
                    {
                        return RedirectToAction("Cliente", "Cliente");
                    }
                    else if (CreatedStatus == 2)
                    {
                        ViewBag.Error = "El cliente ya existe.";
                        return View();
                    }
                    else
                    {
                        ViewBag.Error = "Hay un error en el sistema, contacte al administrador.";
                        return View(Client);
                    }
                
            }
            catch (Exception e)
            {
                ViewBag.Error = e.Message;
                return View();
            }
        }

       // [AuthorizeUser(Module: "Clientes")]
        public ActionResult Edit(int IdCliente)
        {
            var Business = new ClientBusiness();
            var Client = Business.GetClient(IdCliente);
            return View(Client);

        }

        [HttpPost]
       // [AuthorizeUser(Module: "Clientes")]
        //public ActionResult Edit(int IdClient, string Name)
        public ActionResult Edit(ClienteDto Client)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    //var Client = new ClienteDto()
                    //{
                    //    IdClient = IdClient,
                    //    Name = Name,
                    //};

                    var Business = new ClientBusiness();
                    var CreatedStatus = Business.EditClient(Client);

                    if (CreatedStatus == 1)
                    {
                        return RedirectToAction("Cliente", "Cliente");
                    }
                    else
                    {
                        ViewBag.Error = "Hay un error en el sistema, contacte al administrador.";
                        return View();
                    }
                }
                else
                {
                    return View(Client);
                }
            }
            catch (Exception e)
            {
                ViewBag.Error = e.Message;
                return View();
            }
        }

        //public ActionResult Remove(int? IdClient)
        //{
        //    var Business = new ClientBusiness();
        //    var Client = Business.GetClient(Convert.ToInt32(IdClient));
        //    return View(Client);

        //}

        //[HttpPost]

       // [AuthorizeUser(Module: "Clientes")]
        public ActionResult Remove(string IdCliente)
        {
            try
            {

                var Business = new ClientBusiness();
                var RemoveStatus = Business.RemoveClient(Convert.ToInt32(IdCliente));

                if (RemoveStatus == 1)
                {
                    return RedirectToAction("Cliente", "Cliente");
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

    }
}
