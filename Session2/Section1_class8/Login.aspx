<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h2>Login</h2>

         <%Response.Write("<br /> count = " + Session["count"]); %>

        Username: 
        <asp:TextBox id="user" runat="server" />
        <br />
        <br />
        Password:
        <asp:TextBox id="pass" runat="server" TextMode="Password" />
        <br />
        <br />
        <asp:Button ID="btn1" Text="Login" runat="server" PostBackUrl="~/Control.aspx"/>
        <asp:Button ID="btn2" Text="Cancel" runat="server" />

    
    </div>
    </form>
</body>
</html>
