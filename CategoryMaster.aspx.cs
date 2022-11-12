using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Data;
public partial class CategoryMaster : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-77O54LKK; Initial Catalog=ONLINE_SHOPPING; User id=sa;password=123");
    string filepath;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {
            SqlDataAdapter da = new SqlDataAdapter("select COUNT (Item_Name) from tblItem_Details",con);
            fillGV();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (FileUpload1.HasFile)
            {
                Guid g = Guid.NewGuid();
                FileUpload1.SaveAs(Server.MapPath("~\\photo\\" + g.ToString() + FileUpload1.FileName));
                filepath = "photo\\" + g.ToString() + FileUpload1.FileName;

                SqlCommand cmd = new SqlCommand("Insert into tblCategory_Master(Category_Name,Category_Image )values('" + TextBox2.Text + "','" + filepath + "')", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                TextBox2.Text = "";
                fillGV();
            }
        }
        catch (Exception ex)
        {
            Label2.Text= ex.ToString();
        }
    }
    protected void fillGV()
    {
        SqlDataAdapter da = new SqlDataAdapter("Select * from tblCategory_Master", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Ed")
        {
            SqlDataAdapter da = new SqlDataAdapter("Select * from tblCategory_Master where Categeory_Id='"+e.CommandArgument.ToString ()+"'", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {

                TextBox2.Text = ds.Tables[0].Rows[0]["Category_Name"].ToString();
                hfCategeoryId.Value = ds.Tables[0].Rows[0]["Categeory_Id"].ToString();
                Button1.Visible = false;
                Button2.Visible = true;
            }
        }
            if (e.CommandName == "Del")
            {
                SqlCommand cmd = new SqlCommand("delete from tblCategory_Master where  Categeory_Id='" + e.CommandArgument.ToString() + "'", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                fillGV();
            }
           
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("Update tblCategory_Master set Category_Name='" + TextBox2.Text + "' where Categeory_Id='"+hfCategeoryId.Value+"'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        TextBox2.Text = "";
        fillGV();
        Button1.Visible = true;
        Button2.Visible = false;
    }
}
