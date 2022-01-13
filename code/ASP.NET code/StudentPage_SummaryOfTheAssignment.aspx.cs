using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Grading_System
{
    public partial class StudentPage_SummaryOfTheAssignment : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Server=(local);Data Source = LAPTOP-BSO7LT4F\SQLEXPRESS;Initial Catalog=whb;Integrated Security=True");

        protected string GPACal(float point)
        {
            string GPA;

            if (point > 90)
            {
                GPA = "4.0";
            }
            else if (point >= 85 && point < 90)
            {
                GPA = "3.7";
            }
            else if (point >= 82 && point < 85)
            {
                GPA = "3.3";
            }
            else if (point >= 78 && point < 82)
            {
                GPA = "3.0";
            }
            else if (point >= 75 && point < 78)
            {
                GPA = "2.7";
            }
            else if (point >= 72 && point < 75)
            {
                GPA = "2.3";
            }
            else if (point >= 68 && point < 72)
            {
                GPA = "2.0";
            }
            else if (point >= 64 && point < 68)
            {
                GPA = "1.5";
            }
            else if (point >= 60 && point < 64)
            {
                GPA = "1.0";
            }
            else
            {
                GPA = "0.0";
            }

            return GPA;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            //Question in Teacher.Homework
            //Answer in Homework.Student
            string userName = Request.QueryString["name"];
            string HomeworkID = Request.QueryString["HomeworkID"];
            string ID = Request.QueryString["ID"];

            if (userName == null)
            {
                Response.Redirect("Login.aspx");//页面重定向 （跳转页面）
            }

            string sql_Teacher;
            sql_Teacher = "SELECT * FROM Teacher.Homework WHERE HomeworkID = " + HomeworkID;
            SqlCommand cmd_Teacher = new SqlCommand(sql_Teacher);
            cmd_Teacher.Connection = con;
            con.Open();
            SqlDataReader data_Teacher = cmd_Teacher.ExecuteReader();

            if (data_Teacher.Read())
            {
                TitleText.Text = data_Teacher["Title"].ToString();
                Coure.Text = data_Teacher["Course"].ToString();
                StudentID.Text = userName;

                Homework1.Text = data_Teacher["Homework1"].ToString();
                Homework1_Weight.Text = data_Teacher["Homework1_Weight"].ToString();

                Homework2.Text = data_Teacher["Homework2"].ToString();
                Homework2_Weight.Text = data_Teacher["Homework2_Weight"].ToString();

                Homework3.Text = data_Teacher["Homework3"].ToString();
                Homework3_Weight.Text = data_Teacher["Homework3_Weight"].ToString();

                Homework4.Text = data_Teacher["Homework4"].ToString();
                Homework4_Weight.Text = data_Teacher["Homework4_Weight"].ToString();

                Homework5.Text = data_Teacher["Homework5"].ToString();
                Homework5_Weight.Text = data_Teacher["Homework5_Weight"].ToString();

            }

            con.Close();
            con.Open();
            string sql_Student;
            sql_Student = "SELECT * FROM Homework.Student WHERE ID = " + ID;
            SqlCommand cmd_Student = new SqlCommand(sql_Student);
            cmd_Student.Connection = con;
            SqlDataReader data_Student = cmd_Student.ExecuteReader();
            

            if (data_Student.Read())
            {
                float AVG;
                float count;
                float score;
                if (data_Student["Count"].ToString().Equals(""))
                {
                    count = 1;
                }
                else
                {
                    count = Convert.ToSingle(data_Student["Count"]);
                }
                if (data_Student["TotalScore"].ToString().Equals(""))
                {
                    score = 0;
                }
                else
                {
                    score = Convert.ToSingle(data_Student["TotalScore"].ToString());
                }
                AVG = score;
                AVG_Score.Text = AVG.ToString();
                GPA.Text = GPACal(AVG);
                Homework1_TextBox.Text = data_Student["Answer1"].ToString();
                Homework1Score.Text = data_Student["Answer1_Score"].ToString();
                Evaluation1.Text = data_Student["Answer1_Evaluation"].ToString();

                Homework2_TextBox.Text = data_Student["Answer2"].ToString();
                Homework2Score.Text = data_Student["Answer2_Score"].ToString();
                Evaluation2.Text = data_Student["Answer2_Evaluation"].ToString();

                Homework3_TextBox.Text = data_Student["Answer3"].ToString();
                Homework3Score.Text = data_Student["Answer3_Score"].ToString();
                Evaluation3.Text = data_Student["Answer3_Evaluation"].ToString();

                Homework4_TextBox.Text = data_Student["Answer4"].ToString();
                Homework4Score.Text = data_Student["Answer4_Score"].ToString();
                Evaluation4.Text = data_Student["Answer4_Evaluation"].ToString();

                Homework5_TextBox.Text = data_Student["Answer5"].ToString();
                Homework5Score.Text = data_Student["Answer5_Score"].ToString();
                Evaluation5.Text = data_Student["Answer5_Evaluation"].ToString();

            }
            con.Close();
        }
    }
}