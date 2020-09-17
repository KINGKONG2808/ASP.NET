using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Control : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string u = Request.Form["user"];
        string p = Request.Form["pass"];
        if (u == p)
        {
            Server.Transfer("Tainguyen.aspx");//forward
          //  Session["login"] = true;
          //  Session["user"] = u;
            
        }
        else
        {
            Response.Redirect("Error.aspx");
        }
    }
}