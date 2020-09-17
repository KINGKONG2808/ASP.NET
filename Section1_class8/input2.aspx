<%@ Page Language="C#" AutoEventWireup="true" CodeFile="input2.aspx.cs" Inherits="input2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="header" Text="Thông tin sinh viên" ForeColor="blue"
                Font-Size="Larger" runat="server" />
            <br />
            <br />
            Họ tên
            <asp:TextBox ID="ht" runat="server" />
            <br />
            <br />
            Giới tính
            <asp:RadioButtonList ID="gt" runat="server">
                <asp:ListItem>Nam</asp:ListItem>
                <asp:ListItem>Nu</asp:ListItem>

            </asp:RadioButtonList><br />
            Quê quán<br />
            <asp:DropDownList ID="que" runat="server">
                <asp:ListItem>Hà nội</asp:ListItem>
                <asp:ListItem>Hải phòng</asp:ListItem>
                <asp:ListItem>Quảng ninh</asp:ListItem>

            </asp:DropDownList>
            <br />
            <br />
            Môn học
            <br />
            <asp:CheckBoxList ID="mh" runat="server">
                <asp:ListItem>Lập trình windows</asp:ListItem>
                <asp:ListItem>Lập trình Web</asp:ListItem>
                <asp:ListItem>Hệ quản trị csdl</asp:ListItem>
            </asp:CheckBoxList>
            <br />
            <br />
            <br />
            <asp:Button ID="bn1" Text="Gửi đi" runat="server" PostBackUrl="~/Output.aspx"/>
            <asp:Button ID="bnt2" Text="Bỏ qua" runat="server" />

        </div>
    </form>
</body>
</html>
