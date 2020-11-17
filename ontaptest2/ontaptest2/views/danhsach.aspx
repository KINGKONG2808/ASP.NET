<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="danhsach.aspx.cs" Inherits="ontaptest2.views.danhsach" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Danh sách sinh viên</h2>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField DataField="masv" HeaderText="Mã sinh viên" />
                    <asp:BoundField DataField="hoten" HeaderText="Họ tên" />
                    <asp:BoundField DataField="diachi" HeaderText="Địa chỉ" />
                    <asp:BoundField DataField="dienthoai" HeaderText="Điện thoại" />
                    <asp:BoundField DataField="malop" HeaderText="Mã lớp" />
                    <asp:TemplateField HeaderText="Sửa">
                        <ItemTemplate>
                            <asp:Button ID="sua" CommandName="sua" CommandArgument='<%#Bind("masv")%>' Text="Sửa" OnCommand="Sua_Click" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Xóa">
                        <ItemTemplate>
                            <asp:Button ID="xoa" CommandName="xoa" CommandArgument='<%#Bind("masv")%>' Text="Xóa" OnCommand="Xoa_Click" OnClientClick="return confirm('Bạn có chắc chắn muốn xóa')" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <p>
                <asp:Button ID="btn1" Text="Thêm sinh viên" runat="server" PostBackUrl="~/views/themsv.aspx" />
            </p>
        </div>
    </form>
</body>
</html>
