using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.VisualBasic;
using System.Collections;
using System.Data;
using System.Diagnostics;
using System.Text;
using System.Data.SqlClient;
using System.Configuration;
using Service97;

public partial class ViewDet : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

    protected void lnkRequestID_Click(object sender, EventArgs e)
    {

        if (GridView1.SelectedRow != null)
        {
            Session["Emp_Name"] = GridView1.SelectedRow.Cells[3].Text;
            Session["Emp_Code"] = GridView1.SelectedRow.Cells[2].Text;
            Session["Emp_Phone2"] = GridView1.SelectedRow.Cells[4].Text;
            Session["Emp_Phone1"] = GridView1.SelectedRow.Cells[5].Text;
            Session["Emp_Cubicle"] = GridView1.SelectedRow.Cells[6].Text;
            Session["Emp_Exp"] = GridView1.SelectedRow.Cells[7].Text;

            Response.Redirect("EditContact.aspx");
        }
        else
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Please select a row.')", true);
        }

    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
        Label lbldeleteid = (Label)row.FindControl("lblID");
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("delete FROM TBL_MST_EMP1 where Emp_ID='" + Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString()) + "'", con))
            {
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

            }


        }
        BindGrid();
    }
    protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow && GridView1.EditIndex != e.Row.RowIndex)
        {
            (e.Row.Cells[2].Controls[2] as LinkButton).Attributes["onclick"] = "return confirm('Do you want to delete this row?');";
            
        }
    }
    protected void btnSave_Click2(object sender, EventArgs e)
    {
        Session.Clear();
        Session.RemoveAll();
        Session.Abandon();
        Response.Redirect("About.aspx");
    }
    protected void btnSave_Click1(object sender, EventArgs e)
    {
        Response.Redirect("Employee.aspx");
    }


    protected void btnSave_Click3(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        Response.Redirect("ViewDet.aspx");

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            this.BindGrid();
        }
        
    }
    private void BindGrid()
    {
        Service97.myService1 service = new Service97.myService1();
        GridView1.DataSource = service.Get();
        GridView1.DataBind();
        ViewState["dirState"] = GridView1.DataSource;  
        ViewState["sortdr"] = "Asc";  
    }
    protected void OnPaging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        BindGrid();

        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        GridView1.AllowPaging = false;
        Service97.myService1 service = new Service97.myService1();
        GridView1.DataSource = service.rep_bind(TextBox1.Text.Trim());
        GridView1.DataBind();
        
        if (!string.IsNullOrEmpty(TextBox1.Text))
        {
            int num = GridView1.Rows.Count;
          
          
           Label1.Text = "Found " + num +
                " rows matching keyword '" + TextBox1.Text + "'.";
        }
    }

        protected void GridView1_Sorting(object sender, GridViewSortEventArgs e)  
        {  
            DataTable dtrslt= (DataTable)ViewState["dirState"];  
            if (dtrslt.Rows.Count > 0)  
            {  
                if (Convert.ToString(ViewState["sortdr"]) == "Asc")  
                {  
                    dtrslt.DefaultView.Sort = e.SortExpression + " Desc";  
                    ViewState["sortdr"] = "Desc";  
                }  
                else  
                {  
                    dtrslt.DefaultView.Sort = e.SortExpression + " Asc";  
                    ViewState["sortdr"] = "Asc";  
                }  
                GridView1.DataSource = dtrslt;  
                GridView1.DataBind();   
              
                 
            }  
  
        }  
}  
