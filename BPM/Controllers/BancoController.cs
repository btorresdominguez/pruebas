using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web.Mvc;
using BPM.Business.Configuration;
using BPM.Dto.Configuration;


namespace BPM.Controllers
{
    public class BancoController : Controller
    {
        //[AuthorizeUser(Module: "Bancos")]
        public ActionResult Banco()
        {
            try
            {
                var Business = new BankBusiness();
                var ListBanks = Business.GetBanks();
                return View(ListBanks);

            }
            catch (Exception e)
            {
                ViewBag.Error = e.Message;
                return View();
            }
        }

       // [AuthorizeUser(Module: "Bancos")]
        public ActionResult Add(BancoDto Bank)
        {
            try
            {

                    var Business = new BankBusiness();
                    var CreatedStatus = Business.AddBank(Bank);

                    if (CreatedStatus == 1)
                    {
                        return RedirectToAction("Banco", "Banco");
                    }
                    else if (CreatedStatus == 2)
                    {
                        ViewBag.Error = "El Banco ya existe.";
                        return View();
                    }
                    else
                    {
                        ViewBag.Error = "Hay un error en el sistema, contacte al administrador.";
                        return View(Bank);
                    }
                
            }
            catch (Exception e)
            {
                ViewBag.Error = e.Message;
                return View();
            }
        }

       // [AuthorizeUser(Module: "Bancos")]
        public ActionResult Edit(int IdBanco)
        {
            var Business = new BankBusiness();
            var Bank = Business.GetBank(IdBanco);
            return View(Bank);

        }

        [HttpPost]
       // [AuthorizeUser(Module: "Bancos")]
        //public ActionResult Edit(int IdBank, string Name)
        public ActionResult Edit(BancoDto Bank)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    //var Bank = new BancoDto()
                    //{
                    //    IdBank = IdBank,
                    //    Name = Name,
                    //};

                    var Business = new BankBusiness();
                    var CreatedStatus = Business.EditBank(Bank);

                    if (CreatedStatus == 1)
                    {
                        return RedirectToAction("Banco", "Banco");
                    }
                    else
                    {
                        ViewBag.Error = "Hay un error en el sistema, contacte al administrador.";
                        return View();
                    }
                }
                else
                {
                    return View(Bank);
                }
            }
            catch (Exception e)
            {
                ViewBag.Error = e.Message;
                return View();
            }
        }

        //public ActionResult Remove(int? IdBank)
        //{
        //    var Business = new BankBusiness();
        //    var Bank = Business.GetBank(Convert.ToInt32(IdBank));
        //    return View(Bank);

        //}

        //[HttpPost]

       // [AuthorizeUser(Module: "Bancos")]
        public ActionResult Remove(string IdBanco)
        {
            try
            {

                var Business = new BankBusiness();
                var RemoveStatus = Business.RemoveBank(Convert.ToInt32(IdBanco));

                if (RemoveStatus == 1)
                {
                    return RedirectToAction("Banco", "Banco");
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
