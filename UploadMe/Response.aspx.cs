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
            /*Display the uploaded picture or video*/

            /*  If we have uploaded a photo from the previous page, make the image object visible in the result-page.
                If we uploaded a video from the previous page, make the video-object visible in the result-page.
                (Both objects are NOT visible by default, which means if both statements are false, we show 
                no image nor video in the result-page.                                                                */
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