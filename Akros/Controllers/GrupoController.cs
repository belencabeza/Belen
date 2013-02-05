using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Akros.Models;
using Akros.ViewModel;

namespace Akros.Controllers
{
    public class GrupoController : Controller
    {
        //
        // GET: /Grupo/
        AkrosEntities6 db = new AkrosEntities6();

        //Index
        public ActionResult Index()
        {
            return View();
        }

        //Crear grupo
        public ActionResult Creargrupo()
        {
            var viewModel = new GrupoViewModel
            {
                Grupo = new Grupo(),
                Actividades = db.Actividad.ToList()
            };
            return View(viewModel);
        }
        [HttpPost]
        public ActionResult Creargrupo(Grupo Grupo)
        {
            try
            {
                db.AddToGrupo(Grupo);
                db.SaveChanges();
                return RedirectToAction("Index", "Grupo");
            }
            catch
            {
                ViewData["Message"] = "Error: Ingresa los datos del grupo";
                var viewModel = new GrupoViewModel
                {
                    Grupo = new Grupo(),
                    Actividades = db.Actividad.ToList()
                };
                return View(viewModel);
            }
        }

        //Editar un grupo
        public ActionResult Editargrupo()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Editargrupo(int Id_Grupo)
        {
            return RedirectToAction("Editargrupo2", "Grupo", new { id = Id_Grupo });
        }
        public ActionResult Editargrupo2(int id)
        {
            var viewModel = new GrupoViewModel
            {
                Grupo = db.Grupo.Single(a => a.Id_Grupo == id),
                Actividades = db.Actividad.ToList()
            };
            return View(viewModel);
        }
        [HttpPost]
        public ActionResult Editargrupo2(int id, FormCollection formValues)
        {
            var grupo = db.Grupo.Single(a => a.Id_Grupo == id);
            try
            {
                UpdateModel(grupo, "Grupo");
                db.SaveChanges();
                return RedirectToAction("Index", "Grupo");
            }
            catch
            {
                var viewModel = new GrupoViewModel
                {
                    Grupo = db.Grupo.Single(a => a.Id_Grupo == id),
                    Actividades = db.Actividad.ToList()
                };
                return View(viewModel);
            }
        }

        //Borrar Grupo
        public ActionResult BorrarGrupo()
        {
            return View();
        }
        [HttpPost]
        public ActionResult BorrarGrupo(int Id_Grupo)
        {
            return RedirectToAction("BorrarGrupo2", "Grupo", new { ID_grupo = Id_Grupo });
        }
        public ActionResult BorrarGrupo2(int ID_grupo)
        {
            var grupo = db.Grupo.Single(a => a.Id_Grupo == ID_grupo);
            return View(grupo);
        }
        [HttpPost]
        public ActionResult BorrarGrupo2(int ID_grupo, string Confirmar)
        {
            var grupo = db.Grupo.Single(a => a.Id_Grupo == ID_grupo);
            db.DeleteObject(grupo);
            db.SaveChanges();

            return RedirectToAction("Index", "Grupo");
        }

        //Mostrar grupos
        public ActionResult Mostrargrupo()
        {
            var grupo = db.Grupo;
            return View(grupo.ToList());
        }


    }
}
