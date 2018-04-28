using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prototype
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSendEmail_Click(object sender, EventArgs e)
        {
            SmtpClient smtpClient = new SmtpClient();
            MailMessage msg = new MailMessage("Sirnmin1996@gmail.com", "Sirnmin1996@gmail.com");
            msg.Subject = txtSubject.Text;
            msg.Body = txtBody.Text;

            smtpClient.Host = "smtp.gmail.com";
            smtpClient.Port = 587;
            smtpClient.EnableSsl = true;

            System.Net.NetworkCredential credential = new System.Net.NetworkCredential("Sirnmin1996@gmail.com", "adidas58662");
            smtpClient.Credentials = credential;

            try
            {
                smtpClient.Send(msg);
                LitBox.Text = "<p>Success, mail have been sent using SMTP with secure connection and credentials</p>";
            }
            catch(Exception ex)
            {
                LitBox.Text = "<p>Send failed:" + ex.Message + "." +ex.InnerException + "<p/>";
            }

        }

       
    }
}