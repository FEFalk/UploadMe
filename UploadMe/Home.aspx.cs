using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UploadMe
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*Checks if the user is logged in or not*/
            if(Session["Login"]==null){
                Session["Login"] = "0";
            }
            if ((string)Session["Login"] == "0")
            {
                loginButton.Visible = true;
                logoutButton.Visible = false;
            }
            else
            {
                loginButton.Visible = false;
                logoutButton.Visible = true;
            }
            
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            /*If the user is logged in the upload button goes to the upload page, if not then to login page*/
            if((string)Session["Login"] == "1")
                Response.Redirect("Upload.aspx");  
            else
                Response.Redirect("Login.aspx");  
        }

        protected void loginButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void logoutButton_Click(object sender, EventArgs e)
        {
            Session["Login"] = "0";
            Response.Redirect("Home.aspx");
        }
    }
}