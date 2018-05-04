using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PayPal.Api;

namespace Prototype
{
    public partial class CompletePurchase : System.Web.UI.Page
    {
        private List<Transaction> transactionList;
        private Payer payer;
        private RedirectUrls redirectUrls;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConfirmPurchase_Click(object sender, EventArgs e)
        {
            var clientId = "AbqiuFV1ukGZgaOM5JptXU145nRBvws7lXxY6hWuo8T4FbM2PaLb6k2Lsfvn-KfZKW1FKWLK7XDYGIlv";
            var clientSecret = "EPSwMD3XrzgJSD87WeeGYy6pC1T9nvo5Rd2qdXDvtLg8OmFm2whNXjFIO8oEPzaBPQrBeiJ7o6cxg6NI";
            var sdkConfig = new Dictionary<string, string>
            {
                {"mode","sandbox" },
                {"clientId","clientId" },
                {"clientSecret", "clientSecret" }
            };

            var accessToken = new OAuthTokenCredential(clientId, clientSecret, sdkConfig).GetAccessToken();
            var apiContext = new APIContext(accessToken);
            apiContext.Config = sdkConfig;

            try
             {
                 var payment = Payment.Create(apiContext, new Payment
                 {
                     intent = "sale",
                     payer = payer,
                     transactions = transactionList,
                     redirect_urls = redirectUrls
                 });

                 Session["paymentId"] = payment.id;

                 foreach(var link in payment.links)
                 {
                     if(link.rel.ToLower().Trim().Equals("approval_url"))
                     {
                         Response.Redirect(link.href);
                     }
                 }
             }
             catch (PaymentsExeception ex)
             {
                 Response.Write(ex.Response);
             }

            /*
            var paymentId = Session["paymentId"].ToString();

             if(!String.IsNullOrEmpty(paymentId))
             {
                 var payment = new Payment() { id = paymentId };

                 var payerId = Request.QueryString["PayerID"].ToString();
                 var paymentExecution = new PaymentExecution() { payer_id = payerId };

                 var executedPayment = payment.Execute(apiContext, paymentExecution);

                 LitInformation.Text = "<p> Your Order has been Completed </p>";
                 btnConfirmPurchase.Visible = false;
             }
               */


        }
    }
}