using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Data;
public partial class Tracking : System.Web.UI.Page   
{
    SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-77O54LKK; Initial Catalog=ONLINE_SHOPPING; User id=sa;password=123");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            SqlDataAdapter da = new SqlDataAdapter("select Reg_Id,UserName from Registration", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            ds.Tables[0].Rows.Add("0","---Select ----");
            
            DataView dv = new DataView();
           dv = ds.Tables[0].DefaultView;
           dv.Sort = "Reg_Id";
            
            DropDownList1.DataSource = dv;
            DropDownList1.DataTextField = "UserName";
            DropDownList1.DataValueField = "Reg_Id";
            DropDownList1.DataBind();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        
            
            
                SqlCommand cmd = new SqlCommand("Insert into tblTracking(Reg_Id, Location, trackDate)values('" + DropDownList1.SelectedValue + "','" + TextBox1.Text + "','" + TextBox2.Text + "')", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                TextBox1.Text = "";
                TextBox2.Text = "";
            
            
            
               
            
        
    }
    
    
}