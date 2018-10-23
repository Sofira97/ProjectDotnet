using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string firstname = Session["name"].ToString();
            string lastname = Session["phone.no"].ToString();
            Label1.Text = "welcome " + name + " " + phone.no;
        }
    }
}