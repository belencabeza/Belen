<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Akros.Models.Alumno>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Vergrupo2
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Vergrupo2</h2>

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
                Id_Grupo
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
                Detalles
            </th>
            <th>
                Certificado
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Editar", "Editaralumno2", new { id=item.DNI }) %> |
                <%: Html.ActionLink("Borrar", "Borraralumno2", new { id=item.DNI })%>
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
                <%: item.Actividad.Detalle %>
            </td>
            <td>
                <%: item.Id_Grupo %>
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
            <td>
                <%: item.Certificado %>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Crear un Alumno", "Crearalumno") %>
    </p>

    <div>
    <%: Html.ActionLink("Volver a Alumnos", "Index")%>
    </div>
</asp:Content>

