using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class MasterPage : System.Web.UI.MasterPage
{
    SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-77O54LKK; Initial Catalog=ONLINE_SHOPPING; User id=sa;password=123");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Reg_Id"] != null)
        {
            //Panel1.Visible = false;
            SqlDataAdapter da1 = new SqlDataAdapter("select COUNT (Item_details_Id)Item_details_Id from tblAddtoCart where Reg_Id='"+Session ["Reg_Id"].ToString ()+"' and payment is null", con);
            DataSet ds1 = new DataSet();
            da1.Fill(ds1);
            LinkButton1.Text ="Cart: "+ ds1.Tables[0].Rows[0]["Item_details_Id"].ToString();
        }
        else
        {
            //Panel1.Visible = true;
            LinkButton1.Text = "";
        }
        //if (Session["Reg_Id"] = null)
        //{
        //    Panel1.Visible = false;
        //}
        //else
        //{
        //    Panel1.Visible = true;
        //}

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("carttable.aspx");
    }
}
