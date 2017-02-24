using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace S5_Prj_DrApt_Dung_Fatsah_v02
{
    public partial class SiteMaster : MasterPage
    {
        private const string AntiXsrfTokenKey = "__AntiXsrfToken";
        private const string AntiXsrfUserNameKey = "__AntiXsrfUserName";
        private string _antiXsrfTokenValue;

        protected void Page_Init(object sender, EventArgs e)
        {
            // The code below helps to protect against XSRF attacks
            var requestCookie = Request.Cookies[AntiXsrfTokenKey];
            Guid requestCookieGuidValue;
            if (requestCookie != null && Guid.TryParse(requestCookie.Value, out requestCookieGuidValue))
            {
                // Use the Anti-XSRF token from the cookie
                _antiXsrfTokenValue = requestCookie.Value;
                Page.ViewStateUserKey = _antiXsrfTokenValue;
            }
            else
            {
                // Generate a new Anti-XSRF token and save to the cookie
                _antiXsrfTokenValue = Guid.NewGuid().ToString("N");
                Page.ViewStateUserKey = _antiXsrfTokenValue;

                var responseCookie = new HttpCookie(AntiXsrfTokenKey)
                {
                    HttpOnly = true,
                    Value = _antiXsrfTokenValue
                };
                if (FormsAuthentication.RequireSSL && Request.IsSecureConnection)
                {
                    responseCookie.Secure = true;
                }
                Response.Cookies.Set(responseCookie);
            }

            Page.PreLoad += master_Page_PreLoad;
        }

        protected void master_Page_PreLoad(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Set Anti-XSRF token
                ViewState[AntiXsrfTokenKey] = Page.ViewStateUserKey;
                ViewState[AntiXsrfUserNameKey] = Context.User.Identity.Name ?? String.Empty;
            }
            else
            {
                // Validate the Anti-XSRF token
                if ((string)ViewState[AntiXsrfTokenKey] != _antiXsrfTokenValue
                    || (string)ViewState[AntiXsrfUserNameKey] != (Context.User.Identity.Name ?? String.Empty))
                {
                    throw new InvalidOperationException("Validation of Anti-XSRF token failed.");
                }
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

            LblHello.Visible = false;
            LblYourIdIs.Visible = false;

            if (Convert.ToString(Session["fname"]) == "admin")
            {
                Panel1.Visible = true;
                Panel2.Visible = false;
                Panel3.Visible = false;
                LblHello.Visible = true;
                LblYourIdIs.Visible = true;
                LblName.Text = Session["fname"].ToString();
                LblId.Text = Session["fname"].ToString();
            }
            else if (Convert.ToString(Session["fname"]) == "doc")
            {
                Panel1.Visible = false;
                Panel2.Visible = true;
                Panel3.Visible = false;
                LblHello.Visible = true;
                LblYourIdIs.Visible = true;
                LblName.Text = Session["DName"].ToString();
                LblId.Text = Session["DId"].ToString();
            }
            else if (Convert.ToString(Session["fname"]) == "user")
            {
                Panel1.Visible = false;
                Panel2.Visible = false;
                Panel3.Visible = true;
                LblHello.Visible = true;
                LblYourIdIs.Visible = true;
                LblName.Text = Session["name"].ToString();
                LblId.Text = Session["id"].ToString();
                
            }
            else
            {
                Panel1.Visible = false;
                Panel2.Visible = false;
                Panel3.Visible = false;
            }
        }
    }
}