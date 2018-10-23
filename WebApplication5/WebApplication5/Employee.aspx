<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="WebApplication5.Employee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
    
<body style="height: 486px; width: 862px">
    <form id="form1" runat="server">
          <div style="height: 584px; width: 862px">
              EMPLOYEE<br />
              <br />
              Name:
            <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" ViewStateMode="Enabled"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
              <br />
              <br />
              Phone.No<asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
              <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Input in integer" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
              <br />
              <br />
              Age :<asp:TextBox ID="TextBox3" runat="server" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
              <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="Input in integer" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
              <br />
              <br />
              <br />
            <asp:Button ID="Button1" OnClick="Button1_Click" runat="server" Text="Register" />
              <br />
              <br />
            <fieldset style=""width:300px"> 

            <legend><b>Gender</b></legend>
            
           
              
           
              <asp:RadioButton ID="Male" runat="server" GroupName="GenderGroup" OnCheckedChanged="Male_CheckedChanged" Text="Male" />
           
              &nbsp;<asp:RadioButton ID="Female" runat="server" GroupName="GenderGroup" OnCheckedChanged="Female_CheckedChanged" Text="Female" />
           
            </fieldset>
            <fieldset>

                <fieldset style=""width:400px"> 

                <legend><b>Skills</b></legend>
                <asp:CheckBoxList ID="CheckBoxList1" runat="server" AutoPostBack="true" CheckBoxList1_SelectedIndexChanged="" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged" >
                    <asp:ListItem Text="Accounting">Accountig </asp:ListItem>
                    <asp:ListItem Text="Computering">Computering </asp:ListItem>
                    <asp:ListItem Text="Managing">Managing </asp:ListItem>
                    </asp:CheckBoxList>
                       

            </fieldset>
            
        </div>

    </form>
       
      

</body>
</html>
