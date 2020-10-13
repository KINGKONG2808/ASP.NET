<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/DefaultPage.Master" CodeBehind="danhsach.aspx.vb" Inherits="OnTap2.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="noidung" runat="server">
    <h1>Danh sách sinh viên</h1>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="masv" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="masv" HeaderText="Mã sinh viên" InsertVisible="False" ReadOnly="True" SortExpression="masv" />
            <asp:BoundField DataField="hoten" HeaderText="Họ tên" SortExpression="hoten" />
            <asp:BoundField DataField="diachi" HeaderText="Địa chỉ" SortExpression="diachi" />
            <asp:BoundField DataField="dienthoai" HeaderText="Điện thoại" SortExpression="dienthoai" />
            <asp:BoundField DataField="malop" HeaderText="Mã lớp" SortExpression="malop" />
            <asp:BoundField DataField="anh" HeaderText="Ảnh" SortExpression="anh" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" CancelText="Hủy" DeleteText="Xóa" EditText="Sửa" HeaderText="Thao tác" InsertText="Thêm" NewText="Mới" SelectText="Chọn" UpdateText="Sửa" />
        </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sinhviendb2ConnectionString %>" DeleteCommand="DELETE FROM [sinhvien] WHERE [masv] = @masv" InsertCommand="INSERT INTO [sinhvien] ([hoten], [diachi], [dienthoai], [malop], [anh]) VALUES (@hoten, @diachi, @dienthoai, @malop, @anh)" SelectCommand="SELECT * FROM [sinhvien]" UpdateCommand="UPDATE [sinhvien] SET [hoten] = @hoten, [diachi] = @diachi, [dienthoai] = @dienthoai, [malop] = @malop, [anh] = @anh WHERE [masv] = @masv">
    <DeleteParameters>
        <asp:Parameter Name="masv" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="hoten" Type="String" />
        <asp:Parameter Name="diachi" Type="String" />
        <asp:Parameter Name="dienthoai" Type="String" />
        <asp:Parameter Name="malop" Type="Int32" />
        <asp:Parameter Name="anh" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="hoten" Type="String" />
        <asp:Parameter Name="diachi" Type="String" />
        <asp:Parameter Name="dienthoai" Type="String" />
        <asp:Parameter Name="malop" Type="Int32" />
        <asp:Parameter Name="anh" Type="String" />
        <asp:Parameter Name="masv" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
