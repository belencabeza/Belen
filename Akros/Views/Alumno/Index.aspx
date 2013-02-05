<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Bienvenido a la Seccion de Alumnos</h2>
    <div id="pregunta">Qué desea realizar?</div>

    <div id="Contenido">
    <ul id="listacontenido">
    
    <li><%: Html.ActionLink("Crear Alumno", "Crearalumno", "Alumno")%></li>
    <li><%: Html.ActionLink("Editar Alumno", "Editaralumno", "Alumno")%></li>
    <li><%: Html.ActionLink("Borrar Alumno", "Borraralumno", "Alumno")%></li>
    <li><%: Html.ActionLink("Ver datos de un alumno", "Veralumno", "Alumno")%></li>
    <li><%: Html.ActionLink("Ver todos los alumnos", "Veralumnos", "Alumno")%></li>
    <li><%: Html.ActionLink("Ver todos los alumnos de una actividad", "Veractividad", "Alumno")%></li>
    <li><%: Html.ActionLink("Ver todos los alumnos de un grupo", "Vergrupo", "Alumno")%></li>
    <li><%: Html.ActionLink("Ver cuotas de un alumno", "Vercuotas", "Alumno")%></li>
    </ul>
    </div>
</asp:Content>
