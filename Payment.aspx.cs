using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Data;
public partial class Payment : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-77O54LKK; Initial Catalog=ONLINE_SHOPPING; User id=sa;password=123");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            SqlDataAdapter da = new SqlDataAdapter(@"Select sum(B.Item_Price)Total,Registration.Address
From tblAddtoCart A
Inner Join tblItem_Details B on A.Item_details_Id=B.Item_details_Id
Inner Join Registration on Registration.Reg_Id=a.Reg_Id
where a.Reg_Id='" + Session["Reg_Id"].ToString() + @"'
group by Registration.Address", con);
            DataSet ds = new DataSet();
            da.Fill(ds);

            Label2.Text="Address: "+ ds.Tables[0].Rows[0]["Address"].ToString();
            Label1.Text = "Total: " + ds.Tables[0].Rows[0]["Total"].ToString();
            Session["Cartid"] ="Cart_Id";
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
 

        SqlCommand cmd = new SqlCommand(@"Update tblAddtoCart set Payment='Y',PaymentDate='" + System.DateTime.Now.ToShortDateString() + "',PaymentOption='" + RadioButtonList1.SelectedItem.Text + "' where Reg_Id='" + Session["Reg_Id"].ToString() + "'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("confirmation.aspx");

        
    }

}