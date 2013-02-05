<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Akros.Models.Alumno>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Mostrargrupo
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Mostrar Lista de Grupo</h2>
    Escriba el numero de grupo que desea seleccionar para ver la lista de alumnos:
    <% using (Html.BeginForm()) {%>
    <%: Html.ValidationSummary(true) %>
        <div class="editor-field">
        <%: Html.TextBoxFor(a => a.Grupo) %>
        <p>
        <input type="submit" value="Mostrar" />
        </p>
        </div>
    <% } %>

</asp:Content>
