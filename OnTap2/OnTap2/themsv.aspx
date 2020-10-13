<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/DefaultPage.Master" CodeBehind="themsv.aspx.vb" Inherits="OnTap2.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="noidung" runat="server">
    <style>
        .button {
            width: 100%;
            height: 40px;
            border-radius: 10px;
        }

        table {
            width: 100% !important;
        }

        input {
            width: 100%;
        }

        .margin-top {
            margin-top: 5px !important;
        }
    </style>
    <h1>Thêm sinh viên</h1>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="masv" DataSourceID="SqlDataSource1" Width="289px" DefaultMode="Insert">
        <EditItemTemplate>
            <div class="row">
                <div class="col-lg-4">
                    <span>Mã sinh viên:</span>
                </div>
                <div class="col-lg-8 margin-top">
                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("masv") %>' />
                </div>

                <div class="col-lg-4">
                    <span>Họ tên:</span>
                </div>
                <div class="col-lg-8 margin-top">
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("hoten") %>' />
                </div>

                <div class="col-lg-4">
                    <span>Địa chỉ:</span>
                </div>
                <div class="col-lg-8 margin-top">
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("diachi") %>' />
                </div>

                <div class="col-lg-4">
                    <span>Điện thoại:</span>
                </div>
                <div class="col-lg-8 margin-top">
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("dienthoai") %>' />
                </div>

                <div class="col-lg-4">
                    Mã lớp:
                </div>
                <div class="col-lg-8 margin-top">
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("malop") %>' />
                </div>

                <div class="col-lg-4">
                    <span>Ảnh:</span>
                </div>
                <div class="col-lg-8 margin-top">
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("anh") %>' />
                </div>

                <div class="col-lg-12" style="margin-top: 20px">
                    <div class="col-lg-4">
                        <asp:Button ID="UpdateButton" CssClass="button btn-success" runat="server" CausesValidation="True" CommandName="Update" Text="Cập nhật" />
                    </div>
                    <div class="col-lg-4">
                        <asp:Button ID="UpdateCancelButton" CssClass="button btn-danger" runat="server" CausesValidation="False" CommandName="Cancel" Text="Hủy" />
                    </div>
                </div>
            </div>
        </EditItemTemplate>
        <InsertItemTemplate>
            <div class="row">
                <div class="col-lg-4">
                    <span>Họ tên:</span>
                </div>
                <div class="col-lg-8 margin-top">
                    <asp:TextBox ID="hotenTextBox" runat="server" Text='<%# Bind("hoten") %>' />
                </div>

                <div class="col-lg-4">
                    <span>Địa chỉ:</span>
                </div>
                <div class="col-lg-8 margin-top">
                    <asp:TextBox ID="diachiTextBox" runat="server" Text='<%# Bind("diachi") %>' />
                </div>

                <div class="col-lg-4">
                    <span>Điện thoại:</span>
                </div>
                <div class="col-lg-8 margin-top">
                    <asp:TextBox ID="dienthoaiTextBox" runat="server" Text='<%# Bind("dienthoai") %>' />
                </div>

                <div class="col-lg-4">
                    <span>Mã lớp:</span>
                </div>
                <div class="col-lg-8 margin-top">
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("malop") %>' />
                </div>

                <div class="col-lg-4">
                    <span>Ảnh:</span>
                </div>
                <div class="col-lg-8 margin-top">
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("anh") %>' />
                </div>

                <div class="col-lg-12" style="margin-top: 20px">
                    <div class="col-lg-4">
                        <asp:Button ID="InsertButton" CssClass="button btn-success" runat="server" CausesValidation="True" CommandName="Insert" Text="Thêm" />
                        <%

                            %>
                    </div>
                    <div class="col-lg-4">
                        <asp:Button ID="InsertCancelButton" CssClass="button btn-danger" runat="server" CausesValidation="False" CommandName="Cancel" Text="Hủy" />
                    </div>
                </div>
            </div>
        </InsertItemTemplate>
        <ItemTemplate>
            <div class="row">
                <div class="col-lg-4">
                    <span>Mã sinh viên:</span>
                </div>
                <div class="col-lg-8 margin-top">
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("masv") %>' />
                </div>

                <div class="col-lg-4">
                    <span>Họ tên:</span>
                </div>
                <div class="col-lg-8 margin-top">
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("hoten") %>' />
                </div>

                <div class="col-lg-4">
                    <span>Địa chỉ:</span>
                </div>
                <div class="col-lg-8 margin-top">
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("dienthoai") %>' />
                </div>

                <div class="col-lg-4">
                    <span>Điện thoại:</span>
                </div>
                <div class="col-lg-8 margin-top">
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("dienthoai") %>' />
                </div>

                <div class="col-lg-4">
                    <span>Mã lớp:</span>
                </div>
                <div class="col-lg-8 margin-top">
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("malop") %>' />
                </div>

                <div class="col-lg-4">
                    <span>Ảnh:</span>
                </div>
                <div class="col-lg-8 margin-top">
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("anh") %>' />
                </div>
            </div>
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sinhviendb2ConnectionString %>" SelectCommand="SELECT * FROM [sinhvien]" DeleteCommand="DELETE FROM [sinhvien] WHERE [masv] = @masv" InsertCommand="INSERT INTO [sinhvien] ([hoten], [diachi], [dienthoai], [malop], [anh]) VALUES (@hoten, @diachi, @dienthoai, @malop, @anh)" UpdateCommand="UPDATE [sinhvien] SET [hoten] = @hoten, [diachi] = @diachi, [dienthoai] = @dienthoai, [malop] = @malop, [anh] = @anh WHERE [masv] = @masv">
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
