using System;
using System.Data.SqlClient;


namespace Online_Grading_System
{
    public partial class TeacherPage_StudentAccountCreation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string userName = Request.QueryString["name"];
            if (userName == null)
            {
                Response.Redirect("Login.aspx");//页面重定向 （跳转页面）
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            string FirstName = _FirstName.Text;
            string LastName = _LastName.Text;
            string E_mail = _E_mail.Text;
            string BirthDate = _BirthDate.Text;
            string ModifiedDate = _ModifiedDate.Text;
            string GenderValue = Request.Form[this.radSale.UniqueID];
            string Gender;
            if (GenderValue.Equals("0") == true)
            {
               Gender = "M";
            }
            else
            {
                Gender = "F";
            }

            
            if (E_mail.Equals(""))
            {
                E_mail = "NULL";
            }
            if (BirthDate.Equals(""))
            {
                BirthDate = "NULL";
            }
            if (ModifiedDate.Equals(""))
            {
                ModifiedDate = DateTime.Now.ToString("yyyy-MM-dd");
            }

            string sql;
            //Open Connection
            SqlConnection con = new SqlConnection(@"Server=(local);Data Source = LAPTOP-BSO7LT4F\SQLEXPRESS;Initial Catalog=whb;Integrated Security=True");
            con.Open();

            //Get max SchoolEntityID
            int maxid;
            sql = "SELECT	MAX(SchoolEntityID) AS MAXID FROM	Person.Person";
            SqlCommand cmd = new SqlCommand(sql);
            cmd.Connection = con;
            maxid = (int)cmd.ExecuteScalar() + 1;

            //Get Password
            int password;
            string str_password;
            if (maxid < 10)
            {
                
                password = 100000 * maxid + 10000 * maxid + 1000 * maxid + 100 * maxid + 10 * maxid + maxid;
                str_password = password.ToString();
            }
            else
            {
                int maxid_change = maxid % 10;
                password = 100000 * (maxid_change % 10) + 10000 * (maxid_change % 10) + 1000 * maxid_change + 100 * maxid_change + 10 * maxid_change + maxid_change;
                if (password == 0)
                {
                    str_password = "000000";
                }
                else
                {
                    str_password = password.ToString();
                }
            }

            //Get Student_ID
            int StudentRow;
            string Student_ID;
            sql = "SELECT	COUNT(*) FROM	Student.Student ";
            SqlCommand cmd_sr = new SqlCommand(sql);
            cmd_sr.Connection = con;
            StudentRow = (int)cmd_sr.ExecuteScalar() + 1;
            Student_ID = "student"+StudentRow.ToString();

            //Person.Person
            sql = "INSERT INTO Person.Person(SchoolEntityID,PersonType,FirstName,LastName,ModifiedDate) values('" + maxid + "','SD', '" + FirstName + "', '" + LastName + "', '" + ModifiedDate + "')";
            SqlCommand cmd_insert_pp = new SqlCommand(sql);
            cmd_insert_pp.Connection = con;
            cmd_insert_pp.ExecuteNonQuery();

            //Person.Password
            sql = "INSERT INTO Person.Password(SchoolEntityID,LoginID,Password,PersonType,ModifiedDate) values('" + maxid + "', '" + Student_ID + "', '" + str_password + "', 'SD', '" + ModifiedDate + "')";
            SqlCommand cmd_insert_ppa = new SqlCommand(sql);
            cmd_insert_ppa.Connection = con;
            cmd_insert_ppa.ExecuteNonQuery();

            //Student,Student
            sql = "INSERT INTO Student.Student(SchoolEntityID,StudentID,FirstName,LastName,Gender,BirthDate,EmailAddress,ModifiedDate) values('" + maxid + "', '" + Student_ID + "', '" + FirstName + "', '" + LastName + "', '" + Gender + "','" + BirthDate + "','" + E_mail + "', '" + ModifiedDate + "')";
            SqlCommand cmd_insert_ss = new SqlCommand(sql);
            cmd_insert_ss.Connection = con;
            cmd_insert_ss.ExecuteNonQuery();

            //Student.Grade

            string name;
            name = LastName +" "+FirstName;
            sql = "INSERT INTO Student.Grade(SchoolEntityID,StudentID,Name) values('" + maxid + "', '" + Student_ID + "','"+name+"')";
            SqlCommand cmd_insert_sg = new SqlCommand(sql);
            cmd_insert_sg.Connection = con;
            cmd_insert_sg.ExecuteNonQuery();

            con.Close();
            Response.Write("<script>alert('success')</script>");
        }
    }
}