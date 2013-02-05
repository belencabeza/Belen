<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Akros.Models.Grupo>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Mostrargrupo
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Mostrargrupo</h2>

    <table>
        <tr>
            <th></th>
            <th>
                Id Grupo
            </th>
            <th>
                Dias
            </th>
            <th>
                Horario
            </th>
            <th>
                Actividad
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Editar", "Editargrupo2", new { id=item.Id_Grupo }) %>
                <%: Html.ActionLink("Borrar", "Borrargrupo", new { id=item.Id_Grupo })%>
            </td>
            <td>
                <%: item.Id_Grupo %>
            </td>
            <td>
                <%: item.Dias %>
            </td>
            <td>
                <%: item.Horario %>
            </td>
            <td>
                <%: item.Actividad.Detalle %>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Crear nuevo grupo", "Creargrupo") %>
    </p>
    <p>
    <%: Html.ActionLink("Volver a Grupos", "Index") %>
    </p>

</asp:Content>

