using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Akros.Models;

namespace Akros.ViewModel
{
    public class GrupoViewModel
    {
        public Grupo Grupo { get; set; }
        public List<Actividad> Actividades { get; set; }
    }
}