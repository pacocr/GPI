﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using GestorAlmacenGPI.Models;

namespace GestorAlmacenGPI.Controllers
{
    public class BuscadorController : Controller
    {

        //
        // GET: /Buscador/

        public ActionResult Index()
        {
            return View();
        }



      
        [HttpPost]
        public ActionResult Buscador(BuscadorModels b)
        {
            return View();
        }


       
        public ActionResult Buscador()
        {
            return View();
        }



    }
}