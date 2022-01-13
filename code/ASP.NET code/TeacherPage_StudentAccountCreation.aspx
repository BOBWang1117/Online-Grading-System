<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TeacherPage_StudentAccountCreation.aspx.cs" Inherits="Online_Grading_System.TeacherPage_StudentAccountCreation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Student Account Creation</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="_FirstName" runat="server" placeholder="FirstName"></asp:TextBox>
            <br />
            <asp:TextBox ID="_LastName" runat="server" placeholder="LastName"></asp:TextBox>
            <br />
            <asp:TextBox ID="_E_mail" runat="server" placeholder="E-mail"></asp:TextBox>
            <br />
            <asp:TextBox ID="_BirthDate" runat="server" placeholder="BirthDate"></asp:TextBox>
            <br />
            <asp:TextBox ID="_ModifiedDate" runat="server" placeholder="ModifiedDate"></asp:TextBox>
            <br />
            <asp:RadioButtonList ID="radSale" runat="server" RepeatColumns="2" RepeatLayout="Flow">
                <asp:ListItem Selected="True" Text="Mail" Value="0"></asp:ListItem>
                <asp:ListItem Text="Femail"      Value ="1"></asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <asp:Button ID="Button1" runat="server" Text="submit" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
