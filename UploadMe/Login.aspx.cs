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

    }
}