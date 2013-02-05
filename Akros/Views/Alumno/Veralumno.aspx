<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Akros.Models.Alumno>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Mostraralumno
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Ver un determinado alumno</h2>
    Escriba el numero de documento del alumno que desea ver:
    <% using (Html.BeginForm()) {%>
    <%: Html.ValidationSummary(true) %>
        <div class="editor-field">
        <%: Html.TextBoxFor(a => a.DNI) %>
        <p>
        <input type="submit" value="Mostrar" />
        </p>
        </div>
    <% } %>
    <div>
    <%: Html.ActionLink("Volver a Alumnos", "Index")%></li>
    </div>
    

</asp:Content>
