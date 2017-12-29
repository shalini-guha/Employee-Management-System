<%@ Page Language="C#" AutoEventWireup="true" CodeFile="User.aspx.cs" Inherits="User" %>

<head>
     <style type="text/css">
         .style1
         {
             width: 556px;
         }
     </style>
</head>
<body bgcolor="#ff6600">
 <form id="form1" runat="server" align="center">
 <h1 align="center" 
     
     style="font-family: 'Microsoft JhengHei UI Light'; color: #000000; font-size: 50px; font-weight: lighter; text-decoration: underline">Add New Employee</h1>
 <table border="1" cellpadding="0" cellspacing="0" 
    style="border-collapse: collapse" align="center">
    <tr>
    <td style="font-family: 'Microsoft JhengHei UI Light'; font-size: x-large; color: #000000;" 
        class="style1">
        Employee Code:
        </td>
        <td style="font-family: 'Microsoft JhengHei UI Light'; font-size: x-large; color: #FFFFFF;" 
        class="style1"><asp:Label ID="Label1" runat="server" ForeColor="Black"></asp:Label>
        <br />
    </td>
    </tr>

<tr>
    <td style="font-family: 'Microsoft JhengHei UI Light'; font-size: x-large; color: #000000;" 
        class="style1">
        Name: </td>
        <td style="font-family: 'Microsoft JhengHei UI Light'; font-size: x-large; color: #FFFFFF;" 
        class="style1">
        <asp:TextBox ID="txtName" runat="server" Width="411px" BackColor="#FF6600" 
            BorderColor="Black" BorderStyle="Solid" 
            Font-Names="Microsoft JhengHei UI Light" ForeColor="White" Height="32px" />
    </td>
    </tr>
    <tr>
    <td style="font-family: 'Microsoft YaHei UI Light'; font-size: x-large; color: #000000;" 
            class="style1">
        Phone Number: </td>
        <td style="font-family: 'Microsoft JhengHei UI Light'; font-size: x-large; color: #FFFFFF;" 
        class="style1">
        <asp:TextBox ID="txtPhone1" runat="server" Width="411px" BackColor="#FF6600" 
            BorderColor="Black" BorderStyle="Solid" 
            Font-Names="Microsoft JhengHei UI Light" ForeColor="White" Height="32px" />
            <asp:RegularExpressionValidator ID="RxvMobile" runat="server" ErrorMessage="Invalid Mobile Number"
                        ForeColor="#009933" ValidationExpression="^([7-9]{1})([0-9]{9})$" 
                        ControlToValidate="txtPhone1" Font-Names="Microsoft New Tai Lue"></asp:RegularExpressionValidator>
    </td>
  
</tr>
<tr>
    <td style="font-family: 'Microsoft YaHei UI Light'; color: #000000; font-size: x-large;" 
        class="style1">
        Alternate Phone Number: </td>
        <td style="font-family: 'Microsoft JhengHei UI Light'; font-size: x-large; color: #FFFFFF;" 
        class="style1">
        <asp:TextBox ID="txtPhone2" runat="server" Width="411px" BackColor="#FF6600" 
            BorderColor="Black" BorderStyle="Solid" 
            Font-Names="Microsoft JhengHei UI Light" ForeColor="White" Height="32px" />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Mobile Number"
                        ForeColor="#009933" ValidationExpression="^([7-9]{1})([0-9]{9})$" 
                        ControlToValidate="txtPhone2" Font-Names="Microsoft New Tai Lue"></asp:RegularExpressionValidator>
    </td>
    </tr>
    <tr>
    <td style="font-family: 'Microsoft YaHei UI Light'; color: #000000; font-size: x-large;" 
            class="style1">
        Cubicle Number: </td>
        <td style="font-family: 'Microsoft JhengHei UI Light'; font-size: x-large; color: #FFFFFF;" 
        class="style1">
        <asp:TextBox ID="txtCubicle" runat="server" Width="411px" BackColor="#FF6600" 
            BorderColor="Black" BorderStyle="Solid" Font-Names="Microsoft YaHei UI Light" 
            ForeColor="White" Height="32px" />
    </td>
 
</tr>
<tr>
    <td style="font-family: 'Microsoft YaHei UI Light'; color: #000000; font-size: x-large;" 
        class="style1">
        Employee Extension: </td>
        <td style="font-family: 'Microsoft JhengHei UI Light'; font-size: x-large; color: #FFFFFF;" 
        class="style1">
        <asp:TextBox ID="txtExp" runat="server" Width="411px" BackColor="#FF6600" 
            BorderColor="Black" BorderStyle="Solid" 
            Font-Names="Microsoft JhengHei UI Light" ForeColor="White" Height="32px" />
    </td>
    </tr>
  
</table>
 <br /><br />
        <div align="center">
            <asp:Button ID="btnAdd" runat="server" Text="Add" 
                OnClick="Insert" BackColor="#FF6600" BorderColor="Black" BorderStyle="Solid" 
                Font-Names="Microsoft JhengHei UI Light" Font-Size="X-Large" ForeColor="Black" 
                Height="50px" Width="167px" /></div> <br /><br />
                  <div align="center">
 <asp:Button ID="Button1" runat="server"  CausesValidation="False"
        Text="Log Out" onclick="btnSave_Click1" Height="53px" Width="165px" 
             BackColor="#FF6600" BorderColor="Black" BorderStyle="Solid" 
             Font-Names="Microsoft JhengHei UI Light" Font-Size="X-Large" 
             ForeColor="Black" />
        </div><br /><br />
 <div align="center">
       <asp:GridView ID="GridView1" runat="server" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"  
            RowStyle-BackColor="#A1DCF2" AlternatingRowStyle-BackColor="White" AlternatingRowStyle-ForeColor="#000"  
            AutoGenerateColumns="false" 
            Height="225px" Width="527px" 
            BackColor="Blue" BorderColor="Black" 
            ForeColor="White" Caption="List of Employees" 
            style="margin-left: 401px" Font-Names="Microsoft JhengHei UI Light" 
           HorizontalAlign="Center" PageSize="5" BorderStyle="Solid" 
            >  
<AlternatingRowStyle BackColor="#FF6600" ForeColor="Black" 
             Font-Names="Microsoft JhengHei Light"></AlternatingRowStyle>
         <Columns>  
               <asp:BoundField DataField="Emp_Name" HeaderText="Name" /> 
                <asp:BoundField DataField="Emp_Phone1" HeaderText="Phone Number" /> 
                <asp:BoundField DataField="Emp_Phone2" HeaderText="Alternative Phone Number" /> 
                <asp:BoundField DataField="Emp_Cubicle" HeaderText="Cubicle Number" /> 
                <asp:BoundField DataField="Emp_Exp" HeaderText="Employee Extension" /> 
               
            
               
            </Columns>  
             <EditRowStyle BackColor="#00CC99" 
             Font-Names="Microsoft JhengHei UI Light" />

<HeaderStyle BackColor="Black" ForeColor="White" 
               Font-Names="Microsoft JhengHei UI Light"></HeaderStyle>

           <PagerStyle BackColor="Black" />

<RowStyle BackColor="#FF6600" Font-Names="Microsoft JhengHei UI Light" ForeColor="Black"></RowStyle>

             <selectedrowstyle backcolor="#FFCC66"
         forecolor="White"
         font-bold="true" Font-Names="Microsoft JhengHei UI"/> 
     </asp:GridView>  
     </div>
     <br /><br />
   
</form>