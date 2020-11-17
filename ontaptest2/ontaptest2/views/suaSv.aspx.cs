using ontaptest2.util;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ontaptest2.model;

namespace ontaptest2.views
{
    public partial class suaSv : System.Web.UI.Page
    {
        datautil data = new datautil();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                sinhvien sv = (sinhvien)Session["sv"];
                txtmasv.Text = sv.MaSv.ToString();
                txthoten.Text = sv.HoTen.ToString();
                txtdiachi.Text = sv.DiaChi.ToString();
                txtdienthoai.Text = sv.DienThoai.ToString();
                ddlmalop.DataSource = data.dsLopHoc();
                ddlmalop.DataTextField = "tenlop";
                ddlmalop.DataValueField = "malop";
                DataBind();
                ddlmalop.SelectedValue = sv.MaLop.ToString();
            }
        }

        protected void btnSua_Click(object sender, EventArgs e)
        {
            try
            {
                sinhvien sv = new sinhvien();
                sv.MaSv = int.Parse(txtmasv.Text);
                sv.HoTen = txthoten.Text;
                sv.DiaChi = txtdiachi.Text;
                sv.DienThoai = txtdienthoai.Text;
                sv.MaLop = int.Parse(ddlmalop.SelectedValue);
                data.suaSv(sv);
                msg.Text = "Cap nhat thanh cong";
            } catch (Exception ex)
            {
                msg.Text = "Co loi xay ra" + ex;
            }
        }
    }
}