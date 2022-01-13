<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homework_Student.aspx.cs" Inherits="Online_Grading_System.Homework_Student" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Course Assignment</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Title :
            <asp:Label ID="TitleName" runat="server"></asp:Label>
            <br />
            course :
            <asp:Label ID="Course" runat="server"></asp:Label>
            <br />
            StudentID :
            <asp:Label ID="StudentID" runat="server"></asp:Label>
            <br />
            Homework1 :&nbsp;
            <asp:Label ID="Homework1" runat="server"></asp:Label>
&nbsp;&nbsp; (&nbsp;
            <asp:Label ID="Homework1_Weight" runat="server"></asp:Label>
&nbsp;points )<br />
            Your Answer :
            <br />
            <asp:TextBox ID="Homework1_TextBox" runat="server" Height="131px" Width="498px" TextMode="MultiLine"></asp:TextBox>
            <br />
            <br />
            Homework2 :&nbsp; <asp:Label ID="Homework2" runat="server"></asp:Label>
&nbsp;&nbsp; (&nbsp;
            <asp:Label ID="Homework2_Weight" runat="server"></asp:Label>
&nbsp;points )<br />
            Your Answer :
            <br />
            <asp:TextBox ID="Homework2_TextBox" runat="server" Height="131px" Width="498px" TextMode="MultiLine"></asp:TextBox>
            <br />
            <br />
            Homework3 :&nbsp;
            <asp:Label ID="Homework3" runat="server"></asp:Label>
&nbsp;&nbsp; (&nbsp;
            <asp:Label ID="Homework3_Weight" runat="server"></asp:Label>
&nbsp;points )<br />
            Your Answer :
            <br />
            <asp:TextBox ID="Homework3_TextBox" runat="server" Height="131px" Width="498px" TextMode="MultiLine"></asp:TextBox>
            <br />
            <br />
            Homework4 :&nbsp;
            <asp:Label ID="Homework4" runat="server"></asp:Label>
&nbsp;&nbsp; (&nbsp;
            <asp:Label ID="Homework4_Weight" runat="server"></asp:Label>
&nbsp;points )<br />
            Your Answer : <br />
            <asp:TextBox ID="Homework4_TextBox" runat="server" Height="131px" Width="498px" TextMode="MultiLine"></asp:TextBox>
            <br />
            <br />
            Homework5 :&nbsp;
            <asp:Label ID="Homework5" runat="server"></asp:Label>
&nbsp;&nbsp; (&nbsp;
            <asp:Label ID="Homework5_Weight" runat="server"></asp:Label>
&nbsp;points )<br />
            Your Answer :
            <br />
            <asp:TextBox ID="Homework5_TextBox" runat="server" Height="131px" Width="498px" TextMode="MultiLine"></asp:TextBox>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Submit" runat="server" OnClick="Submit_Click" Text="Submit" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Reset" runat="server" OnClick="Reset_Click" Text="Reset" />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
