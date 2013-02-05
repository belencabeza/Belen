<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Akro's
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Bienvenido a Akros</h2>
    <div id="pregunta">Qué desea realizar?</div>

    <div id="Contenido">
    <ul id="listacontenido">
    <li><%: Html.ActionLink("Seccion Alumnos", "Index", "Alumno")%></li>
    <li><%: Html.ActionLink("Seccion Actividades", "Index", "Actividad") %></li>
    <li><%: Html.ActionLink("Seccion Grupos", "Index", "Grupo") %></li>
    <li><%: Html.ActionLink("Seccion Ingresos", "Index", "Ingreso") %></li>
    </ul>
    </div>

</asp:Content>
