<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditContact.aspx.cs" Inherits="EditContact" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 393px;
        }
    </style>
</head>
<body bgcolor="#ff6600">
    <form id="form1" runat="server">
    <h1 align="center" 
        
        
        style="font-family: 'Microsoft JhengHei UI Light'; font-size: 50px; font-weight: lighter; color: #000000; text-decoration: underline;">Edit Employee Details</h1>
    <div>
    
        <table align="center" border="1" cellpadding="0" cellspacing="0" 
            
            style="border-collapse: collapse; color: #000000; background-color: #FFFFFF;" 
            frame="void">
            <tr>
                <td style="font-family: 'Microsoft JhengHei UI Light'; font-size: xx-large; color: #000000; background-color: #FF6600;" 
                    class="style1" align="center" bgcolor="Black">
                    Name:
                    </td>
                     <td style="font-family: 'Microsoft JhengHei UI Light'; font-size: xx-large; color: #000000; background-color: #FF6600;" 
                    class="style1" align="center" bgcolor="Black">
                    <asp:TextBox ID="txtPhone3" runat="server" Width="325px" BorderStyle="Solid" 
                        Height="31px" BackColor="#FF6600" BorderColor="Black" ForeColor="Black" />
                    <br />
                </td>
                </tr>
                <tr>
                   <td style="font-family: 'Microsoft JhengHei UI Light'; font-size: xx-large; color: #000000; background-color: #FF6600;" 
                        class="style1" align="center" bgcolor="Black">
                    ID:
                      </td>
                     <td style="font-family: 'Microsoft JhengHei UI Light'; font-size: xx-large; color: #000000; background-color: #FF6600;" 
                    class="style1" align="center" bgcolor="Black"><asp:Label 
                           ID="Label1" runat="server"></asp:Label>
                       <br />
                </td>
                </tr>
                <tr>
                <td style="font-family: 'Microsoft JhengHei UI Light'; font-size: xx-large; color: #000000; background-color: #FF6600;" 
                        class="style1" align="center" bgcolor="Black">
                    Phone Number:  </td>
                     <td style="font-family: 'Microsoft JhengHei UI Light'; font-size: xx-large; color: #000000; background-color: #FF6600;" 
                    class="style1" align="center" bgcolor="Black">
                    <asp:TextBox ID="txtPhone1" runat="server" Width="325px" BorderStyle="Solid" 
                        Height="31px" BackColor="#FF6600" BorderColor="Black" ForeColor="Black" />
                        <asp:RegularExpressionValidator ID="RxvMobile" runat="server" ErrorMessage="Invalid Mobile Number"
                        ForeColor="#009900" ValidationExpression="^([7-9]{1})([0-9]{9})$" 
                        ControlToValidate="txtPhone1" Font-Names="Microsoft New Tai Lue"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="font-family: 'Microsoft JhengHei UI Light'; font-size: xx-large; color: #000000; background-color: #FF6600;" 
                    class="style1" align="center" bgcolor="Black">
                    Alternate Phone Number:  </td>
                     <td style="font-family: 'Microsoft JhengHei UI Light'; font-size: xx-large; color: #000000; background-color: #FF6600;" 
                    class="style1" align="center" bgcolor="Black">
                    <asp:TextBox ID="txtPhone2" runat="server" Width="325px" BorderStyle="Solid" 
                        BackColor="#FF6600" BorderColor="Black" ForeColor="Black" Height="31px" />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Mobile Number"
                        ForeColor="#009933" ValidationExpression="^([7-9]{1})([0-9]{9})$" 
                        ControlToValidate="txtPhone2" Font-Names="Microsoft New Tai Lue"></asp:RegularExpressionValidator>
                </td>
                </tr>
                <tr>
                <td style="font-family: 'Microsoft JhengHei UI Light'; font-size: xx-large; font-weight: lighter; color: #000000; background-color: #FF6600;" 
                        class="style1" align="center" bgcolor="Black">
                    Cubicle Number:  </td>
                     <td style="font-family: 'Microsoft JhengHei UI Light'; font-size: xx-large; color: #000000; background-color: #FF6600;" 
                    class="style1" align="center" bgcolor="Black">
                    <asp:TextBox ID="txtCubicle" runat="server" Width="325px" BorderStyle="Solid" 
                        BackColor="#FF6600" BorderColor="Black" ForeColor="Black" Height="31px" />
                </td>
            </tr>
            <tr style="font-size: large; font-family: 'Microsoft JhengHei UI Light'; font-weight: bold; color: #FFFFFF">
                <td style="font-family: 'Microsoft JhengHei UI Light'; font-size: xx-large; color: #000000; background-color: #FF6600;" 
                    bgcolor="Black" class="style1" align="center">
                    Employee Extension:  </td>
                     <td style="font-family: 'Microsoft JhengHei UI Light'; font-size: xx-large; color: #000000; background-color: #FF6600;" 
                    class="style1" align="center" bgcolor="Black">
                    <asp:TextBox ID="txtExp" runat="server" Width="325px" BorderStyle="Solid" 
                        BackColor="#FF6600" BorderColor="Black" ForeColor="Black" Height="31px" />
                </td>
               
            </tr>
        </table>
    <br /><br />
    </div>
    <div align="center">
                    <asp:Button ID="btnAdd" runat="server" OnClick="Insert" 
        Text="Update" BorderStyle="Solid" Font-Names="Microsoft JhengHei UI Light" 
        Height="35px" Width="145px" BackColor="#FF6600" BorderColor="Black" ForeColor="Black" />
        <br /><br />
        <asp:Button ID="Button1" runat="server"  CausesValidation="False"
        Text="Back" onclick="btnSave_Click1" Height="35px" Width="144px" 
        BorderStyle="Solid" BackColor="#FF6600" BorderColor="Black" ForeColor="Black" />
        </div>
    </form>
</body>
</html>
