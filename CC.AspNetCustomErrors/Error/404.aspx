<%@ Page Title="404 Not Found" Language="C#" EnableViewState="false" MasterPageFile="~/Error/Error.Master" %>

<script language="c#" runat="server">
    public void Page_Load(object sender, EventArgs e)
    {
        Response.StatusCode = (int)System.Net.HttpStatusCode.NotFound;
    }
</script>
<asp:Content ContentPlaceHolderID="Content" runat="server">
    <h1><%: Page.Title %></h1>
    <p>The requested resource could not be found. It may have been moved or may not exist. You may want to <a href="javascript:history.back()">go back</a> and try again, or go to the <a href="<%: ResolveUrl("~/") %>">home page</a>.</p>
</asp:Content>
