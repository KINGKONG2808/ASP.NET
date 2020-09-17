<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Rectangle.aspx.cs" Inherits="Rectangle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server"
            Text="Tính diện tích và chu vi hình chữ nhật" Font-Bold="True" Font-Names="#9Slide05 Lobster" Font-Size="X-Large" ForeColor="#FF3300"></asp:Label>
    
        <br />
        <br />
        Chiều dài:
        <asp:TextBox ID="dai" runat="server"></asp:TextBox>
        <br />
        <br />
        Chiều rộng:
        <asp:TextBox ID="rong" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Tính toán" OnClick="Button1_Click" Width="124px" />
        <br />
        <br />

        <asp:Label ID="err" runat="server" Text="" /><br />
        
        <asp:Label ID="cv" runat="server" Text="" /><br />
        <asp:Label ID="dt" runat="server" Text="" /><br />

    
    </div>
    </form>
</body>
</html>
