using System;
using System.Data.SqlClient;


namespace Online_Grading_System
{
    public partial class TeacherPage_AssignmentMarking : System.Web.UI.Page
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

        protected int _HomeworkID()
        {
            
            int HomeworkRow;
            string sql;
            sql = "SELECT	COUNT(*) FROM	Teacher.Homework ";
            SqlCommand cmd_sr = new SqlCommand(sql);
            cmd_sr.Connection = con;
            HomeworkRow = (int)cmd_sr.ExecuteScalar() + 1;
            

            return HomeworkRow;
        }

        protected int _CourseID()
        {

            int CourseRow;
            string sql;
            sql = "SELECT	COUNT(*) FROM	Teacher.Course ";
            SqlCommand cmd_sr = new SqlCommand(sql);
            cmd_sr.Connection = con;
            CourseRow = (int)cmd_sr.ExecuteScalar() + 1;


            return CourseRow;
        }

        protected string TeacherID()
        {
            string userName = Request.QueryString["name"];

            return userName;
        }

        protected void HW2_Weight(string str,int ID)
        {
            string sql;
            sql = "UPDATE Teacher.Homework SET Homework2_Weight ='" + str + "' WHERE HomeworkID = " + ID + "";
            SqlCommand cmd = new SqlCommand(sql);
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
        }

        protected void HW2(string str,int ID)
        {
            string sql;
            sql = "UPDATE Teacher.Homework SET Homework2 ='" + str + "' WHERE HomeworkID = " + ID+"";
            SqlCommand cmd = new SqlCommand(sql);
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
        }

        protected void HW3_Weight(string str, int ID)
        {
            string sql;
            sql = "UPDATE Teacher.Homework SET Homework3_Weight ='" + str + "' WHERE HomeworkID = " + ID + "";
            SqlCommand cmd = new SqlCommand(sql);
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
        }

        protected void HW3(string str, int ID)
        {
            string sql;
            sql = "UPDATE Teacher.Homework SET Homework3 ='" + str + "' WHERE HomeworkID = " + ID + "";
            SqlCommand cmd = new SqlCommand(sql);
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
        }

        protected void HW4_Weight(string str, int ID)
        {
            string sql;
            sql = "UPDATE Teacher.Homework SET Homework4_Weight ='" + str + "' WHERE HomeworkID = " + ID + "";
            SqlCommand cmd = new SqlCommand(sql);
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
        }

        protected void HW4(string str, int ID)
        {
            string sql;
            sql = "UPDATE Teacher.Homework SET Homework4 ='" + str + "' WHERE HomeworkID = " + ID + "";
            SqlCommand cmd = new SqlCommand(sql);
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
        }

        protected void HW5_Weight(string str, int ID)
        {
            string sql;
            sql = "UPDATE Teacher.Homework SET Homework5_Weight ='" + str + "' WHERE HomeworkID = " + ID + "";
            SqlCommand cmd = new SqlCommand(sql);
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
        }

        protected void HW5(string str, int ID)
        {
            string sql;
            sql = "UPDATE Teacher.Homework SET Homework5 ='" + str + "' WHERE HomeworkID = " + ID + "";
            SqlCommand cmd = new SqlCommand(sql);
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
        }

        protected void Date(string str, int ID)
        {
            string sql;
            sql = "UPDATE Teacher.Homework SET DueDate ='" + str + "' WHERE HomeworkID = " + ID + "";
            SqlCommand cmd_Date = new SqlCommand(sql);
            cmd_Date.Connection = con;
            cmd_Date.ExecuteNonQuery();
        }

        protected Boolean TestCourse(string Course, string TeacherID)
        {
            Boolean Done=true;
            string sql;
            sql = "SELECT CourseName FROM Teacher.Course WHERE CourseName = '"+ Course + "' AND TeacherID = '"+TeacherID+"'";
            SqlCommand cmd = new SqlCommand(sql);
            cmd.Connection = con;
            if (cmd.ExecuteScalar() != null)
            {
                string data = cmd.ExecuteScalar().ToString();
                if (data.Equals(Course))
                {
                    Done = false;
                }
                else
                {
                    Done = true;
                }
            }
            return Done;

        }

        protected void doit(string Course_Text, string TeacherID_Text)
        {
            string CourseID_Text = _CourseID().ToString();
            string sql;
            sql = "INSERT INTO Teacher.Course(CourseID,CourseName,TeacherID) values('" + CourseID_Text + "','" + Course_Text + "','" + TeacherID_Text + "')";
            SqlCommand cmd = new SqlCommand(sql);
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string HomeworkID_Text;
            string TeacherID_Text;
            string Course_Text = Course.Text;
            string Title_Text = Title.Text;
            string Homework1_Weight_Text = Homework1_Weight.Text;
            string Homework1_Text = Homework1.Text;
            string Homework2_Weight_Text = Homework2_Weight.Text;
            string Homework2_Text = Homework2.Text;
            string Homework3_Weight_Text = Homework3_Weight.Text;
            string Homework3_Text = Homework3.Text;
            string Homework4_Weight_Text = Homework4_Weight.Text;
            string Homework4_Text = Homework4.Text;
            string Homework5_Weight_Text = Homework5_Weight.Text;
            string Homework5_Text = Homework5.Text;
            string DueDate = Calendar1_SelectionChanged();

            con.Open();
            int HomeworkID = _HomeworkID();
            HomeworkID_Text = HomeworkID.ToString();
            TeacherID_Text = TeacherID();

            string sql;
            sql = "INSERT INTO Teacher.Homework(HomeworkID,TeacherID,Course,Title,Homework1,Homework1_Weight) values('" + HomeworkID_Text + "','" + TeacherID_Text + "','" + Course_Text + "','" + Title_Text + "','" + Homework1_Text + "','" + Homework1_Weight_Text + "')";
            SqlCommand cmd = new SqlCommand(sql);
            cmd.Connection = con;
            cmd.ExecuteNonQuery();

            if (TestCourse(Course_Text, TeacherID_Text))
            {

                doit(Course_Text, TeacherID_Text);

            }


            if (!Homework2_Weight_Text.Equals(""))
            {
                HW2_Weight(Homework2_Weight_Text, HomeworkID);
            }
            if (!(Homework2_Text.Equals("")))
            {
                HW2(Homework2_Text, HomeworkID);
            }
            if (!(Homework3_Weight_Text.Equals("")))
            {
                HW3_Weight(Homework3_Weight_Text, HomeworkID);
            }
            if (!(Homework3_Text.Equals("")))
            {
                HW3(Homework3_Text, HomeworkID);
            }
            if (!(Homework4_Weight_Text.Equals("")))
            {
                HW4_Weight(Homework4_Weight_Text, HomeworkID);
            }
            if (!(Homework4_Text.Equals("")))
            {
                HW4(Homework4_Text, HomeworkID);
            }
            if (!(Homework5_Weight_Text.Equals("")))
            {
                HW5_Weight(Homework5_Weight_Text, HomeworkID);
            }
            if (!(Homework5_Text.Equals("")))
            {
                HW5(Homework5_Text, HomeworkID);
            }
            string str = Calendar1_SelectionChanged();
            Date(str, HomeworkID);
                
            

            con.Close();

            Response.Write(@"<script>alert('success！');</script>");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string userName = Request.QueryString["name"];
            Response.Redirect("TeacherPage_Home.aspx?name=" + userName);;
        }

        protected string Calendar1_SelectionChanged()
        {
            string str = Calendar1.SelectedDate.ToString("yyyy-MM-dd");
            return str;
        }


    }
}