using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
public partial class carttable : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-77O54LKK; Initial Catalog=ONLINE_SHOPPING; User id=sa;password=123");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            fillgv();
           
        }

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Remove")
        {
            SqlCommand cmd = new SqlCommand("delete from tblAddtoCart where  Cart_ID='" + e.CommandArgument.ToString() + "'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            fillgv();
            Response.Redirect("carttable.aspx");

        }
    }

    protected void fillgv()
    {
        SqlDataAdapter da1 = new SqlDataAdapter(@"
Select b.Item_Name,b.Item_Price,b.Item_image,a.Cart_ID
From tblAddtoCart A
Inner Join tblItem_Details B on A.Item_details_Id=B.Item_details_Id
where a.Reg_Id='" + Session["Reg_Id"].ToString() + "' and payment is null", con);
        DataSet ds1 = new DataSet();
        da1.Fill(ds1);
        if (ds1.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = ds1;
            GridView1.DataBind();
            Button1.Visible = true;
        }
        else
        {
            Button1.Visible = false;
        
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //if (Session["Reg_Id"] == null)
            //{
                Response.Redirect("Payment.aspx");
            //}
    }
}