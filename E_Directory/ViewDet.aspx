<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewDet.aspx.cs" Inherits="ViewDet" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html>
<head>
    <title>Search for Employee Details</title>
    <style type="text/css">
        #form1
        {
            margin-bottom: 19px;
        }
    </style>
    <script language="javascript" type="text/javascript">
// <![CDATA[

        function btSubmit_onclick() {

        }

// ]]>
    </script>
    <script language="javascript" type="text/javascript">
// <![CDATA[

        function btSubmit1_onclick() {

        }

// ]]>
    </script>
     <style type="text/css">
        #form1
        {
            margin-bottom: 19px;
        }
    </style>

</head>
<body bgcolor="#ff6600">
    <form id="form1" runat="server" align="center">
      <div style="font:13px Arial;" align="center">
            <h1 style="font-family: 'Microsoft JhengHei UI Light'; color: #000000; font-size: 50px; font-weight: lighter; text-decoration: underline">Search for Employee Details</h1>
            <div><br /><br />
     <table align="center">
    <tr>
    <td style="font-family: &quot;Microsoft JhengHei UI Light&quot;; font-size: large; color: #000000"> 
       Enter Employee Name or Code:
        </td>
        <td>
        <asp:TextBox ID="TextBox1" runat="server" BorderColor="Black" BorderStyle="None"></asp:TextBox>
        </td>
        <td> 
        <asp:Button ID="Button4" runat="server" Text="Search" onclick="Button1_Click" 
                BackColor="#FF6600" BorderColor="Black" BorderStyle="Solid" 
                Font-Names="Microsoft JhengHei UI" Font-Size="Medium" ForeColor="Black" />
            <asp:Label ID="Label1" runat="server" ForeColor="Black"></asp:Label>
        </td>
        
        </tr>
        
 
</table>
        </div>
        <div align="center">
        <asp:Button ID="Button3" runat="server"  CausesValidation="False"
        Text="Clear" onclick="btnSave_Click3" Height="34px" Width="168px" 
                BackColor="#FF6600" BorderColor="Black" BorderStyle="Solid" 
                Font-Names="Microsoft JhengHei UI Light" ForeColor="Black" /><br /><br />
         <asp:Button ID="Button1" runat="server"  CausesValidation="False"
        Text="Add Employee" onclick="btnSave_Click1" Height="31px" Width="165px" 
                BackColor="#FF6600" BorderColor="Black" BorderStyle="Solid" 
                Font-Names="Microsoft JhengHei UI Light" ForeColor="Black" /><br /><br />
                   
         <asp:Button ID="Button2" runat="server"  CausesValidation="False"
        Text="Log Out" onclick="btnSave_Click2" Height="34px" Width="168px" 
                BackColor="#FF6600" BorderColor="Black" BorderStyle="Solid" 
                Font-Names="Microsoft JhengHei UI Light" ForeColor="Black" />
                
        </div><br /><br />
      
            <asp:GridView ID="GridView1" runat="server" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"  
            RowStyle-BackColor="#A1DCF2"  
            AutoGenerateColumns="False" 
            OnRowDeleting="GridView1_RowDeleting"
            AllowPaging="True" PageSize="5" 
             DataKeyNames="Emp_ID"
             onsorting="GridView1_Sorting"
            OnPageIndexChanging="OnPaging"
            Height="225px" Width="527px" 
            BackColor="Blue" BorderColor="Black" 
            ForeColor="White" Caption="List of Employees" 
            style="margin-left: 401px" Font-Names="Microsoft JhengHei UI Light" 
           HorizontalAlign="Center"  AutoGenerateSelectButton="True" BorderStyle="Solid" AllowSorting="True"   
            >  
<AlternatingRowStyle BackColor="#FF6600" ForeColor="Black" 
             Font-Names="Microsoft JhengHei Light" BorderColor="Black" BorderStyle="None"></AlternatingRowStyle>
         <Columns>  
         <asp:BoundField DataField="Emp_ID" HeaderText="ID" /> 
         <asp:BoundField DataField="Emp_Code" HeaderText="Code" SortExpression="Emp_Code" /> 
               <asp:BoundField DataField="Emp_Name" HeaderText="Name" SortExpression="Emp_Name" /> 
                <asp:BoundField DataField="Emp_Phone1" HeaderText="Phone Number" SortExpression="Emp_Phone1" /> 
                <asp:BoundField DataField="Emp_Phone2" HeaderText="Alternative Phone Number" SortExpression="Emp_Phone2" /> 
                <asp:BoundField DataField="Emp_Cubicle" HeaderText="Cubicle Number" SortExpression="Emp_Cubicle" /> 
                <asp:BoundField DataField="Emp_Exp" HeaderText="Employee Extension" SortExpression="Emp_Exp" /> 
               
            
                  <asp:TemplateField ItemStyle-HorizontalAlign="Center" 
                         HeaderText="Edit Employee Details">  
                    <ItemTemplate>  
                        <asp:LinkButton ID="lnkEdit" runat="server" HeaderText="Edit Status" Text="Edit Details" 
                         CommandArgument='<%# Eval("Emp_Name") %>'
    OnCommand="lnkRequestID_Click" ForeColor="White"></asp:LinkButton>  
                    </ItemTemplate>  

<ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:TemplateField>  
             <asp:TemplateField ShowHeader="False" HeaderText="Delete Row">
    <ItemTemplate>
        <asp:Button ID="DeleteButton" runat="server" Text="Delete"
                    CommandName="Delete" OnClientClick="return confirm('Are you sure you want to delete this Record?');"
                    AlternateText="Delete" />               
    </ItemTemplate>
</asp:TemplateField> 
               
            </Columns>  
             <EditRowStyle BackColor="Black" 
             Font-Names="Microsoft JhengHei UI Light" ForeColor="White" BorderStyle="None" />

<HeaderStyle BackColor="Black" ForeColor="White" 
               Font-Names="Microsoft JhengHei UI Light"></HeaderStyle>

         <PagerStyle BackColor="Black" Font-Names="Microsoft JhengHei UI Light" 
                    ForeColor="White" />
                <RowStyle Font-Names="Microsoft JhengHei UI Light" Font-Size="Small" 
                    ForeColor="Black" BackColor="#FF6600" BorderColor="Black" 
                    BorderStyle="None" />
                <SelectedRowStyle BackColor="#FF9933" />

     </asp:GridView>
            </div>

               
            <br />
       
    </form>
</body>
</html>
