<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Akros.Models.Actividad>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	BorrarActividad
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Borrar Actividad</h2>
    <% using (Html.BeginForm()) {%>
    <%: Html.ValidationSummary(true) %>
    <div>
    Ingrese el Id de la Actividad que desea Borrar
    </div>
        <div class="editor-field">
        <%: Html.TextBoxFor(a => a.Id_Actividad) %>
        <p>
        <input type="submit" value="Buscar" />
        </p>
        </div>
    <% } %>

    <div>
        <%: Html.ActionLink("Volver a Actividades", "Index") %>
    </div>

</asp:Content>
