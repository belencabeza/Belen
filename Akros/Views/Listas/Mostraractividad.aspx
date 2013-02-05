<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Akros.Models.Alumno>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Mostraractividad
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

     <h2>Mostrar Lista de Actividad</h2>
    Ingrese el nombre de la actividad que desea para ver la lista de alumnos:
    <% using (Html.BeginForm()) {%>
    <%: Html.ValidationSummary(true) %>
        <div class="editor-field">
        <%: Html.TextBoxFor(a => a.Actividad) %>
        <p>
        <input type="submit" value="Mostrar" />
        </p>
        </div>
    <% } %>

</asp:Content>
