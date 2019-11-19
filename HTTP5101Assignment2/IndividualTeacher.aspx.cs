using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HTTP5101Assignment2
{
    public partial class WebForm1 : System.Web.UI.Page
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
                    teacher_title_fname.InnerHtml = teacher_record["TEACHERFNAME"] + " " + teacher_record["TEACHERLNAME"];
                    teacher_fname.InnerHtml = teacher_record["TEACHERFNAME"];
                    teacher_lname.InnerHtml = teacher_record["TEACHERLNAME"];
                    employee_number.InnerHtml = teacher_record["EMPLOYEENUMBER"];
                    hire_date.InnerHtml = teacher_record["HIREDATE"];
                }
                else
                {
                    valid = false;
                }

            }
            if (!valid)
            {
                error.InnerHtml = "There was an error finding that student.";
                teacher.Visible = false;

            }


        }
        //Delete entry button clicked
        protected void DeleteButton_Click(Object sender,
                       EventArgs e)
        {
            //Method created in codebehind so that entry deletion can be handled by the server

            //**DATABASE DELETE CODE GOES HERE

            //Putting command=deleted in URL to confirm to Teachers page that something was just deleted
            Response.Redirect("Teachers.aspx?cmd=deleted");
        }

        //Update entry button clicked
        protected void UpdateButton_Click(Object sender,
                       EventArgs e)
        {
            string teacherid = Request.QueryString["teacherid"]; //Don't need to validate URL because it was already done on page load (these buttons wouldn't appear if invalid)
            //sends teacher ID to the update page
            Response.Redirect("UpdateTeacher.aspx?teacherid=" + teacherid);
        }
    }
}