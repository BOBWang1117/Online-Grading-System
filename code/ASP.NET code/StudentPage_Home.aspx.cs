using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Grading_System
{
    public partial class StudentPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string userName = Request.QueryString["name"];
            if (userName == null)
            {
                Response.Redirect("Login.aspx");//页面重定向 （跳转页面）
            }
        }

        protected void AssignmentSubmission_Button_Click(object sender, EventArgs e)
        {
            string userName = Request.QueryString["name"];
            Response.Redirect("StudentPage_AssignmentSubmission.aspx?name=" + userName);//页面重定向 （跳转页面）
        }

        protected void SummaryOfTheAssignment_Button_Click(object sender, EventArgs e)
        {
            string userName = Request.QueryString["name"];
            Response.Redirect("StudentPage_Check.aspx?name=" + userName);//页面重定向 （跳转页面）
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}