<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="ontap1.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create new student</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <style>
        input {
            width: 100% !important;
        }

        .btn-area {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="row">
            <form id="form1" runat="server">
                <h1 class="text-center">ADD STUDENTS</h1>
                <div class="row">
                    <div class="col-md-2">
                        <asp:Label ID="Label1" runat="server" Text="ID" />
                    </div>
                    <div class="col-md-10">
                        <asp:TextBox ID="idStudent" runat="server" placeholder="enter the ID student" />
                    </div>
                    <div class="col-md-2">
                        <asp:Label ID="Label2" runat="server" Text="Name" />
                    </div>
                    <div class="col-md-10">
                        <asp:TextBox ID="nameStuent" runat="server" placeholder="enter the name student" />
                    </div>
                    <div class="col-md-2">
                        <asp:Label ID="Label3" runat="server" Text="Age" />
                    </div>
                    <div class="col-md-10">
                        <asp:TextBox ID="ageStudent" runat="server" placeholder="enter the age student" />
                    </div>
                    <div class="col-md-2">
                        <asp:Label ID="Label4" runat="server" Text="Address" />
                    </div>
                    <div class="col-md-10">
                        <asp:TextBox ID="addressStudent" runat="server" placeholder="enter the address student" />
                    </div>
                </div>
                <div class="row btn-area">
                    <div class="col-md-2">
                        <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" CssClass="btn-success" />
                    </div>
                    <div class="col-md-2">
                        <asp:Button ID="btnRefresh" runat="server" Text="Refresh" OnClick="btnRefresh_Click" CssClass="btn-danger" />
                    </div>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
