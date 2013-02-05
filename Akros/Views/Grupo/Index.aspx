<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Bienvenido a la Seccion Grupos</h2>
    <h3>Que desea realizar?</h3>
    
    <div id="Contenido">
    <ul id="listacontenido">
    
    <li><%: Html.ActionLink("Crear nuev grupo", "Creargrupo", "Grupo")%></li>
    <li><%: Html.ActionLink("Editar un grupo", "Editargrupo", "Grupo")%></li>
    <li><%: Html.ActionLink("Borrar un grupo", "Borrargrupo", "Grupo")%></li>
    <li><%: Html.ActionLink("Mostrar todos los grupos", "Mostrargrupo", "Grupo")%></li>

    </ul>
    </div>

</asp:Content>
