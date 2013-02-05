<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Akros.Models.Grupo>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Vergrupo
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Ver alumnos de un grupo:</h2>
    <div>
    Seleccione el grupo:
    </div>
    <p>

    <table>
        <tr>
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
            <th></th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
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
            <td>
                <%: Html.ActionLink("Seleccionar", "Vergrupo2", new { id=item.Id_Grupo }) %>
            </td>
        </tr>
    
    <% } %>

    </table>
    </p>
    <div>
    <%: Html.ActionLink("Volver a Alumnos", "Index")%>
    </div>
</asp:Content>

