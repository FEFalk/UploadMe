﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UploadMe
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            /*Checks if the username and pass is correct*/
            if (txtUser.Text == "tulip" && txtPass.Text == "123")
            {
                Session["Login"] = "1";
                Response.Redirect("Upload.aspx");
            }
            else
            {
                lblTest.Text = "The information in not correct!";
            }
            
        }

        protected void homeButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}