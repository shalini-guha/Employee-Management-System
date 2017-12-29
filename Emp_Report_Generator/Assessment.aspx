<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Assessment.aspx.cs" Inherits="Assessment" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
        
        
        style="font-family: 'Microsoft JhengHei UI Light'; font-size: 50px; font-weight: lighter; color: #000000; text-decoration: underline;">&nbsp;Employee 
        Assessment Details</h1>
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
                         <asp:Label 
                           ID="Label2" runat="server"></asp:Label>
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
                    Job Knowledge:</td>
                     <td style="font-family: 'Microsoft JhengHei UI Light'; font-size: xx-large; color: #000000; background-color: #FF6600;" 
                    class="style1" align="center" bgcolor="Black">
                    <asp:TextBox ID="txtPhone1" runat="server" Width="325px" BorderStyle="Solid" 
                        Height="31px" BackColor="#FF6600" BorderColor="Black" ForeColor="Black" />
                </td>
            </tr>
            <tr>
                <td style="font-family: 'Microsoft JhengHei UI Light'; font-size: xx-large; color: #000000; background-color: #FF6600;" 
                    class="style1" align="center" bgcolor="Black">
                    Work Quality:  </td>
                     <td style="font-family: 'Microsoft JhengHei UI Light'; font-size: xx-large; color: #000000; background-color: #FF6600;" 
                    class="style1" align="center" bgcolor="Black">
                    <asp:TextBox ID="txtPhone2" runat="server" Width="325px" BorderStyle="Solid" 
                        BackColor="#FF6600" BorderColor="Black" ForeColor="Black" Height="31px" />
                </td>
                </tr>
                <tr>
                <td style="font-family: 'Microsoft JhengHei UI Light'; font-size: xx-large; font-weight: lighter; color: #000000; background-color: #FF6600;" 
                        class="style1" align="center" bgcolor="Black">
                    Attendance:  </td>
                     <td style="font-family: 'Microsoft JhengHei UI Light'; font-size: xx-large; color: #000000; background-color: #FF6600;" 
                    class="style1" align="center" bgcolor="Black">
                    <asp:TextBox ID="txtCubicle" runat="server" Width="325px" BorderStyle="Solid" 
                        BackColor="#FF6600" BorderColor="Black" ForeColor="Black" Height="31px" />
                </td>
            </tr>
        
              <tr>
                <td style="font-family: 'Microsoft JhengHei UI Light'; font-size: xx-large; font-weight: lighter; color: #000000; background-color: #FF6600;" 
                        class="style1" align="center" bgcolor="Black">
                    Communication:  </td>
                     <td style="font-family: 'Microsoft JhengHei UI Light'; font-size: xx-large; color: #000000; background-color: #FF6600;" 
                    class="style1" align="center" bgcolor="Black">
                    <asp:TextBox ID="TextBox1" runat="server" Width="325px" BorderStyle="Solid" 
                        BackColor="#FF6600" BorderColor="Black" ForeColor="Black" Height="31px" />
                </td>
            </tr>
             <tr>
                <td style="font-family: 'Microsoft JhengHei UI Light'; font-size: xx-large; font-weight: lighter; color: #000000; background-color: #FF6600;" 
                        class="style1" align="center" bgcolor="Black">
                    Initiative:  </td>
                     <td style="font-family: 'Microsoft JhengHei UI Light'; font-size: xx-large; color: #000000; background-color: #FF6600;" 
                    class="style1" align="center" bgcolor="Black">
                    <asp:TextBox ID="TextBox3" runat="server" Width="325px" BorderStyle="Solid" 
                        BackColor="#FF6600" BorderColor="Black" ForeColor="Black" Height="31px" />
                </td>
            </tr>
              <tr>
                <td style="font-family: 'Microsoft JhengHei UI Light'; font-size: xx-large; font-weight: lighter; color: #000000; background-color: #FF6600;" 
                        class="style1" align="center" bgcolor="Black">
                    Dependence:  </td>
                     <td style="font-family: 'Microsoft JhengHei UI Light'; font-size: xx-large; color: #000000; background-color: #FF6600;" 
                    class="style1" align="center" bgcolor="Black">
                    <asp:TextBox ID="TextBox2" runat="server" Width="325px" BorderStyle="Solid" 
                        BackColor="#FF6600" BorderColor="Black" ForeColor="Black" Height="31px" />
                </td>
 
            </tr>
        </table>
    <br /><br />
    </div>
    <div align="center">
                    <asp:Button ID="btnAdd" runat="server" OnClick="Insert" 
        Text="Add" BorderStyle="Solid" Font-Names="Microsoft JhengHei UI Light" 
        Height="35px" Width="145px" BackColor="#FF6600" BorderColor="Black" ForeColor="Black" />
                    <br />
                    <br />
                    <asp:Button ID="btnAdd0" runat="server" OnClick="btnGenerate_Click" 
        Text="Generate PDF" BorderStyle="Solid" Font-Names="Microsoft JhengHei UI Light" 
        Height="35px" Width="145px" BackColor="#FF6600" BorderColor="Black" ForeColor="Black" />
        <br /><br />
        <asp:Button ID="Button1" runat="server"  CausesValidation="False"
        Text="Back" onclick="btnSave_Click1" Height="35px" Width="144px" 
        BorderStyle="Solid" BackColor="#FF6600" BorderColor="Black" ForeColor="Black" />
        </div>
    </form>
</body>
</html>
