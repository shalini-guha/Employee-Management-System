using System;
using System.Collections;
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
public partial class _Default : System.Web.UI.Page
{
    string strConnString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    SqlCommand com;
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void btn_register_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(strConnString);
        com = new SqlCommand();
        com.Connection = con;
        com.CommandType = CommandType.Text;
        com.CommandText = "Insert into TBL_LOG values(@name,@password,@role)";
        com.Parameters.Clear();
        com.Parameters.AddWithValue("@name", txt_UserName.Text);
        com.Parameters.AddWithValue("@password", txt_Password.Text);
        com.Parameters.AddWithValue("@role", rbtRole.SelectedValue);
        if (con.State == ConnectionState.Closed)
            con.Open();
        com.ExecuteNonQuery();
        con.Close();
        lblmsg.Text = "Successfully Registered!!!";
        clear();
    }
    private void clear()
    {
        txt_UserName.Text = "";
        rbtRole.ClearSelection();
    }

}