<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TeacherPage_ManagementOfStudentCourse.aspx.cs" Inherits="Online_Grading_System.TeacherPage_ManagementOfStudentCourse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Management of Student Course</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="CourseName" runat="server" placeholder="CourseName"></asp:TextBox>
            <br />
            <asp:TextBox ID="StudentID" runat="server" placeholder="StudentID"></asp:TextBox>
            <br />
            <asp:Button ID="Add" runat="server" Text="Add" OnClick="Button1_Click" />
&nbsp;&nbsp;
        </div>
    </form>
</body>
</html>
