<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Tainguyen.aspx.cs" Inherits="Tainguyen" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <%
         //   if (Session["login"]!=null)
            
            if (Request.Form["user"] != null)
            {

                Response.Write("Welcome " + Request.Form["user"]);

            %>

    <h2>Đây là nguồn tài nguyên</h2>
        Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas porttitor congue massa. Fusce posuere, magna sed pulvinar ultricies, purus lectus malesuada libero, sit amet commodo magna eros quis urna. Nunc viverra imperdiet enim. <br />
Fusce est. Vivamus a tellus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin pharetra nonummy pede. <br />
Mauris et orci. Aenean nec lorem. In porttitor. Donec laoreet nonummy augue. 
        <%
            }
            else
            {
                Response.Write("Ban chua dang nhap !");
            }

            %>

    </div>
    </form>
</body>
</html>
