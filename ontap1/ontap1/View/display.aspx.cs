using ontap1.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ontap1.View
{
    public partial class display : System.Web.UI.Page
    {
        public List<Student> studentList;

        protected void Page_Load(object sender, EventArgs e)
        {
            List<Student> listSession = (List<Student>)Session["students"];
            if (listSession == null)
            {
                studentList = new List<Student>();
            } else
            {
                studentList = new List<Student>(listSession);
            }
        }
    }
}