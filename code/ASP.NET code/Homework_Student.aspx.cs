using System;
using System.Data.SqlClient;
using System.Data;


namespace Online_Grading_System
{
    public partial class Homework_Student : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Server=(local);Data Source = LAPTOP-BSO7LT4F\SQLEXPRESS;Initial Catalog=whb;Integrated Security=True");

        protected string _HomeworkRow;
        protected string search_HomeworkRow;
        protected string homeWorkID_Text;
        protected string titleName_Text;
        protected string course_Text;
        protected string studentID_Text;
        protected string homeWork1_Text;
        protected string homeWork1_weight_Text;
        protected string homeWork2_Text;
        protected string homeWork2_weight_Text;
        protected string homeWork3_Text;
        protected string homeWork3_weight_Text;
        protected string homeWork4_Text;
        protected string homeWork4_weight_Text;
        protected string homeWork5_Text;
        protected string homeWork5_weight_Text;
        protected string teacherID_Text;

        protected void getHomeWorkID()
        {
            homeWorkID_Text = Request.QueryString["HomeworkID"];
        }

        protected void getTitle()
        {
            string sql;
            sql = "SELECT Title FROM Teacher.Homework WHERE HomeworkID = '"+homeWorkID_Text+"'";
            SqlCommand cmd = new SqlCommand(sql);
            cmd.Connection = con;
            titleName_Text = cmd.ExecuteScalar().ToString();
        }

        protected void getCourseName()
        {
            string sql;
            sql = "SELECT Course FROM Teacher.Homework WHERE HomeworkID = " + homeWorkID_Text;
            SqlCommand cmd = new SqlCommand(sql);
            cmd.Connection = con;
            course_Text = cmd.ExecuteScalar().ToString();
        }

        protected void getStudentID()
        {
            studentID_Text = Request.QueryString["name"];
        }

        protected void getHomeWork1()
        {
            string sql;
            sql = "SELECT Homework1 FROM Teacher.Homework WHERE HomeworkID = " + homeWorkID_Text;
            SqlCommand cmd = new SqlCommand(sql);
            cmd.Connection = con;
            homeWork1_Text = cmd.ExecuteScalar().ToString();
        }

        protected void getHomeWork1_weight()
        {
            string sql;
            sql = "SELECT Homework1_Weight FROM Teacher.Homework WHERE HomeworkID = " + homeWorkID_Text;
            SqlCommand cmd = new SqlCommand(sql);
            cmd.Connection = con;
            homeWork1_weight_Text = cmd.ExecuteScalar().ToString();
        }

        protected void getHomeWork2()
        {
            string sql;
            sql = "SELECT Homework2 FROM Teacher.Homework WHERE HomeworkID = " + homeWorkID_Text;
            SqlCommand cmd = new SqlCommand(sql);
            cmd.Connection = con;
            homeWork2_Text = cmd.ExecuteScalar().ToString();
        }

        protected void getHomeWork2_weight()
        {
            string sql;
            sql = "SELECT Homework2_Weight FROM Teacher.Homework WHERE HomeworkID = " + homeWorkID_Text;
            SqlCommand cmd = new SqlCommand(sql);
            cmd.Connection = con;
            homeWork2_weight_Text = cmd.ExecuteScalar().ToString();
        }

        protected void getHomeWork3()
        {
            string sql;
            sql = "SELECT Homework3 FROM Teacher.Homework WHERE HomeworkID = " + homeWorkID_Text;
            SqlCommand cmd = new SqlCommand(sql);
            cmd.Connection = con;
            homeWork3_Text = cmd.ExecuteScalar().ToString();
        }

        protected void getHomeWork3_weight()
        {
            string sql;
            sql = "SELECT Homework3_Weight FROM Teacher.Homework WHERE HomeworkID = " + homeWorkID_Text;
            SqlCommand cmd = new SqlCommand(sql);
            cmd.Connection = con;
            homeWork3_weight_Text = cmd.ExecuteScalar().ToString();
        }

        protected void getHomeWork4()
        {
            string sql;
            sql = "SELECT Homework4 FROM Teacher.Homework WHERE HomeworkID = " + homeWorkID_Text;
            SqlCommand cmd = new SqlCommand(sql);
            cmd.Connection = con;
            homeWork4_Text = cmd.ExecuteScalar().ToString();
        }

        protected void getHomeWork4_weight()
        {
            string sql;
            sql = "SELECT Homework4_Weight FROM Teacher.Homework WHERE HomeworkID = " + homeWorkID_Text;
            SqlCommand cmd = new SqlCommand(sql);
            cmd.Connection = con;
            homeWork4_weight_Text = cmd.ExecuteScalar().ToString();
        }

        protected void getHomeWork5()
        {
            string sql;
            sql = "SELECT Homework5 FROM Teacher.Homework WHERE HomeworkID = " + homeWorkID_Text;
            SqlCommand cmd = new SqlCommand(sql);
            cmd.Connection = con;
            homeWork5_Text = cmd.ExecuteScalar().ToString();
        }

        protected void getHomeWork5_weight()
        {
            string sql;
            sql = "SELECT Homework5_Weight FROM Teacher.Homework WHERE HomeworkID = " + homeWorkID_Text;
            SqlCommand cmd = new SqlCommand(sql);
            cmd.Connection = con;
            homeWork5_weight_Text = cmd.ExecuteScalar().ToString();
        }

        protected void getTeacherID()
        {
            string sql;
            sql = "SELECT TeacherID FROM Teacher.Homework WHERE HomeworkID = " + homeWorkID_Text;
            SqlCommand cmd = new SqlCommand(sql);
            cmd.Connection = con;
            teacherID_Text = cmd.ExecuteScalar().ToString();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            string sql;
            sql = "";
            SqlCommand cmd = new SqlCommand(sql);
            cmd.Connection = con;
            con.Open();
            getHomeWorkID();
            if (homeWorkID_Text==null)
            {
                Response.Redirect("Login.aspx");
            }
            getStudentID();
            getTitle();
            getCourseName();
            getHomeWork1();
            getHomeWork1_weight();
            getHomeWork2();
            getHomeWork2_weight();
            getHomeWork3();
            getHomeWork3_weight();
            getHomeWork4();
            getHomeWork4_weight();
            getHomeWork5();
            getHomeWork5_weight();
            HomeworkID();
            getTeacherID();

            TitleName.Text =titleName_Text;
            Course.Text =course_Text;
            StudentID.Text = studentID_Text;
            Homework1.Text = homeWork1_Text;
            Homework1_Weight.Text =homeWork1_weight_Text;
            Homework2.Text = homeWork2_Text;
            Homework2_Weight.Text =homeWork2_weight_Text;
            Homework3.Text = homeWork3_Text;
            Homework3_Weight.Text =homeWork3_weight_Text;
            Homework4.Text = homeWork4_Text;
            Homework4_Weight.Text =homeWork4_weight_Text;
            Homework5.Text = homeWork5_Text;
            Homework5_Weight.Text =homeWork5_weight_Text;

            con.Close();

        }

        protected void HomeworkID()
        {
            int HomeworkRow;
            string sql;
            sql = "SELECT	COUNT(*) FROM Homework.Student ";
            SqlCommand cmd_sr = new SqlCommand(sql);
            cmd_sr.Connection = con;
            HomeworkRow = (int)cmd_sr.ExecuteScalar() + 1;
            search_HomeworkRow = (HomeworkRow-1).ToString();
            _HomeworkRow = HomeworkRow.ToString();
        }

        //protected void Date()
        //{
        //    string sql,time;
        //    time= DateTime.Now.ToString("yyyy-MM-dd");
        //    sql = "UPDATE [Homework].[Student] SET ModifiedDate = '"+time+"' WHERE ID = '"+ search_HomeworkRow + "'";
        //    SqlCommand cmd = new SqlCommand(sql);
        //    cmd.Connection = con;
        //    cmd.ExecuteNonQuery();
        //}

        protected void Submit_Click(object sender, EventArgs e)
        {
            string Homework1Answer;
            string Homework2Answer;
            string Homework3Answer;
            string Homework4Answer;
            string Homework5Answer;

        Homework1Answer = Homework1_TextBox.Text;
            Homework2Answer = Homework2_TextBox.Text;
            Homework3Answer = Homework3_TextBox.Text;
            Homework4Answer = Homework4_TextBox.Text;
            Homework5Answer = Homework5_TextBox.Text;

            string sql;
            sql = "INSERT INTO [Homework].[Student](ID,HomeworkID,StudentID,TeacherID,Course,Title) values('"+_HomeworkRow+"','"+homeWorkID_Text+"','"+studentID_Text+"','"+teacherID_Text+"','"+course_Text+"','"+titleName_Text+"') ";
            SqlCommand cmd = new SqlCommand(sql);
            cmd.Connection = con;
            con.Open();
            cmd.ExecuteNonQuery();

            if (Homework1Answer != null)
            {
       
                sql = "UPDATE [Homework].[Student] SET Answer1 ='" + Homework1Answer + "' WHERE ID = " + _HomeworkRow + " ";
                SqlCommand cmd_HW1 = new SqlCommand(sql);
                cmd_HW1.Connection = con;
                cmd_HW1.ExecuteNonQuery();
            }
            if (Homework2Answer != null)
            {
                sql = "UPDATE [Homework].[Student] SET Answer2 ='" + Homework2Answer + "' WHERE ID = " + _HomeworkRow + "";
                SqlCommand cmd_HW2 = new SqlCommand(sql);
                cmd_HW2.Connection = con;
                cmd_HW2.ExecuteNonQuery();
            }
            if (Homework3Answer != null)
            {
                sql = "UPDATE [Homework].[Student] SET Answer3 ='" + Homework3Answer + "' WHERE ID = " + _HomeworkRow + "";
                SqlCommand cmd_HW3 = new SqlCommand(sql);
                cmd_HW3.Connection = con;
                cmd_HW3.ExecuteNonQuery();
            }
            if (Homework4Answer != null)
            {
                sql = "UPDATE [Homework].[Student] SET Answer4 ='" + Homework4Answer + "' WHERE ID = " + _HomeworkRow + "";
                SqlCommand cmd_HW4 = new SqlCommand(sql);
                cmd_HW4.Connection = con;
                cmd_HW4.ExecuteNonQuery();
            }
            if (Homework5Answer != null)
            {
                sql = "UPDATE [Homework].[Student] SET Answer5 ='" + Homework5Answer + "' WHERE ID = " + _HomeworkRow + "";
                SqlCommand cmd_HW5 = new SqlCommand(sql);
                cmd_HW5.Connection = con;
                cmd_HW5.ExecuteNonQuery();
            }
            //Date();
            Response.Write("<script>alert('success')</script>");
            Response.Redirect("StudentPage_Home.aspx?name=" + studentID_Text);
            con.Close();
            //Response.Write("<script>alert('success')</script>");
        }

        protected void Reset_Click(object sender, EventArgs e)
        {
            Response.Redirect("Homework_Student.aspx?name=" + studentID_Text + "&HomeworkID=" + homeWorkID_Text);
        }
    }
}