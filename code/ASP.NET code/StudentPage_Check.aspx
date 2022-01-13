<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentPage_Check.aspx.cs" Inherits="Online_Grading_System.StudentPage_Check" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Course Homework Grade</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:whbConnectionString %>" SelectCommand="SELECT [ID], [HomeworkID], [StudentID], [TeacherID], [Course], [Title], [TotalScore] FROM [Homework].[Student] WHERE ([StudentID] = @StudentID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="StudentID" QueryStringField="name" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <div>
            <br />
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="ID" OnRowCommand= "btnOpenClick" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="HomeworkID" HeaderText="HomeworkID" SortExpression="HomeworkID" />
                    <asp:BoundField DataField="Course" HeaderText="Course" SortExpression="Course" />
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                    <asp:BoundField DataField="TotalScore" HeaderText="TotalScore" SortExpression="TotalScore" />
                    <asp:ButtonField CommandName="Details" Text="Details" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
