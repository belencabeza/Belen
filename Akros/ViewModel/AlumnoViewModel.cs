using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Akros.Models;

namespace Akros.ViewModel
{
    public class AlumnoViewModel
    {
        public Alumno Alumno { get; set; }
        public List<Actividad> Actividades { get; set; }
        public List<Grupo> Grupos { get; set; }

    }
}