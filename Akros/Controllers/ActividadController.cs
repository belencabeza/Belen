using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Akros.Models;

namespace Akros.Controllers
{
    public class ActividadController : Controller
    {
        //
        // GET: /Actividad/
        AkrosEntities6 db= new AkrosEntities6();
        
        //Index
        public ActionResult Index()
        {
            return View();
        }

        //Crear Actividad
        public ActionResult CrearActividad()
        {
            return View();
        }
        [HttpPost]
        public ActionResult CrearActividad(Actividad newactividad)
        {
            try
            {
                db.AddToActividad(newactividad);
                db.SaveChanges();
                return RedirectToAction("Index", "Actividad");
            }
            catch
            {
                ViewData["Message"] = "Error: Ingresa los datos de la Actividad";
                return View(newactividad);
            }
        }

        //Editar actividad
        public ActionResult EditarActividad()
        {
            return View();
        }
        [HttpPost]
        public ActionResult EditarActividad(int Id_Actividad)
        {
            return RedirectToAction("EditarActividad1", "Actividad", new { Id_actividad = Id_Actividad });
        }
        public ActionResult EditarActividad1(int Id_actividad)
        {
            var Actividad = db.Actividad.Single(a=>a.Id_Actividad==Id_actividad);
            return View(Actividad);
        }
        [HttpPost]
        public ActionResult EditarActividad1(int Id_actividad, Actividad newactividad)
        {
            var oldactividad = db.Actividad.Single(a => a.Id_Actividad == Id_actividad);
            oldactividad.Detalle = newactividad.Detalle;
            db.SaveChanges();
            return RedirectToAction("Index", "Actividad");
        }

        //Borrar Actividad
        public ActionResult BorrarActividad()
        {
            return View();
        }
        [HttpPost]
        public ActionResult BorrarActividad(int Id_Actividad)
        {
            return RedirectToAction("BorrarActividad2", "Actividad", new { ID_actividad = Id_Actividad });
        }
        public ActionResult BorrarActividad2(int ID_actividad)
        {
            var actividad = db.Actividad.Single(a => a.Id_Actividad == ID_actividad);
            return View(actividad);
        }
        [HttpPost]
        public ActionResult BorrarActividad2(int ID_actividad, string Confirmar)
        {
            var actividad = db.Actividad.Single(a => a.Id_Actividad == ID_actividad);
            db.DeleteObject(actividad);
            db.SaveChanges();

            return RedirectToAction("Index", "Actividad");
        }

        //Mostrar Actividades
        public ActionResult MostrarActividad()
        {
            var actividades = db.Actividad;
            return View(actividades.ToList());
        }

    }
}
