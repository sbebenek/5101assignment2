using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HTTP5101Assignment2
{
    public partial class UpdateStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            bool valid = true;
            string studentid = Request.QueryString["studentid"];
            if (String.IsNullOrEmpty(studentid)) valid = false;

            try
            {
                Int32.Parse(studentid);
            }
            catch (Exception ex)
            {
                //catching invalid URL ID entries
                valid = false;
            }

            if (valid)
            {
                var db = new SCHOOLDB();
                Dictionary<String, String> student_record = db.FindStudent(Int32.Parse(studentid));
                List<Dictionary<String, String>> rs = db.List_Query("select * from students order by studentfname asc");

                if (student_record.Count > 0)
                {
                    student_FullName.InnerHtml = student_record["STUDENTFNAME"] + " " + student_record["STUDENTLNAME"];
                    student_FName.Text = student_record["STUDENTFNAME"];
                    student_LName.Text = student_record["STUDENTLNAME"];
                    student_Number.Text = student_record["STUDENTNUMBER"];
                    enrolment_Date.Text = student_record["ENROLMENTDATE"];
                }
                else
                {
                    valid = false;
                }

            }
            if (!valid)
            {
                updatestudentForm.InnerHtml = "There was an error finding that student. <br />";
                updatestudentForm.InnerHtml += "<button type=\"button\" class=\"btn btn-primary\" onclick=\"location.href = 'Students.aspx' \">Go Back</button>";
            }
        }
        protected void BackButton_Click(Object sender,
                       EventArgs e)
        {
            //sending student ID back to the individual view page when back button is clicked
            string studentid = Request.QueryString["studentid"];
            Response.Redirect("IndividualStudent.aspx?studentid=" + studentid);
        }

        protected void UpdateButton_Click(Object sender,
                       EventArgs e)
        {
            //**DATABASE UPDATE CODE GOES HERE
            Response.Redirect("Students.aspx?cmd=updated");
        }
    }
}