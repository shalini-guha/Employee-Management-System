﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

/// <summary>
/// Summary description for myService1
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class myService1 : System.Web.Services.WebService {

    public myService1 () {
        
        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }
      [WebMethod]

    public string systemtime()

    {

        string time = DateTime.Now.ToLongDateString();

        return time;

    }


    [WebMethod]
    public DataTable Get()
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
                        return dt;
                    }
                }
            }
        }
    }
    [WebMethod]
    public DataTable rep_bind(string par)
    {
        string constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("Select*from TBL_MST_EMP1 where [Emp_Name] like'%" + par + "%' or [Emp_Code] like'%" + par + "%'", con))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {

                    cmd.Connection = con;
                    sda.SelectCommand = cmd;
                    using (DataTable dt = new DataTable())
                    {
                        dt.TableName = "TBL_MST_EMP1";
                        sda.Fill(dt);
                        return dt;
                    }
                }
            }
        }
    }

    [WebMethod]
    public void Insert(DateTime date,string code,string name, string phone1, string phone2, string cubicle, string exp)
    {
        string constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("INSERT INTO TBL_MST_EMP1(Emp_Code,Emp_Name,Emp_Phone1,Emp_Phone2,Emp_Cubicle,Emp_Exp,Emp_Date) VALUES (@Code,@Name, @Phone1,@Phone2,@Cubicle,@Exp,@Date)"))
            {
                cmd.Parameters.AddWithValue("@Code", code);
                cmd.Parameters.AddWithValue("@Name", name);
                cmd.Parameters.AddWithValue("@Phone1", phone1);
                cmd.Parameters.AddWithValue("@Phone2", phone2);
                cmd.Parameters.AddWithValue("@Cubicle", cubicle);
                cmd.Parameters.AddWithValue("@Exp", exp);
                cmd.Parameters.AddWithValue("@Date", date);
                cmd.Connection = con;
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
    }
    [WebMethod]
    public void Update(string code, string name, string phone1, string phone2, string cubicle, string exp)
    {
        string constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("UPDATE TBL_MST_EMP1 SET Emp_Code=@Code,Emp_Name=@Name,Emp_Phone1=@Phone1,Emp_Phone2=@Phone2,Emp_Cubicle=@Cubicle,Emp_Exp=@Exp WHERE Emp_Code=@Code"))
            {
                cmd.Parameters.AddWithValue("@Code", code);
                cmd.Parameters.AddWithValue("@Name", name);
                cmd.Parameters.AddWithValue("@Phone1", phone1);
                cmd.Parameters.AddWithValue("@Phone2", phone2);
                cmd.Parameters.AddWithValue("@Cubicle", cubicle);
                cmd.Parameters.AddWithValue("@Exp", exp);
          
                cmd.Connection = con;
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
    }

    
}
