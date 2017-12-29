using System;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;


public partial class About : System.Web.UI.Page
{
    string strConnString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    string str, UserName, Password;
    SqlCommand com;
    SqlDataAdapter sqlda;
    DataTable dt;
    int RowCount;
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Cache.SetNoStore();
    }


    protected void btn_login_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(strConnString);
        con.Open();
        str = "Select * from TBL_LOG";
        com = new SqlCommand(str);
        sqlda = new SqlDataAdapter(com.CommandText, con);
        dt = new DataTable();
        sqlda.Fill(dt);
        RowCount = dt.Rows.Count;
        for (int i = 0; i < RowCount; i++)
        {
            UserName = dt.Rows[i]["name"].ToString();
            Password = dt.Rows[i]["password"].ToString();
            if (UserName == TextBox_user_name.Text && Password == TextBox_password.Text)
            {
                Session["name"] = UserName;
                if (dt.Rows[i]["role"].ToString() == "Admin")
                    Response.Redirect("Admin.aspx");
                else if (dt.Rows[i]["role"].ToString() == "User")
                    Response.Redirect("User.aspx");
            }
            else
            {
                lb1.Text = "Invalid User Name or Password! Please try again!";
            }
        }

    }
}
