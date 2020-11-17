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
    public partial class themsv : System.Web.UI.Page
    {
        datautil data = new datautil();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlmalop.DataSource = data.dsLopHoc();
                ddlmalop.DataTextField = "tenlop";
                ddlmalop.DataValueField = "malop";
                DataBind();
            }
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            try
            {
                sinhvien sv = new sinhvien();
                sv.HoTen = txthoten.Text;
                sv.DiaChi = txtdiachi.Text;
                sv.DienThoai = txtdienthoai.Text;
                sv.MaLop = Int32.Parse(ddlmalop.SelectedValue);

                data.themSv(sv);
                msg.Text = "Ok rồi dmm";
            } catch (Exception e1) {
                msg.Text = "Lỗi rồi dmm: " + e1.Message;
            }
        }
    }
}