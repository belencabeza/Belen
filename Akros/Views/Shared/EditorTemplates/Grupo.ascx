<%@ Import Namespace="Akros"%>

<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<Akros.Models.Grupo>" %>

<script src="/Scripts/MicrosoftAjax.js" type="text/javascript"></script>
<script src="/Scripts/MicrosoftMvcAjax.js" type="text/javascript"></script>
<script src="/Scripts/MicrosoftMvcValidation.js" type="text/javascript"></script>
            
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Dias) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Dias) %>
                <%: Html.ValidationMessageFor(model => model.Dias) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Horario) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Horario) %>
                <%: Html.ValidationMessageFor(model => model.Horario) %>
            </div>
            
             <div class="editor-label">
                <%: Html.LabelFor(model => model.Id_Actividad) %>
            </div>
            <div class="editor-field">
                <%: Html.DropDownList("Id_Actividad", new SelectList(ViewData["Actividades"] as IEnumerable,"Id_Actividad", "Detalle", Model.Id_Actividad)) %>
                <%: Html.ValidationMessageFor(model => model.Id_Actividad) %>
           