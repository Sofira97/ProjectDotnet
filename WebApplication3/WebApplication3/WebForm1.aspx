<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication3.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 240px; width: 716px">
    <form id="form1" runat="server">
        <div style="height: 217px">
            EMPLOYE<br />
            Name:<asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
            <br />
            <br />
            Phone.No<asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Input should be in integer" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
            <br />
            <br />
             IC:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Input should be ni integer" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
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
           
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register" />

        </div>
    </form>
</body>
</html>
