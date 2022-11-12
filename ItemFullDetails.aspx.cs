using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using System.Data;
using System.Data.SqlClient;
public partial class ItemFullDetails : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-77O54LKK; Initial Catalog=ONLINE_SHOPPING; User id=sa;password=123");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from tblItem_Details where Item_details_Id='" + Session["ItemDetailsId"] .ToString ()+ "'", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            DataList1.DataSource = ds;
            DataList1.DataBind();
            Panel1.Visible = false;
        }
    }


    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        
        if (e.CommandName == "View")
        {
           // Session["Item_details_Id"] = e.CommandArgument.ToString();
            if (Session["Reg_Id"] == null)
            {
                Response.Redirect("signup.aspx");
            }
            else
            {
                SqlCommand cmd = new SqlCommand("insert into tblAddtoCart (Item_details_Id, Reg_Id) values('" + e.CommandArgument.ToString() + "','" + Session["Reg_Id"].ToString() + "')", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                //Session["Reg"] = e.CommandArgument.ToString();
                //Response.Write(Session["Reg_Id"].ToString());
                //Response.Write(e.CommandArgument.ToString());
                Response.Redirect("carttable.aspx");
            }

        }
        if (e.CommandName == "Acart")
        {
            if (Session["Reg_Id"] == null)
            {
                Response.Redirect("signup.aspx");
                
            }
            else
            {
                SqlCommand cmd = new SqlCommand("insert into tblAddtoCart (Item_details_Id, Reg_Id) values('" + e.CommandArgument.ToString() + "','" + Session["Reg_Id"].ToString() + "')", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("carttable.aspx");
                //Session["Reg"] = e.CommandArgument.ToString();
                //Response.Write(Session["Reg_Id"].ToString());
                //Response.Write(e.CommandArgument.ToString());
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["Reg_Id"] == null)
        {
            Label1.Text = "Please login to write your review.";
            //TextBox1.Visible = true;
            //Button1.Visible = true;
            
        }
        else
        {
            //TextBox1.Visible = false; ;
            //Button1.Visible = false;
            SqlCommand cmd = new SqlCommand("Insert into tblReview(Item_details_Id,Reg_Id,write_Review)values('" + Session["ItemDetailsId"].ToString() + "','" + Session["Reg_Id"].ToString() + "','" + TextBox1.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
           
        }
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        SqlDataAdapter da = new SqlDataAdapter("select * from tblReview where Item_details_Id='" + Session["ItemDetailsId"].ToString() + "'", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        else
        { 
        
        }

        //if (Session["Reg_Id"].ToString() == null)
        //{
        //    TextBox1.Visible = false;
        //    Button1.Visible = false;
            
        //}
        //else
        //{
        //    TextBox1.Visible = true;
        //    Button1.Visible = true;
        //}
    }
}