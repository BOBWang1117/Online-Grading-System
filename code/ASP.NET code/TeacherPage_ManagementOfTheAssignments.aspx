<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TeacherPage_ManagementOfTheAssignments.aspx.cs" Inherits="Online_Grading_System.TeacherPage_AssignmentMarking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Management of the assignment</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Management of the assignment<br />
            <br />
            Select a DueDate:<br />
            <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="195px" Width="335px">
                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                <NextPrevStyle VerticalAlign="Bottom" />
                <OtherMonthDayStyle ForeColor="#808080" />
                <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                <SelectorStyle BackColor="#CCCCCC" />
                <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                <WeekendDayStyle BackColor="#FFFFCC" />
            </asp:Calendar>
            <br />
            <asp:TextBox ID="Course" runat="server" placeholder="Course" ></asp:TextBox>
            <br />
            <asp:TextBox ID="Title" runat="server" placeholder="Title"></asp:TextBox>
            <br />
            <br />
            Homework1:<br />
            <asp:TextBox ID="Homework1_Weight" runat="server" placeholder="Homework1_Weight"></asp:TextBox>
            <br />
            <asp:TextBox ID="Homework1" runat="server" placeholder="Homework1" Height="146px" Width="446px" TextMode="MultiLine"></asp:TextBox>
            <br />
            <br />
            Homework2:<br />
            <asp:TextBox ID="Homework2_Weight" runat="server" placeholder="Homework2_Weight"></asp:TextBox>
            <br />
            <asp:TextBox ID="Homework2" runat="server" placeholder="Homework2" Height="146px" Width="446px" TextMode="MultiLine"></asp:TextBox>
            <br />
            <br />
            Homework3:<br />
            <asp:TextBox ID="Homework3_Weight" runat="server" placeholder="Homework3_Weight"></asp:TextBox>
            <br />
            <asp:TextBox ID="Homework3" runat="server" placeholder="Homework3" Height="146px" Width="446px" TextMode="MultiLine"></asp:TextBox>
            <br />
            <br />
            Homework4:<br />
            <asp:TextBox ID="Homework4_Weight" runat="server" placeholder="Homework4_Weight"></asp:TextBox>
            <br />
            <asp:TextBox ID="Homework4" runat="server" placeholder="Homework4" Height="146px" Width="446px" TextMode="MultiLine"></asp:TextBox>
            <br />
            <br />
            Homework5:<br />
            <asp:TextBox ID="Homework5_Weight" runat="server" placeholder="Homework5_Weight"></asp:TextBox>
            <br />
            <asp:TextBox ID="Homework5" runat="server" placeholder="Homework5" Height="146px" Width="446px" TextMode="MultiLine"></asp:TextBox>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Creat_Button" runat="server" OnClick="Button1_Click" Text="Creat" Width="55px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Cancel_Button" runat="server" OnClick="Button2_Click" Text="Cancel" />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
