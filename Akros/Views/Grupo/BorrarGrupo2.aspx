<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Akros.Models.Grupo>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	BorrarGrupo2
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Borrar un Grupo</h2>

    <h3>Esta seguro que desea borrar este grupo?</h3>
    
    <% using (Html.BeginForm()) { %>
    <div class="editor-label">
    <%: Html.LabelFor(model => model.Id_Grupo) %>
    </div>
    <div>
    <%: Html.DisplayTextFor(Model=>Model.Id_Grupo) %>
    </div>

    <div class="editor-label">
    <%: Html.LabelFor(model => model.Dias) %>
    </div>
    <div class="editor-field">
    <%: Html.DisplayTextFor(model => model.Dias) %>
    </div>

    <div class="editor-label">
    <%: Html.LabelFor(model => model.Horario) %>
    </div>
    <div class="editor-field">
    <%: Html.DisplayTextFor(model => model.Horario) %>
    </div>

    <div class="editor-label">
    <%: Html.Label("Actividad") %>
    </div>
    <div class="editor-field">
    <%: Html.DisplayTextFor(model => model.Actividad.Detalle) %>
    </div>

    <p>
    <input type="submit" value="Borrar" /> |
    <%: Html.ActionLink("Volver a Grupo", "Index") %>
    </p>
    <% } %>

</asp:Content>
