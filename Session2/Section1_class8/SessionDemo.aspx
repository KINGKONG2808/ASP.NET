<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SessionDemo.aspx.cs" Inherits="SessionDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <%
            Response.Write("Session id: " + Session.SessionID);

            if (Session["count"] == null)
            {
                Session["count"] = 1;
            }
            else
            {
                int x = Convert.ToInt32(Session["count"]);
                x++;
                Session["count"] = x;

            }

            //Session.Remove("count");
            //Session["count"] = null;
             
            Response.Write("<br /> count = " + Session["count"]);

            //bien pham vi application
              if (Application["acount"] == null)
            {
                Application["acount"] = 1;
            }
            else
            {
                int x = Convert.ToInt32(Application["acount"]);
                x++;
                Application["acount"] = x;

            }
            Response.Write("<br /> <br /> aplication count = " + Application["acount"]);

            %>
        <br />
    <a href="Login.aspx">Login</a>
        <br />
        <a href="Rectangle.aspx">Tinh toan</a>

    </div>
    </form>
</body>
</html>
