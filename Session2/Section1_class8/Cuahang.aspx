<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cuahang.aspx.cs" Inherits="Cuahang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <%--Bài tập 2: Bài toán mua hàng trên mạng.
Thiết kế 1 form có 1 danh sách các mặt hàng, 
        khi người dùng chọn mua 1 mặt hàng thì 
        thêm vào giỏ hàng nếu hàng đó chưa mua, 
        còn đã có hàng đó rồi thì cộng thêm số lượng. 
        Khi mua hàng xong thì hiển thị số lượng các hàng hóa đã mua.--%>

    <h1>Danh sách hàng hóa trong cửa hàng</h1>
        <asp:DropDownList ID="hanghoa" runat="server" size="5">
            <asp:ListItem>Điện thoại Realme 6 pro</asp:ListItem>
            <asp:ListItem>Điện thoại Oppo</asp:ListItem>
            <asp:ListItem>Điện thoại Iphone 8</asp:ListItem>
            <asp:ListItem>Thẻ nhớ 64GB</asp:ListItem>
            <asp:ListItem>Kính cường lực 10D</asp:ListItem>             

        </asp:DropDownList>
        <br />
        <br />
        <asp:Button ID="mua" Text="Mua hang" runat="server" PostBackUrl="Muahang.aspx" />
        <input type="hidden" name="action"   value="cuahang" />
    </div>
    </form>
</body>
</html>
