using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Rectangle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            int x = int.Parse(dai.Text);
            int y = int.Parse(rong.Text);
            int cv1 = (x + y) * 2;
            int dt1 = x * y;
            cv.Text = "Chu vi là " + cv1;
            dt.Text = "Diện tích la " + dt1;
            err.Text = "";
            

        }
        catch (Exception e1)
        {
             err.Text ="Có lỗi nhập dữ liệu: "+ e1.Message;
            cv.Text = "";
            dt.Text = "";
        }


    }
}