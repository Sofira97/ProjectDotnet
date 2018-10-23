using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        int clickscount = 0;
        

        

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["firstname"] = TextBox1.Text;
            Session["lastname"] = TextBox2.Text;
            Response.Redirect("WebForm2.aspx?");


        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            Response.Write("Hello " + TextBox1.Text);
        }

        protected void Male_CheckedChanged(object sender, EventArgs e)
        {
            Response.Write(" Male has been selected");
        }

        protected void Female_CheckedChanged(object sender, EventArgs e)
        {
            Response.Write(" Female has been selected");
        }

        protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
