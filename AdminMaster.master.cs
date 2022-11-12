using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text ="Login Date & Time: "+ System.DateTime.Now.ToString();
        if (Session["AdminId"] == null)
        {
            Panel1.Visible = false;
        }
        else
        {
            LblWelcomeMsg.Text = "Welcome: " + Session["AdminName"].ToString();
            Panel1.Visible = true;
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("AdminLogin.aspx");
    }
}
