<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Akros.Models.Actividad>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Veractividad
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Ver usuarios de una Actividad</h2>
    <div>
    Seleccione la actividad:
    </div>
    <p>
    <table>
        <tr>
            <th>
                Id Actividad
            </th>
            <th>
                Detalle
            </th>
            <th>
            </th>
        </tr>
         <% foreach (var item in Model) { %>
        <tr>
            <td>
                <%: item.Id_Actividad %>
            </td>
            <td>
                <%: item.Detalle %>
            </td>
            <td><%: Html.ActionLink("Seleccionar", "Veractividad2", new {id=item.Id_Actividad})%></td>
        </tr>
        <%} %>
    </table>
    </p>
       
 
     <div>
    <%: Html.ActionLink("Volver a Alumnos", "Index")%></li>
    </div>
</asp:Content>
