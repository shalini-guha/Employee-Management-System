using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.Linq;
using System.Configuration;
using Service97;



public partial class User : System.Web.UI.Page
{
    string strConnString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

    string str;

    SqlCommand com;

    int count;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            this.BindGrid();
        }
        SqlConnection con = new SqlConnection(strConnString);

        str = "select count(*) from TBL_MST_EMP1";

        com = new SqlCommand(str, con);

        con.Open();

        count = Convert.ToInt16(com.ExecuteScalar()) + 1;

        Label1.Text = "E00" + count.ToString();

        con.Close();
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
                       
                    }
                }
            }
        }
    }
    protected void Insert(object sender, EventArgs e)
    {
        DateTime time = DateTime.Now;
        string constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("INSERT INTO TBL_MST_EMP1(Emp_Code,Emp_Name,Emp_Phone1,Emp_Phone2,Emp_Cubicle,Emp_Exp,Emp_Date) VALUES (@Code,@Name, @Phone1,@Phone2,@Cubicle,@Exp,@Date)"))
            {
                cmd.Parameters.AddWithValue("@Code", Label1.Text);
                cmd.Parameters.AddWithValue("@Name", txtName.Text.Trim());
                cmd.Parameters.AddWithValue("@Phone1",txtPhone2.Text.Trim() );
                cmd.Parameters.AddWithValue("@Phone2", txtPhone1.Text.Trim() );
                cmd.Parameters.AddWithValue("@Cubicle",txtCubicle.Text.Trim() );
                cmd.Parameters.AddWithValue("@Exp",txtExp.Text.Trim()) ;
                cmd.Parameters.AddWithValue("@Date", time);
                cmd.Connection = con;
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
        this.BindGrid();
        clear();
       
    }
    private void clear()
    {
        Label1.Text = "";
        txtName.Text = "";
        txtPhone1.Text = "";
        txtPhone2.Text = "";
        txtCubicle.Text = "";
        txtExp.Text = "";
    }
    protected void lnkRequestID_Click(object sender, EventArgs e)
    {

        if (GridView1.SelectedRow != null)
        {
            Session["Emp_Name"] = GridView1.SelectedRow.Cells[1].Text;

            Response.Redirect("EditContact.aspx");
        }
        else
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Please select a row.')", true);
        }

    }
    protected void btnSave_Click1(object sender, EventArgs e)
    {
        Response.Redirect("About.aspx");
    }
}