<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Akros.Models.Alumno>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Mostraractividadlista
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Lista de alumnos de la actividad Seleccionada</h2>

    <table>
        <tr>
            <th></th>
            <th>
                DNI
            </th>
            <th>
                Nombre
            </th>
            <th>
                Apellido
            </th>
            <th>
                Actividad
            </th>
            <th>
                Grupo
            </th>
            <th>
                Cuota
            </th>
            <th>
                Nacimiento
            </th>
            <th>
                Domicilio
            </th>
            <th>
                Tel
            </th>
            <th>
                TelEmergencia
            </th>
            <th>
                Cel
            </th>
            <th>
                ObraSocial
            </th>
            <th>
                Mail
            </th>
            <th>
                Antecedentes
            </th>
            <th>
                AntOpcional
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Edit", "Edit", new { id=item.DNI }) %> |
                <%: Html.ActionLink("Details", "Details", new { id=item.DNI })%> |
                <%: Html.ActionLink("Delete", "Delete", new { id=item.DNI })%>
            </td>
            <td>
                <%: item.DNI %>
            </td>
            <td>
                <%: item.Nombre %>
            </td>
            <td>
                <%: item.Apellido %>
            </td>
            <td>
                <%: item.Actividad %>
            </td>
            <td>
                <%: item.Grupo %>
            </td>
            <td>
                <%: item.Cuota %>
            </td>
            <td>
                <%: String.Format("{0:d}", item.Nacimiento) %>
            </td>
            <td>
                <%: item.Domicilio %>
            </td>
            <td>
                <%: item.Tel %>
            </td>
            <td>
                <%: item.TelEmergencia %>
            </td>
            <td>
                <%: item.Cel %>
            </td>
            <td>
                <%: item.ObraSocial %>
            </td>
            <td>
                <%: item.Mail %>
            </td>
            <td>
                <%: item.Antecedentes %>
            </td>
            <td>
                <%: item.AntOpcional %>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Create New", "Create") %>
    </p>
    <%: Html.ActionLink("Volver a Listas", "Index", "Listas")%>

</asp:Content>

