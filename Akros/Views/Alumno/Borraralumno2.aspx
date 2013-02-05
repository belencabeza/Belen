<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Akros.Models.Alumno>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Borrar
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Borrar</h2>

    <h3>Esta seguro que desea borrar este alumno?</h3>
    
    <% using (Html.BeginForm()) { %>
    <div class="editor-label">
    <%: Html.LabelFor(model => model.DNI) %>
    </div>
    <div>
    <%: Html.DisplayTextFor(Model=>Model.DNI) %>
    </div>

    <div class="editor-label">
    <%: Html.LabelFor(model => model.Nombre) %>
    </div>
    <div class="editor-field">
    <%: Html.DisplayTextFor(model => model.Nombre) %>
    </div>

    <div class="editor-label">
    <%: Html.LabelFor(model => model.Apellido) %>
    </div>
    <div class="editor-field">
    <%: Html.DisplayTextFor(model => model.Apellido) %>
    </div>
    <p>
    <input type="submit" value="Borrar" /> |
    <%: Html.ActionLink("Volver a Alumnos", "Index") %>
    </p>
    <% } %>    

</asp:Content>
