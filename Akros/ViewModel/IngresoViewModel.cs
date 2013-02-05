using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Akros.Models;

namespace Akros.ViewModel
{
    public class IngresoViewModel
    {
        public Ingreso Ingreso { get; set; }
        public List<Actividad> Actividades { get; set; }
        public List<FormaPago> FormaPagos { get; set; }
    }
}