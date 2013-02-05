<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Bienvenido a la Seccion Actividades</h2>
    <h3>Que desea realizar?</h3>
    
    <div id="Contenido">
    <ul id="listacontenido">
    
    <li><%: Html.ActionLink("Crear nueva actividad", "CrearActividad", "Actividad")%></li>
    <li><%: Html.ActionLink("Editar una actividad", "EditarActividad", "Actividad")%></li>
    <li><%: Html.ActionLink("Borrar una actividad", "BorrarActividad", "Actividad")%></li>
    <li><%: Html.ActionLink("Mostrar todas las actividades", "MostrarActividad", "Actividad")%></li>

    </ul>
    </div>

</asp:Content>
