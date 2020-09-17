<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="display.aspx.cs" Inherits="ontap1.View.display" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Display list</title>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <style>
        table, td, th {
            border: 1px solid black;
        }

        table {
            border-collapse: collapse;
            width: 100%;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1 class="text-center">STUDENT LIST</h1>
            </div>

            <% if (studentList.Count == 0)
                { %>
            <p>Empty student</p>
            <% }
                else
                { %>
            <table class="text-center">
                <thead>
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">NAME</th>
                        <th scope="col">AGE</th>
                        <th scope="col">ADDRESS</th>
                    </tr>
                </thead>

                <tbody>
                    <% foreach (ontap1.Model.Student st in studentList)
                        { %>
                    <tr>
                        <td><%= st.Id %></td>
                        <td><%= st.Name %></td>
                        <td><%= st.Age %></td>
                        <td><%= st.Address %></td>
                    </tr>
                    <% } %>
                </tbody>
            </table>
            <%  } %>
        </div>
        <form id="formBack" runat="server">
            <div class="row">
                <div class="col-md-5"></div>
                <div class="col-md-3">
                    <asp:Button ID="btnBack" runat="server" Text="Continue Add" PostBackUrl="~/View/index.aspx" CssClass="btn-success" style="margin-top: 10px" />
                </div>
            </div>
        </form>
    </div>
</body>
</html>
