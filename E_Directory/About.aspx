<%@ Page Title="About Us" Language="C#" AutoEventWireup="true"
    CodeFile="About.aspx.cs" Inherits="About" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
 
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Login</title>
    
    <script type="text/javascript" language="javascript">
        function Validate() {
            var UName = document.getElementById('TextBox_user_name');
            var Password = document.getElementById('TextBox_password');
            if ((UName.value == '') || (Password.value == '')) {
                alert('Please Enter your User Name and Password');
                return false;
            }
            else {
                return true;
            }
        }
    </script>
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
            height: 640px;
                width: 1130px;
                margin-left: 0px;
            }
            .centerBlock {
    position: fixed;
    top: 36%;
    left: 57%;
    width: 50%;
    height: 200px;
    margin: -100px 0 0 -25%;
     background-color: #4CAF50;
    
}
h2.headertekst {
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
  
</head>
<body  style="width: 1134px; height: 642px" bgcolor="#ff6600">
 <center>

    <form id="form1" runat="server" align="center">
  <h1 align="center" 
        
        
        
        style="font-size: 60px; font-family: 'Microsoft JhengHei Light'; color: #000000; font-weight: lighter; width: 1131px; margin-left: 0px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Telephone Directory</h1>
    <br /><br />
    <div style="height: 417px; width: 351px; margin-left: 432px;" ;align="center" 
        align="center">
    <br />
     <h2 class="headertekst" align="center" 
            
            
            style="font-family: 'Microsoft JhengHei Light'; font-size: xx-large; font-weight: lighter; color: #000000; text-decoration: underline" >Sign In</h2>
     <br />
    <asp:Label ID="lb1" runat="server" class="font1" ForeColor="Black" 
            Font-Names="Microsoft New Tai Lue" ></asp:Label><br />
    <br /><br />
        <asp:Label ID="Label1" runat="server" Font-Names="Microsoft JhengHei UI Light" 
            Font-Size="Large" ForeColor="Black" Text="Username :"></asp:Label>
           
        <asp:TextBox ID="TextBox_user_name" runat="server" class="font1" Width="100px" 
            Font-Names="Microsoft New Tai Lue"></asp:TextBox><br /><br />
        <asp:Label ID="Label2" runat="server" Font-Names="Microsoft JhengHei UI Light" 
            Font-Size="Large" ForeColor="Black" Text="Password :"></asp:Label>
           
        <asp:TextBox ID="TextBox_password" runat="server" TextMode="Password" 
            class="font1" Width="100px" Font-Names="Microsoft New Tai Lue" 
            ForeColor="Black"></asp:TextBox><br />
               <br /><br />
        <asp:Button ID="btn_login" runat="server" Text="Login" Font-Bold="True"
            class="dropbtn"   OnClientClick="Validate()" onclick="btn_login_Click" 
            Height="61px" Width="118px" BackColor="#FF6600" BorderColor="Black" 
            BorderStyle="Solid" ForeColor="Black"
            /><br />
              <tr>
         
               
                <td></td>
               
            </tr><br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx"
                       class="font1" ForeColor="Black">Click here to Register</asp:HyperLink>
    </div>
     
    </form>

    </center>
</body>
</html>

