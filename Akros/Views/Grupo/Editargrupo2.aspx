<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Akros.ViewModel.GrupoViewModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Editargrupo2
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Editargrupo2</h2>

    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>
        
        <fieldset>
            <legend>Fields</legend>
            <%: Html.EditorFor(model => model.Grupo, new {Actividades=Model.Actividades})%>
            
            <p>
                <input type="submit" value="Guardar" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%: Html.ActionLink("Volver a Grupos", "Index") %>
    </div>

</asp:Content>

