using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace test1
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        private string calculator(float a, float b, float c)
        {
            if (a == 0)
            {
                return "This is not quadratic equation 2";
            }
            float delta = b * b - 4 * a * c;
            if (delta == 0)
            {
                return "x1 = x2 = " + (-b/(2*a));
            } else
            {
                if (delta < 0)
                {
                    return "The equation has no solution";
                } else
                {
                    return "x1 = " + ((-b - Math.Sqrt(delta)) / (2 * a)) + " and x2 = " + ((-b + Math.Sqrt(delta)) / (2 * a));
                }
            }
        }

        protected void getResult_Click(object sender, EventArgs e)
        {
            try
            {
                result.Text = calculator(float.Parse(a.Text), float.Parse(b.Text), float.Parse(c.Text));
            } catch (Exception)
            {
                result.Text = "Wrong number format";
            }
        }

        protected void refresh_Click(object sender, EventArgs e)
        {
            a.Text = "";
            b.Text = "";
            c.Text = "";
            result.Text = "";
        }
    }
}