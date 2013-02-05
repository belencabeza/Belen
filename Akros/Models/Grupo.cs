using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;

namespace Akros.Models
{
    [MetadataType(typeof(GrupoMetadata))]
    public partial class Grupo
    {
        public class GrupoMetadata
        {
            [Required(ErrorMessage = "Los dias son obligatorios")]
            public string Dias { get; set; }

            [Required(ErrorMessage = "El Horario es obligatorio")]
            public string Horario { get; set; }

            [DisplayName("Actividad")]
            public int Id_Actividad { get; set; }
        }
    }
}