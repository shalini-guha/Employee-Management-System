using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.ServiceProcess;
using System.Xml.Linq;
using System.Configuration;
using Service97;



public partial class Employee : System.Web.UI.Page
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
        Service97.myService1 service = new Service97.myService1();
        GridView1.DataSource = service.Get();
        GridView1.DataBind();
    }
    protected void Insert(object sender, EventArgs e)
    {
        DateTime time = DateTime.Now;
        Service97.myService1 service = new Service97.myService1();
        service.Insert(time,Label1.Text.Trim(), txtName.Text.Trim(), txtPhone1.Text.Trim(), txtPhone2.Text.Trim(), txtCubicle.Text.Trim(), txtExp.Text.Trim());
        this.BindGrid();
        clear();
        Response.Redirect("ViewDet.aspx");
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
        Response.Redirect("ViewDet.aspx");
    }
}
