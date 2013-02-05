using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Akros.Models;

namespace Akros.Controllers
{
    public class ListasController : Controller
    {
        //
        // GET: /Listas/

        AkrosEntities6 db = new AkrosEntities6();

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Mostraralumno()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Mostraralumno(int DNI)
        {
            return RedirectToAction("Mostraralumnolista", "Listas", new { dni = DNI });
        }
        public ActionResult Mostraralumnolista(int dni)
        {
            var lista = from a in db.Alumno where a.DNI == dni select a;
            return View(lista.ToList());
        }

        public ActionResult Mostraralumnos()
        {
            var alumnos = db.Alumno;
            return View(alumnos.ToList());
        }

        public ActionResult Mostrargrupo()
        {
            return View("Mostrargrupo");
        }
        [HttpPost]
        public ActionResult Mostrargrupo(int Grupo)
        {
            return RedirectToAction("Mostrargrupolista", "Listas", new { grupo = Grupo });
        }
        public ActionResult Mostrargrupolista(int grupo)
        {
            var lista = from a in db.Alumno where a.Id_Grupo == grupo select a;
            return View(lista.ToList());
        }

        public ActionResult Mostraractividad()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Mostraractividad(string Actividad)
        {
            return RedirectToAction("Mostraractividadlista", "Listas", new { actividad = Actividad });
        }
        public ActionResult Mostraractividadlista(int actividad)
        {
            var lista = from a in db.Alumno where a.Id_Actividad == actividad select a;
            return View(lista.ToList());
        }

        


    }
}
