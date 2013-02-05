<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Akros.ViewModel.AlumnoViewModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Crearalumno
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Crear Nuevo Alumno</h2>
    
    <% Html.EnableClientValidation(); %>
    <% using (Html.BeginForm()) {%>

        <fieldset>
            <legend>Fields</legend>
            <%: Html.EditorFor(model => model.Alumno, new {Actividades=Model.Actividades, Grupos=Model.Grupos })%>
            <p>
                <input type="submit" value="Create" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%: Html.ActionLink("Volver a Alumnos", "Index") %>
    </div>

</asp:Content>

