using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UploadMe
{
    public partial class Response : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.Form["photoPath2"] != "" && Request.Form["Hiddenfield1"] == "0")
            {
                uploadedImage.ImageUrl = "Data/" + Request.Form["photoPath2"];
                uploadedImage.Visible = true;

            }
            else if(Request.Form["Hiddenfield1"] == "1")
            {
                videoSource.Src = "Data/" + Request.Form["photoPath2"];
                videoSource.Visible = true;
            }
        }

        protected void homeButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}