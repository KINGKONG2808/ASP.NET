<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Muahang.aspx.cs" Inherits="Muahang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Giỏ hàng của bạn</h2>
            <%

                if (Request.Form["action"] != null)
                {
                    string act = Request.Form["action"];
                    if (act == "cuahang")
                    {
                        string hang = Request.Form["hanghoa"];

                        List<string> ds = null;

                        if (Session["giohang"] == null)
                        {
                            ds = new List<string>();
                            ds.Add(hang);
                        }
                        else
                        {
                            ds = (List<string>)Session["giohang"];
                            if (ds.Contains(hang))
                            {
                                Response.Write("<br />Bạn đã mua hàng này rồi<br />");
                            }
                            else
                                ds.Add(hang);

                        }
                        Session["giohang"] = ds;

                        ds = (List<string>)Session["giohang"];

                        foreach (string item in ds)
                        {
                            Response.Write(item + "<br />");
                        }

                        Response.Write("<br /><br/> Số lượng sản phẩm bạn mua là :  " + ds.Count);

                    }
                }


            %>
            <br />
            <a href="Cuahang.aspx">Mua tiếp</a><br />
            <br />
            &nbsp;<asp:Button ID="btn2" Text="Xóa giỏ hàng" runat="server" OnClick="btn2_Click" ValidationGroup="p" />

            <br />
            <br />

        </div>
    </form>
</body>
</html>
