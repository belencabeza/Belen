<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Akros.ViewModel.GrupoViewModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Creargrupo
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Crear un nuevo grupo</h2>

    <% Html.EnableClientValidation(); %>
    <% using (Html.BeginForm()) {%>

        <fieldset>
            <legend>Fields</legend>
            <%: Html.EditorFor(model => model.Grupo, new {Actividades=Model.Actividades})%>
            <p>
                <input type="submit" value="Create" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%: Html.ActionLink("Back to List", "Index") %>
    </div>

</asp:Content>

