<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentPage_Home.aspx.cs" Inherits="Online_Grading_System.StudentPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Student Home</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Student Home<br />
            <br />
            <asp:Button ID="AssignmentSubmission_Button" runat="server" OnClick="AssignmentSubmission_Button_Click" Text="Assignment submission" />
            <br />
            <asp:Button ID="SummaryOfTheAssignment_Button" runat="server" OnClick="SummaryOfTheAssignment_Button_Click" Text="Summary of the assignment" />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Log out" />
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:whbConnectionString %>" SelectCommand="SELECT * FROM [Student].[Student] WHERE ([StudentID] = @StudentID)" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Student] WHERE [SchoolEntityID] = @original_SchoolEntityID AND [StudentID] = @original_StudentID AND [FirstName] = @original_FirstName AND [LastName] = @original_LastName AND [Gender] = @original_Gender AND (([BirthDate] = @original_BirthDate) OR ([BirthDate] IS NULL AND @original_BirthDate IS NULL)) AND (([EmailAddress] = @original_EmailAddress) OR ([EmailAddress] IS NULL AND @original_EmailAddress IS NULL)) AND (([ModifiedDate] = @original_ModifiedDate) OR ([ModifiedDate] IS NULL AND @original_ModifiedDate IS NULL))" InsertCommand="INSERT INTO [Student] ([SchoolEntityID], [StudentID], [FirstName], [LastName], [Gender], [BirthDate], [EmailAddress], [ModifiedDate]) VALUES (@SchoolEntityID, @StudentID, @FirstName, @LastName, @Gender, @BirthDate, @EmailAddress, @ModifiedDate)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE Student.Student SET StudentID = @StudentID, FirstName = @FirstName, LastName = @LastName, Gender = @Gender, BirthDate = @BirthDate, EmailAddress = @EmailAddress, ModifiedDate = @ModifiedDate WHERE (SchoolEntityID = @original_SchoolEntityID) AND (StudentID = @original_StudentID) AND (FirstName = @original_FirstName) AND (LastName = @original_LastName) AND (Gender = @original_Gender) AND (BirthDate = @original_BirthDate) AND (EmailAddress = @original_EmailAddress) AND (ModifiedDate = @original_ModifiedDate) OR (SchoolEntityID = @original_SchoolEntityID) AND (StudentID = @original_StudentID) AND (FirstName = @original_FirstName) AND (LastName = @original_LastName) AND (Gender = @original_Gender) AND (BirthDate IS NULL) AND (EmailAddress = @original_EmailAddress) AND (ModifiedDate = @original_ModifiedDate) AND (@original_BirthDate IS NULL) OR (SchoolEntityID = @original_SchoolEntityID) AND (StudentID = @original_StudentID) AND (FirstName = @original_FirstName) AND (LastName = @original_LastName) AND (Gender = @original_Gender) AND (BirthDate = @original_BirthDate) AND (EmailAddress IS NULL) AND (ModifiedDate = @original_ModifiedDate) AND (@original_EmailAddress IS NULL) OR (SchoolEntityID = @original_SchoolEntityID) AND (StudentID = @original_StudentID) AND (FirstName = @original_FirstName) AND (LastName = @original_LastName) AND (Gender = @original_Gender) AND (BirthDate IS NULL) AND (EmailAddress IS NULL) AND (ModifiedDate = @original_ModifiedDate) AND (@original_BirthDate IS NULL) AND (@original_EmailAddress IS NULL) OR (SchoolEntityID = @original_SchoolEntityID) AND (StudentID = @original_StudentID) AND (FirstName = @original_FirstName) AND (LastName = @original_LastName) AND (Gender = @original_Gender) AND (BirthDate = @original_BirthDate) AND (EmailAddress = @original_EmailAddress) AND (ModifiedDate IS NULL) AND (@original_ModifiedDate IS NULL) OR (SchoolEntityID = @original_SchoolEntityID) AND (StudentID = @original_StudentID) AND (FirstName = @original_FirstName) AND (LastName = @original_LastName) AND (Gender = @original_Gender) AND (BirthDate IS NULL) AND (EmailAddress = @original_EmailAddress) AND (ModifiedDate IS NULL) AND (@original_BirthDate IS NULL) AND (@original_ModifiedDate IS NULL) OR (SchoolEntityID = @original_SchoolEntityID) AND (StudentID = @original_StudentID) AND (FirstName = @original_FirstName) AND (LastName = @original_LastName) AND (Gender = @original_Gender) AND (BirthDate = @original_BirthDate) AND (EmailAddress IS NULL) AND (ModifiedDate IS NULL) AND (@original_EmailAddress IS NULL) AND (@original_ModifiedDate IS NULL) OR (SchoolEntityID = @original_SchoolEntityID) AND (StudentID = @original_StudentID) AND (FirstName = @original_FirstName) AND (LastName = @original_LastName) AND (Gender = @original_Gender) AND (BirthDate IS NULL) AND (EmailAddress IS NULL) AND (ModifiedDate IS NULL) AND (@original_BirthDate IS NULL) AND (@original_EmailAddress IS NULL) AND (@original_ModifiedDate IS NULL)">
                <DeleteParameters>
                    <asp:Parameter Name="original_SchoolEntityID" Type="Int32" />
                    <asp:Parameter Name="original_StudentID" Type="String" />
                    <asp:Parameter Name="original_FirstName" Type="String" />
                    <asp:Parameter Name="original_LastName" Type="String" />
                    <asp:Parameter Name="original_Gender" Type="String" />
                    <asp:Parameter Name="original_BirthDate" Type="String" />
                    <asp:Parameter Name="original_EmailAddress" Type="String" />
                    <asp:Parameter Name="original_ModifiedDate" Type="DateTime" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="SchoolEntityID" Type="Int32" />
                    <asp:Parameter Name="StudentID" Type="String" />
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter Name="BirthDate" Type="String" />
                    <asp:Parameter Name="EmailAddress" Type="String" />
                    <asp:Parameter Name="ModifiedDate" Type="DateTime" />
                </InsertParameters>
                <SelectParameters>
                    <asp:QueryStringParameter Name="StudentID" QueryStringField="name" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="StudentID" Type="String" />
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter Name="BirthDate" Type="String" />
                    <asp:Parameter Name="EmailAddress" Type="String" />
                    <asp:Parameter Name="ModifiedDate" Type="DateTime" />
                    <asp:Parameter Name="original_SchoolEntityID" Type="Int32" />
                    <asp:Parameter Name="original_StudentID" Type="String" />
                    <asp:Parameter Name="original_FirstName" Type="String" />
                    <asp:Parameter Name="original_LastName" Type="String" />
                    <asp:Parameter Name="original_Gender" Type="String" />
                    <asp:Parameter Name="original_BirthDate" Type="String" />
                    <asp:Parameter Name="original_EmailAddress" Type="String" />
                    <asp:Parameter Name="original_ModifiedDate" Type="DateTime" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False"  DataKeyNames="SchoolEntityID" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="SchoolEntityID" HeaderText="SchoolEntityID" SortExpression="SchoolEntityID" ReadOnly="True" />
                    <asp:BoundField DataField="StudentID" HeaderText="StudentID" SortExpression="StudentID" />
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                    <asp:BoundField DataField="BirthDate" HeaderText="BirthDate" SortExpression="BirthDate" />
                    <asp:BoundField DataField="EmailAddress" HeaderText="EmailAddress" SortExpression="EmailAddress" />
                    <asp:BoundField DataField="ModifiedDate" HeaderText="ModifiedDate" SortExpression="ModifiedDate" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
            <br />
        </div>
    </form>
</body>
</html>
