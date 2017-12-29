<%@ Page Title="Home Page" Language="C#" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">

   
</script>
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
  <style type="text/css">  
            /* Dropdown Button */
       .dropbtn {
    background-color: #006666;
    color: white;
    padding: 16px;
    font-size: 16px;
    border: none;
    cursor: pointer;
}

/* The container <div> - needed to position the dropdown content */
.dropdown {
    position: relative;
    display: inline-block;
}
.SomeClass { font-family: "Times New Roman"; font-size: 1.2em; }

/* Dropdown Content (Hidden by Default) */
.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

/* Links inside the dropdown */
.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

/* Change color of dropdown links on hover */
.dropdown-content a:hover {background-color: #f1f1f1}

/* Show the dropdown menu on hover */
.dropdown:hover .dropdown-content {
    display: block;
}

/* Change the background color of the dropdown button when the dropdown content is shown */
.dropdown:hover .dropbtn {
    background-color: #3e8e41;
}
        #form1
        {
            height: 498px;
                width: 804px;
                margin-left: 0px;
            }
            .centerBlock {
    position: fixed;
    top: 36%;
    left: 37%;
    width: 77%;
    height: 381px;
    margin: -100px 0 0 -25%;
     background-color:#4CAF50;
    
}
h3.headertekst {
  text-align: center;
  font-family:Arial;
   color:#003300;
}
.font1
{
    font-family:"Arial";
     color:#003300;
    
}
        </style>
    <title>Register</title>
</head>
<body bgcolor="#ff6600">
    <form id="form1" runat="server">
      <h1 align="center" 
        
        
        
          style="font-size: 60px; font-family: 'Microsoft JhengHei Light'; color: #FFFFFF; font-weight: lighter; width: 1290px; margin-left: 0px;">
          Employee Report Generator</h1>
    <div align="center" class="centerBlock" style="background-color: #ff6600">
    <table align="center">
            <tr>
                <td colspan="3">
                    <h3 class="headertekst" 
                        style="font-family: &quot;Microsoft JhengHei UI Light&quot;; color: #FFFFFF; font-size: 40px; font-weight: lighter; text-decoration: underline" >
                         Registration </h3>
                </td>
            </tr>
            <tr>
                <td style="color: #FFFFFF; font-family: 'Microsoft YaHei UI Light'; font-weight: lighter">
                   
                 <asp:Label ID="Label1" runat="server" Text="UserName:" Width="100px" class="font1" 
                        Font-Names="Microsoft YaHei UI Light" ForeColor="White"></asp:Label>
                    </td>
                <td style="color: #FFFFFF; font-family: 'Microsoft YaHei UI Light'; font-weight: lighter">
                    <asp:TextBox ID="txt_UserName" runat="server" Width="150px" class="font1" 
                        Font-Names="Microsoft YaHei UI Light" ForeColor="Black"></asp:TextBox>
                </td>
                <td style="color: #FFFFFF; font-family: 'Microsoft YaHei UI Light'; font-weight: lighter"><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter UserName" ControlToValidate="txt_UserName"></asp:RequiredFieldValidator> </td>
            </tr>
            <tr>
                <td>
                  
                 <asp:Label ID="Label2" runat="server" Text="Password:" Width="100px" class="font1" 
                        Font-Names="Microsoft YaHei UI Light" ForeColor="White"></asp:Label>
                 </td>
                <td>
                    <asp:TextBox ID="txt_Password"  TextMode="Password" runat="server"
                        Width="150px" class="font1" Font-Names="Microsoft YaHei UI Light" 
                        ForeColor="Black"></asp:TextBox>
                </td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ErrorMessage="Enter Password" ControlToValidate="txt_Password" 
                        Font-Names="Microsoft New Tai Lue" ForeColor="White"></asp:RequiredFieldValidator> </td>
            </tr>
            <tr>
                <td>
                <asp:Label ID="Label3" runat="server" Text="Role:" Width="100px" Height="100px" 
                        class="font1" Font-Names="Microsoft YaHei UI Light" ForeColor="White"></asp:Label>
                    </td>
                <td>
                    <asp:RadioButtonList ID="rbtRole" runat="server" RepeatDirection="Vertical" 
                        Font-Names="Microsoft YaHei UI Light" ForeColor="White" Height="82px" 
                        Width="102px">
                        <asp:ListItem>Admin</asp:ListItem>
                        <asp:ListItem>User</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ErrorMessage="Select role" ControlToValidate="rbtRole" 
                        Font-Names="Microsoft YaHei UI Light" ForeColor="White"></asp:RequiredFieldValidator> </td>
            </tr>
            <tr>
            <td></td>
                <td>
                    <asp:Button ID="btn_register" runat="server" class="dropbtn" Text="Register"
                        onclick="btn_register_Click" />
 
                </td>
                <td><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/About.aspx"
                        class="font1" Font-Names="Microsoft YaHei UI Light" ForeColor="White">Click here to Login</asp:HyperLink></td>
               
            </tr>
            <tr>
                <td align="center"  colspan="3">
                    <asp:Label ID="lblmsg" runat="server" ForeColor="White"></asp:Label>
                </td>
            </tr>
        </table>
       
    </div>
    </form>
</body>
</html>
