using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Home : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-77O54LKK; Initial Catalog=ONLINE_SHOPPING; User id=sa;password=123");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            

            SqlDataAdapter da = new SqlDataAdapter("Select * from tblCategory_Master", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            DataList1.DataSource = ds;
            DataList1.DataBind();
        }
    }


    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "View")
        {
           
            Session["CategoryId"] = e.CommandArgument.ToString();
            Response.Redirect("Item.aspx");
        }
    }
}  