using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HTTP5101Assignment2
{
    public partial class IndividualStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            bool valid = true;
            string studentid = Request.QueryString["studentid"];
            if (String.IsNullOrEmpty(studentid)) valid = false;

            try
            {
                Int32.Parse(studentid);
            }//end of try
            catch (Exception ex)
            {
                //catching invalid URL ID entries
                valid = false;
            }//end of catch

            if (valid)
            {
                var db = new SCHOOLDB();
                Dictionary<String, String> student_record = db.FindStudent(Int32.Parse(studentid));
                List<Dictionary<String, String>> rs = db.List_Query("select STUDENTS.*,count(studentnumber) as 'Enrolled classes' from STUDENTS join STUDENTSXCLASSES on STUDENTSXCLASSES.STUDENTID = STUDENTS.STUDENTID group by STUDENTS.STUDENTNUMBER order by STUDENTFNAME asc");

                if (student_record.Count > 0)
                {
                    student_title_fname.InnerHtml = student_record["STUDENTFNAME"] + " " + student_record["STUDENTLNAME"];
                    student_fname.InnerHtml = student_record["STUDENTFNAME"];
                    student_lname.InnerHtml = student_record["STUDENTLNAME"];
                    student_number.InnerHtml = student_record["STUDENTNUMBER"];
                    enrolment_date.InnerHtml = student_record["ENROLMENTDATE"];
                    //classes_enrolled.InnerHtml = student_record["Enrolled classes"];
                }
                else
                {
                    valid = false;
                }//end of if

            }
            if (!valid)
            {
                error.InnerHtml = "There was an error finding that student.";
                student.Visible = false;

            }//end of if
        }
        protected void DeleteButton_Click(Object sender,
                       EventArgs e)
        {
            //Method created in codebehind so that entry deletion can be handled by the server

            //**DATABASE DELETE CODE GOES HERE

            //Putting command=deleted in URL to confirm to Teachers page that something was just deleted
            Response.Redirect("Students.aspx?cmd=deleted");
        }

        //Update entry button clicked
        protected void UpdateButton_Click(Object sender,
                       EventArgs e)
        {
            string studentid = Request.QueryString["studentid"]; //Don't need to validate URL because it was already done on page load (these buttons wouldn't appear if invalid)
            //sends teacher ID to the update page
            Response.Redirect("UpdateStudent.aspx?studentid=" + studentid);
        }
    }
}