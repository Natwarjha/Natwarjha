using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Data;
public partial class Signup : System.Web.UI.Page

{
    SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-77O54LKK; Initial Catalog=ONLINE_SHOPPING; User id=sa;password=123");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        try
        {

            SqlCommand cmd = new SqlCommand("Insert into Registration(Name, Email_Id, Mobile_no, UserName, Password, confirom_password)values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
        }
        catch (Exception ex)
        {
            Label1.Text = "Unexpected error occured. Please contact IT Team.";
            //Label1.Text = ex.ToString();
        }
       
    }    
    
   


    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from Registration where UserName='" + TextBox7.Text + "' and Password='" + TextBox8.Text + "'", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Session["Reg_Id"] = ds.Tables[0].Rows[0]["Reg_Id"].ToString();
            
                Response.Redirect("home.aspx");
           
        }
        else
        {
            Label1.Text = "Sorry Invalid User Name and Passowrd";
        }
    }
}
