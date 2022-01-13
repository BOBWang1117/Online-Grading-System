using System;
using System.Web.UI.WebControls;

namespace Online_Grading_System
{
    public partial class TeacherPage : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
            string userName = Request.QueryString["name"];
            if (userName == null)
            {
                Response.Redirect("Login.aspx");//页面重定向 （跳转页面）
            }
        }

        protected void StudentAccountCreation_Click(object sender, EventArgs e)
        {
            string userName = Request.QueryString["name"];
            Response.Redirect("TeacherPage_StudentAccountCreation.aspx?name=" + userName);//页面重定向 （跳转页面）
        }

        protected void ManagementOfTheAssignments_Click(object sender, EventArgs e)
        {
            string userName = Request.QueryString["name"];
            Response.Redirect("TeacherPage_ManagementOfTheAssignments.aspx?name=" + userName);//页面重定向 （跳转页面）
        }

        protected void AssignmentMarking_Click(object sender, EventArgs e)
        {
            string userName = Request.QueryString["name"];
            Response.Redirect("TeacherPage_AssignmentMarking.aspx?name=" + userName);//页面重定向 （跳转页面）
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string userName = Request.QueryString["name"];
            Response.Redirect("TeacherPage_ManagementOfStudentCourse.aspx?name=" + userName);//页面重定向 （跳转页面）
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");//页面重定向 （跳转页面）
        }
    }
}