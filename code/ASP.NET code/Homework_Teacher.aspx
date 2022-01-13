<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homework_Teacher.aspx.cs" Inherits="Online_Grading_System.Homework_Teacher" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Homework Grading</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Title :
            <asp:Label ID="TitleText" runat="server"></asp:Label>
            <br />
            Course :
            <asp:Label ID="Coure" runat="server"></asp:Label>
            <br />
            StudentID :
            <asp:Label ID="StudentID" runat="server"></asp:Label>
            <br />
            <br />
            Homework1 :&nbsp;
            <asp:Label ID="Homework1" runat="server"></asp:Label>
&nbsp;&nbsp; (&nbsp;
            <asp:Label ID="Homework1_Weight" runat="server"></asp:Label>
&nbsp;points )<br />
            Score :
            <asp:TextBox ID="Homework1Score" runat="server"></asp:TextBox>
            <br />
            Student Answer :
            <br />
            <asp:TextBox ID="Homework1_TextBox" runat="server" Height="131px" Width="498px" TextMode="MultiLine" disabled="disabled"></asp:TextBox>
            <br />
            Evaluation :
            <br />
            <asp:TextBox ID="Evaluation1" runat="server" Height="58px" Width="493px" TextMode="MultiLine"></asp:TextBox>
            <br />
            <br />
            <br />
            Homework2 :&nbsp; <asp:Label ID="Homework2" runat="server"></asp:Label>
&nbsp;&nbsp; (&nbsp;
            <asp:Label ID="Homework2_Weight" runat="server"></asp:Label>
&nbsp;points )<br />
            Score :
            <asp:TextBox ID="Homework2Score" runat="server"></asp:TextBox>
            <br />
            Student Answer :
            <br />
            <asp:TextBox ID="Homework2_TextBox" runat="server" Height="131px" Width="498px" TextMode="MultiLine" disabled="disabled"></asp:TextBox>
            <br />
            Evaluation :
            <br />
            <asp:TextBox ID="Evaluation2" runat="server" Height="58px" Width="493px" TextMode="MultiLine"></asp:TextBox>
            <br />
            <br />
            <br />
            Homework3 :&nbsp;
            <asp:Label ID="Homework3" runat="server"></asp:Label>
&nbsp;&nbsp; (&nbsp;
            <asp:Label ID="Homework3_Weight" runat="server"></asp:Label>
&nbsp;points )<br />
            Score :
            <asp:TextBox ID="Homework3Score" runat="server"></asp:TextBox>
            <br />
            Student Answer :
            <br />
            <asp:TextBox ID="Homework3_TextBox" runat="server" Height="131px" Width="498px" TextMode="MultiLine" disabled="disabled"></asp:TextBox>
            <br />
            Evaluation :
            <br />
            <asp:TextBox ID="Evaluation3" runat="server" Height="58px" Width="493px" TextMode="MultiLine"></asp:TextBox>
            <br />
            <br />
            <br />
            Homework4 :&nbsp;
            <asp:Label ID="Homework4" runat="server"></asp:Label>
&nbsp;&nbsp; (&nbsp;
            <asp:Label ID="Homework4_Weight" runat="server"></asp:Label>
&nbsp;points )<br />
            Score :
            <asp:TextBox ID="Homework4Score" runat="server"></asp:TextBox>
            <br />
            Student Answer : <br />
            <asp:TextBox ID="Homework4_TextBox" runat="server" Height="131px" Width="498px" TextMode="MultiLine" disabled="disabled"></asp:TextBox>
            <br />
            Evaluation :
            <br />
            <asp:TextBox ID="Evaluation4" runat="server" Height="58px" Width="493px" TextMode="MultiLine"></asp:TextBox>
            <br />
            <br />
            <br />
            Homework5 :&nbsp;
            <asp:Label ID="Homework5" runat="server"></asp:Label>
&nbsp;&nbsp; (&nbsp;
            <asp:Label ID="Homework5_Weight" runat="server"></asp:Label>
&nbsp;points )<br />
            Score :
            <asp:TextBox ID="Homework5Score" runat="server"></asp:TextBox>
            <br />
            Student Answer :
            <br />
            <asp:TextBox ID="Homework5_TextBox" runat="server" Height="131px" Width="498px" TextMode="MultiLine" disabled="disabled"></asp:TextBox>
            <br />
            Evaluation :
            <br />
            <asp:TextBox ID="Evaluation5" runat="server" Height="58px" Width="493px" TextMode="MultiLine"></asp:TextBox>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Upload" runat="server" OnClick="Upload_Click" Text="Upload" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Back" runat="server" OnClick="Back_Click" Text="back" Width="60px" />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
