using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prototype.admin
{
    public partial class UploadImage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string productID = Request.QueryString["id"];

            string filename = productID + ".jpg";
            CurrentImage.ImageUrl = "~/ProductImages/" + filename;
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            string productID = Request.QueryString["id"];

            string filename = productID + ".jpg";
            string saveLocation = Server.MapPath("~/ProductImages/" + filename);

            imageFileUploadControl.SaveAs(saveLocation);
        }
    }
}