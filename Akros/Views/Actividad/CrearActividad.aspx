<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Akros.Models.Actividad>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	CrearActividad
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>CrearActividad</h2>

    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>

        <fieldset>
            <legend>Ingrese los datos de la nueva actividad:</legend>
                    
            <div class="editor-label">
                <%: Html.Label("Nombre Actividad") %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Detalle) %>
                <%: Html.ValidationMessageFor(model => model.Detalle) %>
            </div>
            
            <p>
                <input type="submit" value="Crear" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%: Html.ActionLink("Volver a Actividades", "Index") %>
    </div>

</asp:Content>

