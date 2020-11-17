<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="suaSv.aspx.cs" Inherits="ontaptest2.views.suaSv" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sửa sinh viên</title>
</head>
<body>
    <form id="form1" runat="server">
         <div>
            <h2>Sửa sinh viên</h2>
            <asp:Table ID="Table1" runat="server">
                <asp:TableRow>
                    <asp:TableCell>Mã sinh viên</asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="txtmasv" Enabled="false" runat="server" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Họ tên</asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="txthoten" runat="server" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Địa chỉ</asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="txtdiachi" runat="server" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Điện thoại</asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="txtdienthoai" runat="server" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Mã lớp</asp:TableCell>
                    <asp:TableCell>
                        <asp:DropDownList ID="ddlmalop" runat="server" size="1" />
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            
            <asp:Button ID="btnSua" runat="server" Text="Sửa sinh viên" OnClick="btnSua_Click" />
            <asp:Button ID="btnBoQua" runat="server" Text="Bỏ qua" />

            <p>
                <asp:Label ID="msg" runat="server" Font-Italic="true" />
            </p>

            <p>
                <asp:Button ID="btn2" Text="Danh sách sinh viên" runat="server" PostBackUrl="~/views/danhsach.aspx" />
            </p>
        </div>
    </form>
</body>
</html>
