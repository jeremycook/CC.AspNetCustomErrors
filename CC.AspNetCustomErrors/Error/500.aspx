<%@ Page Title="500 Error" Language="C#" EnableViewState="false" MasterPageFile="~/Error/Error.Master" %>

<script language="c#" runat="server">
    public void Page_Load(object sender, EventArgs e)
    {
        Response.StatusCode = (int)System.Net.HttpStatusCode.InternalServerError;
    }
</script>
<asp:Content ContentPlaceHolderID="Content" runat="server">
    <h1><%: Page.Title %></h1>
    <p>Something unexpected happened. You may want to <a href="javascript:history.back()">go back</a> and try again, or go to the <a href="<%: ResolveUrl("~/") %>">home page</a>.</p>
</asp:Content>
