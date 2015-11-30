using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UploadMe
{
    public partial class Upload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Unnamed_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void photoButton_Click(object sender, EventArgs e)
        {

        }

        protected void submitButton_Click(object sender, EventArgs e)
        {

        }

        protected void logoutButton_Click(object sender, EventArgs e)
        {
            Session["Login"] = "0";
        }
    }
}