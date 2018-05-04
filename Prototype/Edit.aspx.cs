﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;

namespace Prototype
{
    public partial class Edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void linkBtn_Click(object sender, EventArgs e)
        {
            FileUpload file = (FileUpload)FormView1.FindControl("UploadFile") as FileUpload;
            if (file.HasFile)
            {
                file.SaveAs(Server.MapPath("~/ProductImages/" + file.FileName + ".jpg"));
                Label lbl = (Label)FormView1.FindControl("lblUploadImg") as Label;
                lbl.Text = "~/ProductImages/" + file.FileName + ".jpg";
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            HttpContext.Current.GetOwinContext().Authentication.SignOut(DefaultAuthenticationTypes.ApplicationCookie);
            Response.Redirect("~/Login.aspx");
        }
    }
    }
