using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Data;
public partial class ItemSearch : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-77O54LKK; Initial Catalog=ONLINE_SHOPPING; User id=sa;password=123");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlDataAdapter da = new SqlDataAdapter("select distinct Item_Brand from tblItem_Details where Item_Brand is not null select distinct Item_Name from tblItem_Details where Item_Name is not null", con);
            DataSet ds = new DataSet();
            da.Fill(ds);


            DropDownList1.DataSource = ds;
            DropDownList1.DataTextField = "Item_Brand";
            DropDownList1.DataValueField = "Item_Brand";
            DropDownList1.DataBind();

            if (!IsPostBack)
            {
                //SqlDataAdapter dr = new SqlDataAdapter("select distinct Item_Name from tblItem_Details where Item_Name is not null ", con);
                //DataSet dk = new DataSet();
                //da.Fill(dk);
                DropDownList2.DataSource = ds;
                DropDownList2.DataTextField = " Item_Name";
                DropDownList2.DataValueField = " Item_Name";
                DropDownList2.DataBind();
            }
            
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from tblItem_Details where Item_Brand='"+DropDownList1.SelectedItem.Text+"'", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        DataList1.DataSource = ds;
        DataList1.DataBind();
        
    }
}