﻿using System;
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

        protected void logoutButton_Click(object sender, EventArgs e)
        {
            /*The user logs out and when clicking on upload you get redirected to login screen again*/
            Session["Login"] = "0";
            Response.Redirect("Home.aspx");
        }
        
        protected void uploadButton_Click(object sender, EventArgs e)
        {
            /*  Default save directory will be a folder called "Data" inside our project-folder root.
                appPath gets the absolute path to our project folder                                 */
            string saveDir = @"\Data\";
            string appPath = Request.PhysicalApplicationPath;
            
            if (FileUpload1.HasFile)
            {
                // Set the maximum size of the file
                int fileSize = FileUpload1.PostedFile.ContentLength;
                if (fileSize < 9000000)
                {
                    // Get the name of the file to upload and add it to the absolute save-path.
                    string savePath = appPath + saveDir +
                    Server.HtmlEncode(FileUpload1.FileName);

                    /*  The SaveAs method saves the uploaded file to the specified path.      
                        If a file with the same name already exists in the specified path,  
                        the uploaded file overwrites it.                                    */
                    FileUpload1.SaveAs(savePath);

                    //Sets a hiddenfield's value to the filename for use in the next page.
                    photoPath2.Value = Server.HtmlEncode(FileUpload1.FileName);

                    /*  Get the file extention to see if the file is a video or an image. 
                        Set hiddenfield-value and thumbnail visibility accordingly        */
                    string fileExtention = System.IO.Path.GetExtension(FileUpload1.FileName);
                    if (fileExtention == ".mp4")
                    {
                        Hiddenfield1.Value = "1";
                        videoSourceThumbnail.Visible = true;
                        videoSourceThumbnail.Src = saveDir + photoPath2.Value;
                        uploadedImage.Visible = false;
                    }
                    else
                    {
                        videoSourceThumbnail.Visible = false;
                        Hiddenfield1.Value = "0";
                        uploadedImage.ImageUrl = saveDir + photoPath2.Value;
                        uploadedImage.Visible = true;
                    }

                    
                }
                else
                {
                    // Notify the user why their file was not uploaded.
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Your file was not uploaded because it exceeds the 9 MB size limit.')", true);
                }
            }
        }

        protected void homeButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void photoPath2_ValueChanged(object sender, EventArgs e)
        {
        }
    }
}