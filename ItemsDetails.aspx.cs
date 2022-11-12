using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
public partial class ItemsDetails : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-77O54LKK; Initial Catalog=ONLINE_SHOPPING; User id=sa;password=123");
    string filepath;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack==false)
        {
            SqlDataAdapter da = new SqlDataAdapter("Select Categeory_ID, Category_Name from tblCategory_Master", con);
            DataSet ds = new DataSet();
            da.Fill(ds);

            ds.Tables[0].Rows.Add("0", "---Select---");
            DataView dv = new DataView();
            dv = ds.Tables[0].DefaultView;
            dv.Sort = "Categeory_ID";

            DropDownList1.DataSource = dv;
            DropDownList1.DataTextField = "Category_Name";
            DropDownList1.DataValueField = "Categeory_ID";
            DropDownList1.DataBind();
            fileGV();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
   {
        try
        {
            if (FileUpload1.HasFile)
            {
                Guid g = Guid.NewGuid();
                FileUpload1.SaveAs(Server.MapPath("~\\Itemimage\\" + g.ToString() + FileUpload1.FileName));
                filepath = "Itemimage\\" + g.ToString() + FileUpload1.FileName;


                SqlCommand cmd = new SqlCommand(@"Insert into tblItem_Details(Category_ID, Item_Name,Item_image,Item_Price,Item_Specification,Item_Detail,Warranty,Item_Brand)
       values('" + DropDownList1.SelectedValue + "','" + TextBox2.Text + "','" + filepath + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "')", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                //DropDownList1.SelectedValue = "0";
                TextBox2.Text = "";

                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
                TextBox7.Text = "";
                TextBox8.Text = "";
                fileGV();
            }
            
       }
        catch (Exception ex)
        {
            Label2.Text = ex.ToString();
        }


       
    }
    protected void fileGV()
    {
        SqlDataAdapter da= new SqlDataAdapter( "select * from tblItem_Details",con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //SqlDataAdapter da = new SqlDataAdapter("Select * from tblCategory_Master", con);
        //DataSet ds = new DataSet();
        //da.Fill(ds);

        //DropDownList1.DataSource = ds;
        //DropDownList1.DataTextField = "Category_Name";
        //DropDownList1.DataValueField = "Categeory_ID";
        //DropDownList1.DataBind();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Del1")
        {
            SqlCommand cmd = new SqlCommand("delete from tblItem_Details where Item_details_Id ='"+e.CommandArgument.ToString()+"'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            fileGV();
        }
    }
} 