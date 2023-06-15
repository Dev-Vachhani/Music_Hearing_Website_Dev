using System;

namespace Projects
{
    public partial class Music : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["music"].ToString() == "false")
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session["music"] = "false";
        }
    }
}