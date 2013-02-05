using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Akros.Models;
using Akros.ViewModel;

namespace Akros.Controllers
{
    public class AlumnoController : Controller
        {
        //
        // GET: /Alumno/
        AkrosEntities6 db = new AkrosEntities6();
        //Index
        public ActionResult Index()
        {
            return View();
        }

        //Crear alumno
        public ActionResult Crearalumno()
        {
            var viewModel = new AlumnoViewModel
            {
                Alumno = new Alumno(),
                Actividades = db.Actividad.ToList(),
                Grupos = db.Grupo.ToList()
            };
           return View(viewModel);
        }
        [HttpPost]
        public ActionResult Crearalumno(Alumno Alumno)
        {
            try
            {
                db.Alumno.AddObject(Alumno);
                db.SaveChanges();
                return RedirectToAction("Index", "Alumno");
            }
            catch
            {
                ViewData["Message"] = "Error: Ingresa los datos del alumno";
                var viewModel = new AlumnoViewModel
                {
                    Alumno = new Alumno(),
                    Actividades = db.Actividad.ToList(),
                    Grupos = db.Grupo.ToList()
                };
                return View(viewModel);
            }
        }

        //Editar un alumno
        public ActionResult Editaralumno()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Editaralumno(int DNI)
        {
            return RedirectToAction("Editaralumno2", "Alumno", new { id = DNI });
        }


        public ActionResult Editaralumno2(int id)
        {
            var viewModel = new AlumnoViewModel
            {
                Alumno = db.Alumno.Single(a => a.DNI == id),
                Actividades = db.Actividad.ToList(),
                Grupos = db.Grupo.ToList()
            };
            return View(viewModel);
        }
        [HttpPost]
        public ActionResult Editaralumno2(int id, FormCollection formValues)
        {
            var alumno = db.Alumno.Single(a => a.DNI == id);
            try
            {
                UpdateModel(alumno, "Alumno");
                db.SaveChanges();
                return RedirectToAction("Index", "Alumno");
            }
            catch
            {
                var viewModel = new AlumnoViewModel
                {
                    Alumno = db.Alumno.Single(a => a.DNI == id),
                    Actividades = db.Actividad.ToList(),
                    Grupos = db.Grupo.ToList()
                };
                return View(viewModel);
            }
        }

        //Eliminar un alumno
        public ActionResult Borraralumno()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Borraralumno(int DNI)
        {
            return RedirectToAction("Borraralumno2", "Alumno", new { id = DNI });
        }

        public ActionResult Borraralumno2(int id)
        {
            var aborrar = db.Alumno.Single(a => a.DNI == id);
            return View(aborrar);
        }
        [HttpPost]
        public ActionResult Borraralumno2(int id, string Confirmar)
        {
            var Borrado = db.Alumno.Single(a => a.DNI == id);
            db.DeleteObject(Borrado);
            db.SaveChanges();

            return RedirectToAction("Index", "Alumno");
        }

        //Ver un alumno
        public ActionResult Veralumno()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Veralumno(int dni)
        {
            return RedirectToAction("Veralumno2", "Alumno", new { Dni = dni });
        }
        public ActionResult Veralumno2(int Dni)
        {
            var alumno = from a in db.Alumno where a.DNI == Dni select a;
            return View(alumno.ToList());
        }

        //Ver todos los alumnos
        public ActionResult Veralumnos()
        {
            var alumnos = db.Alumno;
            return View(alumnos.ToList());
        }

        //Ver alumnos de una actividad
        public ActionResult Veractividad()
        {
            var Actividad = db.Actividad;
            return View(Actividad.ToList());
        }
        public ActionResult Veractividad2(int id)
        {
            var alumnos = from a in db.Alumno where a.Id_Actividad==id select a;
            return View(alumnos.ToList());
        }

        //Ver alumnos de un grupo
        public ActionResult Vergrupo()
        {
            var Grupo = db.Grupo;
            return View(Grupo.ToList());
        }
        public ActionResult Vergrupo2(int id)
        {
            var alumnos = from a in db.Alumno where a.Id_Grupo == id select a;
            return View(alumnos.ToList());
        }
    }

}
