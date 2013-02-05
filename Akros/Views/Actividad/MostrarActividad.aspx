<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Akros.Models.Actividad>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	MostrarActividad
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>MostrarActividad</h2>

    <table>
        <tr>
            <th></th>
            <th>
                Id_Actividad
            </th>
            <th>
                Detalle
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Edit", "EditarActividad2", new { id=item.Id_Actividad }) %> |
                <%: Html.ActionLink("Borrar", "BorrarActividad", new { id=item.Id_Actividad })%>
            </td>
            <td>
                <%: item.Id_Actividad %>
            </td>
            <td>
                <%: item.Detalle %>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Crear nueva actividad", "CrearActividad") %>
    </p>
    <div>
        <%: Html.ActionLink("Volver a Actividades", "Index") %>
    </div>

</asp:Content>

