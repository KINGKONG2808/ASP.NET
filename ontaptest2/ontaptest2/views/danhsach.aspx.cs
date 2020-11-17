using ontaptest2.model;
using ontaptest2.util;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ontaptest2.views
{
    public partial class danhsach : System.Web.UI.Page
    {
        datautil data = new datautil();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                hienThi();
            }
        }

        private void hienThi()
        {
            GridView1.DataSource = data.dsSinhVien();
            DataBind();
        }

        protected void Sua_Click(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "sua")
            {
                int m = Convert.ToInt16(e.CommandArgument);
                sinhvien sv = data.getSinhVien(m);
                Session["sv"] = sv;
                Response.Redirect("suaSv.aspx");
            }
        }

        protected void Xoa_Click(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "xoa")
            {
                int m = Convert.ToInt16(e.CommandArgument);
                data.xoaSv(m);
                hienThi();
            }
        }
    }
}