using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Grading_System
{
    public partial class StudentPage_Check : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string userName = Request.QueryString["name"];
            if (userName == null)
            {
                Response.Redirect("Login.aspx");//页面重定向 （跳转页面）
            }
        }

        protected void btnOpenClick(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Details")
            {
                int RowIndex = Convert.ToInt32(e.CommandArgument);
                string HomeworkID = GridView1.Rows[RowIndex].Cells[1].Text;
                string userName = Request.QueryString["name"];
                string ID = GridView1.Rows[RowIndex].Cells[0].Text; ;
                Response.Redirect("StudentPage_SummaryOfTheAssignment.aspx?name=" + userName + "&HomeworkID=" + HomeworkID+"&ID="+ID);
            }
        }
    }
}