<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
    
<body style="height: 343px; width: 831px">
    <form id="form1" runat="server">
          <div style="height: 279px; width: 747px">
            <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" ViewStateMode="Enabled"></asp:TextBox>
              <br />
              <br />
              <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
              <br />
              <br />
              <br />
            <asp:Button ID="Button1" OnClick="Button1_Click" runat="server" Text="Button1" />
              <br />
              <br />
            <fieldset style=""width:300px"> 

            <legend><b>Gender</b></legend>
            
           
              
           
              <asp:RadioButton ID="Male" runat="server" GroupName="GenderGroup" OnCheckedChanged="Male_CheckedChanged" Text="Male" />
           
              &nbsp;<asp:RadioButton ID="Female" runat="server" GroupName="GenderGroup" OnCheckedChanged="Female_CheckedChanged" Text="Female" />
           
            </fieldset>
            <fieldset>

                <fieldset style=""width:300px"> 

                <legend><b>Hobbies</b></legend>
                <asp:CheckBoxList ID="CheckBoxList1" runat="server" AutoPostBack="true" CheckBoxList1_SelectedIndexChanged" >
                    <asp:ListItem Text="Bowling">Bowling </asp:ListItem>
                    <asp:ListItem Text="Swimming">Swimming </asp:ListItem>
                    <asp:ListItem Text="Driving while Texting">Driving while Texting </asp:ListItem>
                    </asp:CheckBoxList>
                       

            </fieldset>
            
        </div>

    </form>
       
      

</body>
</html>
