<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="test1.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calculator quadratic equation 2</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
    <script>
        /*function refreshObj() {
            $("#form1").submit();
        }*/

        function validate() {
            var validateRegex = /^[0-9]+$/;
            var a = $("#a").val();
            var b = $("#b").val();
            var c = $("#c").val();
            if (!a.match(validateRegex) || !b.match(validateRegex) || !c.match(validateRegex)) {
                $("#err").text("Input element wrong type value, you have to enter number type and must enter all fields !");
                /*$("#form1").submit(function () {
                    return false;
                });*/
            } else {
                $("#err").text("");
                //refreshObj();
            }
        }

        $(document).ready(function () {
            $("#a").focus();
            $("#a").attr("placeholder", "a");
            $("#b").attr("placeholder", "b");
            $("#c").attr("placeholder", "c");
            $("#result").attr("placeholder", "result");
        });
    </script>
    <style>
        .calculator {
            margin: 100px;
            text-align: center;
            border: 1px solid #000000;
            border-radius: 5px;
            max-width: 900px;
        }
    </style>
    <div class="calculator">
        <form id="form1" runat="server">
            <asp:Label runat="server" Text="Calculator quadratic equation 2" />
            <br />
            <asp:Label ID="err" runat="server" Style="color: red;" />
            <div style="display: flex; margin: 10px 50px;">
                <asp:TextBox ID="a" runat="server" />
                <span>&nbsp;x<sup>2</sup>&nbsp;+&nbsp;</span>
                <asp:TextBox ID="b" runat="server" />
                <span>&nbsp;x&nbsp;+&nbsp;</span>
                <asp:TextBox ID="c" runat="server" />
                <span>&nbsp;=&nbsp;</span>
                <asp:TextBox ID="result" runat="server" disabled />
            </div>
            <asp:Button ID="getResult" runat="server" Text="Calculator" OnClientClick="validate();" OnClick="getResult_Click" Style="margin: 10px; width: 100px; color: white; background-color: limegreen; border-radius: 5px" />
            <asp:Button ID="refresh" runat="server" Text="Refresh" OnClick="refresh_Click" Style="margin: 10px; width: 100px; color: white; background-color: orange; border-radius: 5px" />
        </form>
        <sub>Vu Van Hung - 2017601398</sub>
    </div>
</body>
</html>
