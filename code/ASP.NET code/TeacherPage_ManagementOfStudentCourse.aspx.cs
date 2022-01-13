using System;
using System.Data.SqlClient;


namespace Online_Grading_System
{
    public partial class TeacherPage_ManagementOfStudentCourse : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Server=(local);Data Source = LAPTOP-BSO7LT4F\SQLEXPRESS;Initial Catalog=whb;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            string userName = Request.QueryString["name"];
            if (userName == null)
            {
                Response.Redirect("Login.aspx");//页面重定向 （跳转页面）
            }
        }

        protected int StudentCourseID()
        {
            int CourseRow;
            string sql;
            sql = "SELECT	COUNT(*) FROM Student.Course ";
            SqlCommand cmd_sr = new SqlCommand(sql);
            cmd_sr.Connection = con;
            CourseRow = (int)cmd_sr.ExecuteScalar() + 1;


            return CourseRow;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string courseRow;
            string courseName = CourseName.Text;
            string studentID = StudentID.Text;

            con.Open();
            courseRow = StudentCourseID().ToString();
            string sql;
            sql = "INSERT INTO Student.Course(CourseID,Course,StudentID) values('"+courseRow+"','"+courseName+"','"+studentID+"')";
            SqlCommand cmd = new SqlCommand(sql);
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('success')</script>");
            con.Close();
        }
    }
}