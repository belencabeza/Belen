<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Akros.Models.Alumno>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Editar
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Editar un Alumno</h2>
    <% using (Html.BeginForm()) {%>
    <%: Html.ValidationSummary(true) %>
        Ingrese el numero de documento del alumno que desea editar.
        <div class="editor-field">
        <%: Html.TextBoxFor(a => a.DNI) %>
        <p>
        <input type="submit" value="Buscar" />
        </p>
        </div>
    <% } %>
     <div>
    <%: Html.ActionLink("Volver a Alumnos", "Index")%></li>
    </div>
</asp:Content>