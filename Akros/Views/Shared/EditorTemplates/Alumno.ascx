<%@ Import Namespace="Akros"%>

<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<Akros.Models.Alumno>" %>
            
<script src="/Scripts/MicrosoftAjax.js" type="text/javascript"></script>
<script src="/Scripts/MicrosoftMvcAjax.js" type="text/javascript"></script>
<script src="/Scripts/MicrosoftMvcValidation.js" type="text/javascript"></script>

            <div class="editor-label">
                <%: Html.LabelFor(model => model.DNI) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.DNI) %>
                <%: Html.ValidationMessageFor(model => model.DNI) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Nombre) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Nombre) %>
                <%: Html.ValidationMessageFor(model => model.Nombre) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Apellido) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Apellido) %>
                <%: Html.ValidationMessageFor(model => model.Apellido) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Id_Actividad) %>
            </div>
            <div class="editor-field">
                <%: Html.DropDownList("Id_Actividad", new SelectList(ViewData["Actividades"] as IEnumerable,"Id_Actividad", "Detalle", Model.Id_Actividad)) %>
                <%: Html.ValidationMessageFor(model => model.Id_Actividad) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Id_Grupo) %>
            </div>
            <div class="editor-field">
                <%: Html.DropDownList("Id_Grupo", new SelectList(ViewData["Grupos"] as IEnumerable,"Id_Grupo", "Id_grupo", Model.Id_Grupo)) %>
                <%: Html.ValidationMessageFor(model => model.Id_Grupo) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Cuota) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Cuota) %>
                <%: Html.ValidationMessageFor(model => model.Cuota) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Nacimiento) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Nacimiento, new { @Value = Model.Nacimiento.ToString("d") }) %>
                <%: Html.ValidationMessageFor(model => model.Nacimiento) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Domicilio) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Domicilio) %>
                <%: Html.ValidationMessageFor(model => model.Domicilio) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Tel) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Tel) %>
                <%: Html.ValidationMessageFor(model => model.Tel) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.TelEmergencia) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.TelEmergencia) %>
                <%: Html.ValidationMessageFor(model => model.TelEmergencia) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Cel) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Cel) %>
                <%: Html.ValidationMessageFor(model => model.Cel) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.ObraSocial) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.ObraSocial) %>
                <%: Html.ValidationMessageFor(model => model.ObraSocial) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Mail) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Mail) %>
                <%: Html.ValidationMessageFor(model => model.Mail) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Antecedentes) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Antecedentes) %>
                <%: Html.ValidationMessageFor(model => model.Antecedentes) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.AntOpcional) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.AntOpcional) %>
                <%: Html.ValidationMessageFor(model => model.AntOpcional) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Certificado) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Certificado) %>
                <%: Html.ValidationMessageFor(model => model.Certificado) %>
            </div>
            


