using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;

namespace Akros.Models
{
    [MetadataType(typeof(AlumnoMetadata))]
    public partial class Alumno
    {
        public class AlumnoMetadata
        {
            [Required(ErrorMessage="El DNI es obligatorio")]
            [Range(0,99999999, ErrorMessage="Ingrese un valor valido para el DNI")]
            public int DNI {get; set;}

            [Required(ErrorMessage = "El Nombre es obligatorio")]
            public string Nombre { get; set; }

            [Required(ErrorMessage = "El Apellido es obligatorio")]
            public string Apellido { get; set; }

            [DisplayName("Actividad")]
            public int Id_Actividad { get; set; }

            [DisplayName("Grupo")]
            public int Id_Grupo { get; set; }

            [Required(ErrorMessage = "El Valor de la Cuota es obligatorio")]
            public int Cuota { get; set; }

            [Required(ErrorMessage = "La fecha de Nacimiento es obligatoria")]
            [DataType(DataType.Date, ErrorMessage = "La fecha debe ser dia/mes/año")]
            public DateTime Nacimiento { get; set; }


        }
    }
}