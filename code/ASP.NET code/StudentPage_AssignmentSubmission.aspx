<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentPage_AssignmentSubmission.aspx.cs" Inherits="Online_Grading_System.Assignmentsubmission" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Assignment Submission</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:whbConnectionString %>" SelectCommand="SELECT * FROM [Student].[Course] WHERE ([StudentID] = @StudentID)" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Student].[Course] WHERE [CourseID] = @original_CourseID AND [CourseName] = @original_CourseName AND [StudentID] = @original_StudentID" InsertCommand="INSERT INTO [Student].[Course] ([CourseID], [CourseName], [StudentID]) VALUES (@CourseID, @CourseName, @StudentID)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Student].[Course] SET [CourseName] = @CourseName, [StudentID] = @StudentID WHERE [CourseID] = @original_CourseID AND [CourseName] = @original_CourseName AND [StudentID] = @original_StudentID">
                <DeleteParameters>
                    <asp:Parameter Name="original_CourseID" Type="Int32" />
                    <asp:Parameter Name="original_CourseName" Type="String" />
                    <asp:Parameter Name="original_StudentID" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="CourseID" Type="Int32" />
                    <asp:Parameter Name="CourseName" Type="String" />
                    <asp:Parameter Name="StudentID" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:QueryStringParameter Name="StudentID" QueryStringField="name" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="CourseName" Type="String" />
                    <asp:Parameter Name="StudentID" Type="String" />
                    <asp:Parameter Name="original_CourseID" Type="Int32" />
                    <asp:Parameter Name="original_CourseName" Type="String" />
                    <asp:Parameter Name="original_StudentID" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="CourseID" OnRowCommand= "btnOpenClick" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:BoundField DataField="CourseID" HeaderText="CourseID" ReadOnly="True" SortExpression="CourseID" />
                    <asp:BoundField DataField="Course" HeaderText="Course" SortExpression="Course" />
                    <asp:BoundField DataField="StudentID" HeaderText="StudentID" SortExpression="StudentID" />
                    <asp:ButtonField CommandName="Details" ShowHeader="True" Text="Check" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
