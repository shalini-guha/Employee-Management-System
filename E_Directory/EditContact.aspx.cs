using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using Service97;

public partial class EditContact : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            txtPhone3.Text = Session["Emp_Name"].ToString();
            Label1.Text = Session["Emp_Code"].ToString();
            txtPhone1.Text=Session["Emp_Phone1"].ToString();
            txtPhone2.Text=Session["Emp_Phone2"].ToString();
            txtCubicle.Text=Session["Emp_Cubicle"].ToString();
            txtExp.Text = Session["Emp_Exp"].ToString();

        }
    }
    protected void Insert(object sender, EventArgs e)
    {
        Service97.myService1 service = new Service97.myService1();
        service.Update(Label1.Text.Trim(), txtPhone3.Text.Trim(), txtPhone1.Text.Trim(), txtPhone2.Text.Trim(), txtCubicle.Text.Trim(), txtExp.Text.Trim());
        clear();
        Response.Redirect("ViewDet.aspx");
       
    }
    private void clear()
    {
      
        txtPhone1.Text = "";
        txtPhone2.Text = "";
        txtCubicle.Text = "";
        txtExp.Text = "";
    }
    protected void btnSave_Click1(object sender, EventArgs e)
    {
        Response.Redirect("ViewDet.aspx");
    }

}