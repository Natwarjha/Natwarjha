using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Data;
public partial class AdminLogin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-77O54LKK; Initial Catalog=ONLINE_SHOPPING; User id=sa;password=123");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from tblAdmin where AdminUserName='" + TextBox7.Text + "' and AdminUserPassword='" + TextBox8.Text + "'", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Session["AdminId"] = ds.Tables[0].Rows[0]["AdminId"].ToString();
            Session["AdminName"] = TextBox7.Text;

            Response.Redirect("AdminWelcome.aspx");

        }
        else
        {
            Label1.Text = "Invalid User Name and Passowrd!";
        }
    }
}