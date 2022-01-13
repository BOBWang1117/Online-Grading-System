using System;
using System.Data.SqlClient;


namespace Online_Grading_System
{
    public partial class Homework_Teacher : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Server=(local);Data Source = LAPTOP-BSO7LT4F\SQLEXPRESS;Initial Catalog=whb;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {


            //Question in Teacher.Homework
            //Answer in Homework.Student
            string userName = Request.QueryString["name"];
            string HomeworkID = Request.QueryString["HomeworkID"];
            string ID = Request.QueryString["ID"];
            string StudentID_Page_Text = Request.QueryString["StudentID"];

            if (userName==null)
            {
                Response.Redirect("Login.aspx");//页面重定向 （跳转页面）
            }

            string sql_Teacher;
            sql_Teacher = "SELECT * FROM Teacher.Homework WHERE HomeworkID = "+ HomeworkID;
            SqlCommand cmd_Teacher = new SqlCommand(sql_Teacher);
            cmd_Teacher.Connection = con;
            con.Open();
            SqlDataReader data_Teacher = cmd_Teacher.ExecuteReader();

            if (data_Teacher.Read())
            {
                TitleText.Text = data_Teacher["Title"].ToString();
                Coure.Text = data_Teacher["Course"].ToString();
                StudentID.Text = StudentID_Page_Text;

                Homework1.Text= data_Teacher["Homework1"].ToString();
                Homework1_Weight.Text= data_Teacher["Homework1_Weight"].ToString();
               

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
                Homework1_TextBox.Text = data_Student["Answer1"].ToString();

                Homework2_TextBox.Text = data_Student["Answer2"].ToString();

                Homework3_TextBox.Text = data_Student["Answer3"].ToString();

                Homework4_TextBox.Text = data_Student["Answer4"].ToString();

                Homework5_TextBox.Text = data_Student["Answer5"].ToString();
            }
            con.Close();
        }

        protected void HW1ScoreAndEvaluation(string Score,string Evaluation, string ID)
        {
            string sql;
            if (Evaluation == "" && Score != "")
            {
                sql = "UPDATE Homework.Student SET Answer1_Score = '" + Score + "', Answer1_Evaluation =  NULL WHERE ID = '" + ID + "'";
            }
            else if (Evaluation != "" && Score == "")
            {
                sql = "UPDATE Homework.Student SET Answer1_Score = NULL , Answer1_Evaluation = '" + Evaluation + "' WHERE ID = '" + ID + "'";
            }
            else if (Evaluation == "" && Score == "")
            {
                sql = "UPDATE Homework.Student SET Answer1_Score = NULL , Answer1_Evaluation = NULL WHERE ID = '" + ID + "'";
            }
            else
            {
                sql = "UPDATE Homework.Student SET Answer1_Score = '" + Score + "', Answer1_Evaluation = '" + Evaluation + "' WHERE ID = '" + ID + "'";
            }
            
            SqlCommand cmd = new SqlCommand(sql);
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
        }

        protected void HW2ScoreAndEvaluation(string Score, string Evaluation, string ID)
        {
            string sql;
            if (Evaluation == "" && Score != "")
            {
                sql = "UPDATE Homework.Student SET Answer2_Score = '" + Score + "', Answer2_Evaluation =  NULL WHERE ID = '" + ID + "'";
            }
            else if (Evaluation != "" && Score == "")
            {
                sql = "UPDATE Homework.Student SET Answer2_Score = NULL , Answer2_Evaluation = '" + Evaluation + "' WHERE ID = '" + ID + "'";
            }
            else if (Evaluation == "" && Score == "")
            {
                sql = "UPDATE Homework.Student SET Answer2_Score = NULL , Answer2_Evaluation = NULL WHERE ID = '" + ID + "'";
            }
            else
            {
                sql = "UPDATE Homework.Student SET Answer2_Score = '" + Score + "', Answer2_Evaluation = '" + Evaluation + "' WHERE ID = '" + ID + "'";
            }
            SqlCommand cmd = new SqlCommand(sql);
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
        }

        protected void HW3ScoreAndEvaluation(string Score, string Evaluation, string ID)
        {
            string sql;
            if (Evaluation == "" && Score != "")
            {
                sql = "UPDATE Homework.Student SET Answer3_Score = '" + Score + "', Answer3_Evaluation =  NULL WHERE ID = '" + ID + "'";
            }
            else if (Evaluation != "" && Score == "")
            {
                sql = "UPDATE Homework.Student SET Answer3_Score = NULL , Answer3_Evaluation = '" + Evaluation + "' WHERE ID = '" + ID + "'";
            }
            else if (Evaluation == "" && Score == "")
            {
                sql = "UPDATE Homework.Student SET Answer3_Score = NULL , Answer3_Evaluation = NULL WHERE ID = '" + ID + "'";
            }
            else
            {
                sql = "UPDATE Homework.Student SET Answer3_Score = '" + Score + "', Answer3_Evaluation = '" + Evaluation + "' WHERE ID = '" + ID + "'";
            }
            SqlCommand cmd = new SqlCommand(sql);
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
        }

        protected void HW4ScoreAndEvaluation(string Score, string Evaluation, string ID)
        {
            string sql;
            if (Evaluation == "" && Score != "")
            {
                sql = "UPDATE Homework.Student SET Answer4_Score = '" + Score + "', Answer4_Evaluation =  NULL WHERE ID = '" + ID + "'";
            }
            else if (Evaluation != "" && Score == "")
            {
                sql = "UPDATE Homework.Student SET Answer4_Score = NULL , Answer4_Evaluation = '" + Evaluation + "' WHERE ID = '" + ID + "'";
            }
            else if (Evaluation == "" && Score == "")
            {
                sql = "UPDATE Homework.Student SET Answer4_Score = NULL , Answer4_Evaluation = NULL WHERE ID = '" + ID + "'";
            }
            else
            {
                sql = "UPDATE Homework.Student SET Answer4_Score = '" + Score + "', Answer4_Evaluation = '" + Evaluation + "' WHERE ID = '" + ID + "'";
            }
            SqlCommand cmd = new SqlCommand(sql);
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
        }

        protected void HW5ScoreAndEvaluation(string Score, string Evaluation, string ID)
        {
            string sql;
            if (Evaluation == "" && Score != "")
            {
                sql = "UPDATE Homework.Student SET Answer5_Score = '" + Score + "', Answer5_Evaluation =  NULL WHERE ID = '" + ID + "'";
            }
            else if (Evaluation != "" && Score == "")
            {
                sql = "UPDATE Homework.Student SET Answer5_Score = NULL , Answer5_Evaluation = '" + Evaluation + "' WHERE ID = '" + ID + "'";
            }
            else if (Evaluation == "" && Score == "")
            {
                sql = "UPDATE Homework.Student SET Answer5_Score = NULL , Answer5_Evaluation = NULL WHERE ID = '" + ID + "'";
            }
            else
            {
                sql = "UPDATE Homework.Student SET Answer5_Score = '" + Score + "', Answer5_Evaluation = '" + Evaluation + "' WHERE ID = '" + ID + "'";
            }
            SqlCommand cmd = new SqlCommand(sql);
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
        }

        protected void SumScore(float Score,string ID)
        {
            string sql;
            sql = "UPDATE Homework.Student SET TotalScore = '"+Score+ "' WHERE ID = '" + ID + "'";
            SqlCommand cmd = new SqlCommand(sql);
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
        }

        protected void QuestionNumber(string count, string ID)
        {
            string sql;
            sql = "UPDATE Homework.Student SET Count = "+ count +"  WHERE ID = '" + ID + "'";
            Response.Write(sql);
            SqlCommand cmd = new SqlCommand(sql);
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
        }

        protected void Upload_Click(object sender, EventArgs e)
        {
            string ID;
            string Homework1Evaluation_Text;
            string Homework2Evaluation_Text;
            string Homework3Evaluation_Text;
            string Homework4Evaluation_Text;
            string Homework5Evaluation_Text;

            float Homework1Score_Text;
            float Homework2Score_Text;
            float Homework3Score_Text;
            float Homework4Score_Text;
            float Homework5Score_Text;

            float sum;
            int count = 0;

            ID = Request.QueryString["ID"];
            if (Homework1Score.Text != null)
            {
                Homework1Score_Text = Convert.ToSingle(Homework1Score.Text);
                count++;
            }
            else
            {
                Homework1Score_Text = 0;
            }
            if (Homework2Score.Text != "")
            {
                Homework2Score_Text = Convert.ToSingle(Homework2Score.Text);
                count++;
            }
            else
            {
                Homework2Score_Text = 0;
            }
            if (Homework3Score.Text != "")
            {
                Homework3Score_Text = Convert.ToSingle(Homework3Score.Text);
                count++;
            }
            else
            {
                Homework3Score_Text = 0;
            }
            if (Homework4Score.Text != "")
            {
                Homework4Score_Text = Convert.ToSingle(Homework4Score.Text);
                count++;
            }
            else
            {
                Homework4Score_Text = 0;
            }
            if (Homework5Score.Text != "")
            {
                Homework5Score_Text = Convert.ToSingle(Homework5Score.Text);
                count++;
            }
            else
            {
                Homework5Score_Text = 0;
            }

            Homework1Evaluation_Text = Evaluation1.Text;
            Homework2Evaluation_Text = Evaluation2.Text;
            Homework3Evaluation_Text = Evaluation3.Text;
            Homework4Evaluation_Text = Evaluation4.Text;
            Homework5Evaluation_Text = Evaluation5.Text;

            sum = Homework1Score_Text + Homework2Score_Text + Homework3Score_Text + Homework4Score_Text + Homework5Score_Text;

            con.Open();
            HW1ScoreAndEvaluation(Homework1Score_Text.ToString(), Homework1Evaluation_Text, ID);
            HW2ScoreAndEvaluation(Homework2Score_Text.ToString(), Homework2Evaluation_Text, ID);
            HW3ScoreAndEvaluation(Homework3Score_Text.ToString(), Homework3Evaluation_Text, ID);
            HW4ScoreAndEvaluation(Homework4Score_Text.ToString(), Homework4Evaluation_Text, ID);
            HW5ScoreAndEvaluation(Homework5Score_Text.ToString(), Homework5Evaluation_Text, ID);
            SumScore(sum, ID);
            QuestionNumber(count.ToString(), ID);
            con.Close();
            Response.Write("<script>alert('success')</script>");
        }

        protected void Back_Click(object sender, EventArgs e)
        {
            string userName = Request.QueryString["name"];
            Response.Redirect("TeacherPage_AssignmentMarking.aspx?name="+ userName);//页面重定向 （跳转页面）
        }
    }
}