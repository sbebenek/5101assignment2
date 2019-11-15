using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HTTP5101Assignment2
{
    public partial class UpdateTeacher : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            bool valid = true;
            string teacherid = Request.QueryString["teacherid"];
            if (String.IsNullOrEmpty(teacherid)) valid = false;

            try
            {
                Int32.Parse(teacherid);
            }
            catch (Exception ex)
            {
                //catching invalid URL ID entries
                valid = false;
            }

            if (valid)
            {
                var db = new SCHOOLDB();
                Dictionary<String, String> teacher_record = db.FindTeacher(Int32.Parse(teacherid));
                List<Dictionary<String, String>> rs = db.List_Query("select * from teachers order by teacherfname asc");

                if (teacher_record.Count > 0)
                {
                    teacher_FullName.InnerHtml = teacher_record["TEACHERFNAME"] + " " + teacher_record["TEACHERLNAME"];
                    teacher_FName.Text = teacher_record["TEACHERFNAME"];
                    teacher_LName.Text = teacher_record["TEACHERLNAME"];
                    employee_Number.Text = teacher_record["EMPLOYEENUMBER"];
                    hire_Date.Text = teacher_record["HIREDATE"];
                }
                else
                {
                    valid = false;
                }

            }
            if (!valid)
            {
                updateTeacherForm.InnerHtml = "There was an error finding that teacher. <br />";
                updateTeacherForm.InnerHtml += "<button type=\"button\" onclick=\"location.href = 'Teachers.aspx' \">Go Back</button>";
            }
        }

        protected void BackButton_Click(Object sender,
                       EventArgs e)
        {
            //sending teacher ID back to the individual view page when back button is clicked
            string teacherid = Request.QueryString["teacherid"];
            Response.Redirect("IndividualTeacher.aspx?teacherid=" + teacherid);
        }

        protected void UpdateButton_Click(Object sender,
                       EventArgs e)
        {
            //**DATABASE UPDATE CODE GOES HERE
            Response.Redirect("Teachers.aspx?cmd=updated");
        }
    }
}