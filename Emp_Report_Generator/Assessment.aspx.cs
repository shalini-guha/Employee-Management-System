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
using iTextSharp.text;
using iTextSharp.text.pdf;   
public partial class Assessment : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            Label2.Text = Session["Emp_Name"].ToString();
            Label1.Text = Session["Emp_ID"].ToString();
            

        }
    }
    protected void Insert(object sender, EventArgs e)
    {
        string constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("INSERT INTO TBL_MST_AS (Emp_ID,Emp_Name,Job_Kno,Work_Qual,Attendance,Initiative,Comm,depend)values(@Code,@Name,@Job_Know,@Work_Qual,@Attendance,@Comm,@init,@Depend)"))
            {
                cmd.Parameters.AddWithValue("@Code", Label1.Text.Trim());
                cmd.Parameters.AddWithValue("@Name",Label2.Text.Trim() );
                cmd.Parameters.AddWithValue("@Job_Know",txtPhone1.Text.Trim());
                cmd.Parameters.AddWithValue("@Work_Qual",txtPhone2.Text.Trim());
                cmd.Parameters.AddWithValue("@Attendance", txtCubicle.Text.Trim());
                cmd.Parameters.AddWithValue("@Comm",TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@init",TextBox3.Text.Trim() );
                cmd.Parameters.AddWithValue("@Depend",TextBox2.Text.Trim());
          
                cmd.Connection = con;
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
    }
       
       

    
    private void clear()
    {

        txtPhone1.Text = "";
        txtPhone2.Text = "";
        txtCubicle.Text = "";
        
    }
    protected void btnSave_Click1(object sender, EventArgs e)
    {
        Response.Redirect("Admin.aspx");
    }

    protected void btnGenerate_Click(object sender, EventArgs e)
    {
        try
        {
            Document pdfDoc = new Document(PageSize.A4, 25, 10, 25, 10);
            PdfWriter pdfWriter = PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
            pdfDoc.Open();
            Paragraph Text = new Paragraph("Employee Assessment Report : ");
            Paragraph Text1 = new Paragraph("Employee Code: "+Label1.Text);
            Paragraph Text2 = new Paragraph("Employee Name : "+Label2.Text);
            Paragraph Text3 = new Paragraph("Employee Job Knowledge : " + txtPhone1.Text);
            Paragraph Text4 = new Paragraph("Employee Work Quality : " + txtPhone2.Text);
            Paragraph Text5 = new Paragraph("Employee Attendance : " + txtCubicle.Text);
            Paragraph Text6 = new Paragraph("Employee Communication Skills : " + TextBox1.Text);
            Paragraph Text7 = new Paragraph("Employee Initiative : " + TextBox3.Text);
            Paragraph Text8 = new Paragraph("Employee Dependebility : " + TextBox2.Text);
            pdfDoc.Add(Text);
            pdfDoc.Add(Text1);
            pdfDoc.Add(Text2);
            pdfDoc.Add(Text3);
            pdfDoc.Add(Text4);
            pdfDoc.Add(Text5);
            pdfDoc.Add(Text6);
            pdfDoc.Add(Text7);
            pdfDoc.Add(Text8);
            pdfWriter.CloseStream = false;
            pdfDoc.Close();
            Response.Buffer = true;
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=Employee_Report.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Write(pdfDoc);
            Response.End();
        }
        catch (Exception ex)
        { Response.Write(ex.Message); }  
    }

}