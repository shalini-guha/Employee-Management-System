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

public partial class Admin : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

    protected void lnkRequestID_Click(object sender, EventArgs e)
    {

        if (GridView1.SelectedRow != null)
        {
            Session["Emp_Name"] = GridView1.SelectedRow.Cells[3].Text;
            Session["Emp_ID"] = GridView1.SelectedRow.Cells[1].Text;
           

            Response.Redirect("Assessment.aspx");
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
        Response.Redirect("User.aspx");
    }


    protected void btnSave_Click3(object sender, EventArgs e)
    {
        TextBox1.Text = "";
      

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
        string constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("SELECT * FROM TBL_MST_EMP1 ORDER BY [Emp_Date] DESC"))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.Connection = con;
                    sda.SelectCommand = cmd;
                    using (DataTable dt = new DataTable())
                    {
                        dt.TableName = "TBL_MST_EMP1";
                        sda.Fill(dt);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        ViewState["dirState"] = GridView1.DataSource;
                        ViewState["sortdr"] = "Asc";  

                    }
                }
            }
        }
      
    }
    protected void OnPaging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        BindGrid();


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
   
        GridView1.AllowPaging = false;
        GridView1.DataBind();
       
        string constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("Select*from TBL_MST_EMP1 where [Emp_Name] like'%" + TextBox1.Text + "%' or [Emp_Code] like'%" + TextBox1.Text + "%'", con))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {

                    cmd.Connection = con;
                    sda.SelectCommand = cmd;
                    using (DataTable dt = new DataTable())
                    {
                        dt.TableName = "TBL_MST_EMP1";
                        sda.Fill(dt);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        
                    }
                }
            }
        }
        if (!string.IsNullOrEmpty(TextBox1.Text))
        {
            int num = GridView1.Rows.Count;


            Label1.Text = "Found " + num +
                 " rows matching keyword '" + TextBox1.Text + "'.";
        }
    }

    protected void GridView1_Sorting(object sender, GridViewSortEventArgs e)
    {
        DataTable dtrslt = (DataTable)ViewState["dirState"];
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
