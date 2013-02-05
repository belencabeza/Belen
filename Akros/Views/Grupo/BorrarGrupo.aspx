<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Akros.Models.Grupo>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	BorrarGrupo
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Borrar un grupo</h2>
    <% using (Html.BeginForm()) {%>
    <%: Html.ValidationSummary(true) %>
        Ingrese el numero de id del grupo que desea borrar.
        <div class="editor-field">
        <%: Html.TextBoxFor(a => a.Id_Grupo) %>
        <p>
        <input type="submit" value="Buscar" />
        </p>
        </div>
    <% } %>
     <div>
    <%: Html.ActionLink("Volver a Grupos", "Index")%>
    </div>

</asp:Content>
