<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Akros.Models.Actividad>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	BorrarActividad1
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Borrar</h2>

    <h3>Esta seguro que desea borrar esta Actividad?</h3>
    
    <% using (Html.BeginForm())
       { %>
    <div class="editor-label">
    <%: Html.LabelFor(model => model.Id_Actividad)%>
    </div>
    <div>
    <%: Html.DisplayTextFor(Model => Model.Id_Actividad)%>
    </div>

    <div class="editor-label">
    <%: Html.LabelFor(model => model.Detalle)%>
    </div>
    <div class="editor-field">
    <%: Html.DisplayTextFor(model => model.Detalle)%>
    </div>

    <p>
    <input type="submit" value="Borrar" /> |
    <%: Html.ActionLink("Volver a Actividades", "Index")%>
    </p>
    <%} %>

</asp:Content>
