<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="test_WebApplication.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Online Grading System</title>
    <style type="text/css">
        .auto-style1 {
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <span lang="EN-US" style="font-size:10.5pt;mso-bidi-font-size:
11.0pt;font-family:DengXian;mso-ascii-theme-font:minor-latin;mso-fareast-theme-font:
minor-fareast;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;
mso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-US;mso-fareast-language:
ZH-CN;mso-bidi-language:AR-SA">Online Grading System</span><br />
            <asp:TextBox ID="TextBox1" runat="server" placeholder="LoginID"></asp:TextBox>
            <br />
            <asp:TextBox ID="TextBox2" runat="server" placeholder="Password"></asp:TextBox>
            <br />
            <br />

            <asp:RadioButtonList ID="radSale" runat="server" RepeatColumns="2" RepeatLayout="Flow">
            <asp:ListItem Text="Student" Value="1" Selected="True"></asp:ListItem>
            <asp:ListItem Text="Teacher" Value="0"></asp:ListItem>
            </asp:RadioButtonList>

            <br />

            <br />
            <asp:Button ID="Button1" runat="server" Text="log" onclick="btnLogin_Click" Width="158px"/>

            </div>
    </form>
</body>
</html>
