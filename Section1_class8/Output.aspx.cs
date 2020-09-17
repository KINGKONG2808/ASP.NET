using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Output : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string ht = Request.Form["ht"];
        string gt = Request.Form["gt"];
        string que = Request.Form["que"];
        string mh = Request.Form["mh"];

        //string ht = Request.QueryString["ht"];
        //string gt = Request.QueryString["gt"];
        //string que = Request.QueryString["que"];
        //string mh = Request.QueryString["mh"];

        Response.Write("<h2>Bạn vừa gửi đi thông tin:</h2>");
        Response.Write("Họ tên:" + ht + "<br />");
        Response.Write("Giới tính:" + gt + "<br />");
        Response.Write("Quê quán:" + que + "<br />");
        Response.Write("Môn học:" + mh + "<br />");
        //Nếu từ trang input2.aspx gửi sang thì
        CheckBoxList ck = (CheckBoxList)PreviousPage.FindControl("mh");
        string s = "";
        if (ck != null)
        {
            foreach (ListItem x in ck.Items)
            {
                if (x.Selected)
                    s += x.Text+" ";
            }
            Response.Write("Môn học:" + s + "<br />");

        }

    }
}