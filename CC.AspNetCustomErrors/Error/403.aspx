<%@ Page Title="403 Access Denied" Language="C#" EnableViewState="false" MasterPageFile="~/Error/Error.Master" %>

<script language="c#" runat="server">
    public void Page_Load(object sender, EventArgs e)
    {
        Response.StatusCode = (int)System.Net.HttpStatusCode.Forbidden;
    }
</script>
<asp:Content ContentPlaceHolderID="Content" runat="server">
    <h1><%: Page.Title %></h1>
    <p>You do not have permission to access the requested resource. You may go to the <a href="<%: ResolveUrl("~/") %>">home page</a>.</p>
</asp:Content>
