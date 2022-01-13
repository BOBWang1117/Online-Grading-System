<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TeacherPage_Home.aspx.cs" Inherits="Online_Grading_System.TeacherPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Teacher Home</title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            <asp:Button ID="Button1" runat="server" Height="40px" OnClick="StudentAccountCreation_Click" Text="Student account creation" Width="279px" />
        </p>
        <p>
            <asp:Button ID="Button2" runat="server" OnClick="ManagementOfTheAssignments_Click" Text="Management of the assignments" Width="279px" Height="41px" />
        </p>
        <p>
            <asp:Button ID="Button3" runat="server" OnClick="AssignmentMarking_Click" Text="Assignment marking" Height="41px" Width="279px" />
        </p>
        <p>
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Management of Student Course" Height="41px" Width="279px" />
        </p>
        <p>
            <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Log out" Height="41px" Width="279px" />
        </p>
        <p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="SchoolEntityID" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="SchoolEntityID" HeaderText="SchoolEntityID" ReadOnly="True" SortExpression="SchoolEntityID" />
                    <asp:BoundField DataField="StudentID" HeaderText="StudentID" SortExpression="StudentID" />
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                    <asp:BoundField DataField="BirthDate" HeaderText="BirthDate" SortExpression="BirthDate" />
                    <asp:BoundField DataField="EmailAddress" HeaderText="EmailAddress" SortExpression="EmailAddress" />
                    <asp:BoundField DataField="ModifiedDate" HeaderText="ModifiedDate" SortExpression="ModifiedDate" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
        </p>
        <p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:whbConnectionString %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [Student].[Student]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Student].[Student] WHERE [SchoolEntityID] = @original_SchoolEntityID AND [StudentID] = @original_StudentID AND [FirstName] = @original_FirstName AND [LastName] = @original_LastName AND [Gender] = @original_Gender AND (([BirthDate] = @original_BirthDate) OR ([BirthDate] IS NULL AND @original_BirthDate IS NULL)) AND (([EmailAddress] = @original_EmailAddress) OR ([EmailAddress] IS NULL AND @original_EmailAddress IS NULL)) AND (([ModifiedDate] = @original_ModifiedDate) OR ([ModifiedDate] IS NULL AND @original_ModifiedDate IS NULL))" InsertCommand="INSERT INTO [Student] ([SchoolEntityID], [StudentID], [FirstName], [LastName], [Gender], [BirthDate], [EmailAddress], [ModifiedDate]) VALUES (@SchoolEntityID, @StudentID, @FirstName, @LastName, @Gender, @BirthDate, @EmailAddress, @ModifiedDate)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Student].[Student] SET [StudentID] = @StudentID, [FirstName] = @FirstName, [LastName] = @LastName, [Gender] = @Gender, [BirthDate] = @BirthDate, [EmailAddress] = @EmailAddress, [ModifiedDate] = @ModifiedDate WHERE [SchoolEntityID] = @original_SchoolEntityID AND [StudentID] = @original_StudentID AND [FirstName] = @original_FirstName AND [LastName] = @original_LastName AND [Gender] = @original_Gender AND (([BirthDate] = @original_BirthDate) OR ([BirthDate] IS NULL AND @original_BirthDate IS NULL)) AND (([EmailAddress] = @original_EmailAddress) OR ([EmailAddress] IS NULL AND @original_EmailAddress IS NULL)) AND (([ModifiedDate] = @original_ModifiedDate) OR ([ModifiedDate] IS NULL AND @original_ModifiedDate IS NULL))">
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
        </p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
