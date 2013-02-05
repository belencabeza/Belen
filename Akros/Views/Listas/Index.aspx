<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Mostrar
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Mostrar</h2>
    Elija la opcion que desea:
    <div id="Contenido">
    <ul id="listacontenido">
    <li><%: Html.ActionLink("Mostrar un alumno", "Mostraralumno", "Listas")%></li>
    <li><%: Html.ActionLink("Mostrar todos los alumnos", "Mostraralumnos", "Listas")%></li>
    <li><%: Html.ActionLink("Mostrar alumnos de determinado grupo", "Mostrargrupo", "Listas")%></li>
    <li><%: Html.ActionLink("Mostrar alumnos de determinada actividad", "Mostraractividad", "Listas")%></li>
    </ul>
    </div>
</asp:Content>
