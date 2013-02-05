<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Akros.Models.Actividad>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	EditarActividad1
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>EditarActividad1</h2>

    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>
        
        <fieldset>
            <legend>Fields</legend>
            
            <div class="editor-label">
                <%: Html.Label("Id Actividad") %>
            </div>
            <div class="editor-field">
                <%: Html.DisplayTextFor(model => model.Id_Actividad) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Detalle) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Detalle) %>
                <%: Html.ValidationMessageFor(model => model.Detalle) %>
            </div>
            
            <p>
                <input type="submit" value="Save" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%: Html.ActionLink("Volver a Actividades", "Index") %>
    </div>

</asp:Content>

