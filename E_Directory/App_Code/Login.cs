using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data.SqlClient;
using System.Data;

/// <summary>
/// Summary description for Login
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class Login : System.Web.Services.WebService {

    [WebMethod]
        public DataSet login(string uname, string pwd)
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from TBL_MST_EMP where Username ='" + uname + "' and Password='" + pwd + "' ",        
            @"DataSource=SERVER_NAME;Initial Catalog=EMP;Integrated Security=True");
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
    }
    


