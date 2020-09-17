using ontap1.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ontap1
{
    public partial class index : System.Web.UI.Page
    {
        public List<Student> students;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["students"] == null)
            {
                students = new List<Student>();
            } else
            {
                students = (List<Student>) Session["students"];
            }
        }

        public Student getData()
        {
            string id = idStudent.Text;
            string name = nameStuent.Text;
            string age = ageStudent.Text;
            string address = addressStudent.Text;

            return new Student(long.Parse(id), name, int.Parse(age), address);
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Student student = getData();
            students.Add(student);
            Session["students"] = students;
            Response.Redirect("../View/display.aspx");
        }

        protected void btnRefresh_Click(object sender, EventArgs e)
        {
            idStudent.Text = "";
            nameStuent.Text = "";
            ageStudent.Text = "";
            addressStudent.Text = "";
        }
    }
}