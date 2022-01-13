using System;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI.HtmlControls;

namespace test_WebApplication
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

            if (TextBox1.Text == "")
            {
                Response.Write(@"<script>alert('Username can not be empty！');</script>");
            }
            if (TextBox2.Text == "")
            {
                Response.Write(@"<script>alert('password can not be empty！');</script>");
            }

            string username = TextBox1.Text;
            string password = TextBox2.Text;
            string radSale = Request.Form[this.radSale.UniqueID];
            string sql;

            if (radSale.Equals("0") == true)
            {
                sql = "SELECT * FROM Person.Password WHERE   LoginID = '" + username + "' AND Password = '" + password + "' AND PersonType = 'TC'";
            }
            else
            {
                sql = "SELECT * FROM Person.Password WHERE   LoginID = '" + username + "' AND Password = '" + password + "' AND PersonType = 'SD'";
            }

            SqlConnection con = new SqlConnection(@"Server=(local);Data Source = LAPTOP-BSO7LT4F\SQLEXPRESS;Initial Catalog=whb;Integrated Security=True");
            SqlCommand cmd = new SqlCommand(sql);
            cmd.Connection = con;

            //Open Connection
            con.Open();

            SqlDataReader data = cmd.ExecuteReader();
            //Determine whether the data is read
            if (data.Read())
            {
                if (radSale.Equals("0") == true)//teacher
                {
                    Response.Redirect("TeacherPage_Home.aspx?name="+username);//Page redirection (jump page)
                }
                else//student
                {
                    Response.Redirect("StudentPage_Home.aspx?name="+username);//Page redirection (jump page)
                }
            }
            else
            {
                Response.Write("<script>alert('Can not log in')</script>");
            }
        }
    }
}