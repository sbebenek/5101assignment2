using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HTTP5101Assignment2
{
    public partial class UpdateClass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            bool valid = true;
            string classid = Request.QueryString["classid"];
            if (String.IsNullOrEmpty(classid)) valid = false;

            try
            {
                Int32.Parse(classid);
            }
            catch (Exception ex)
            {
                //catching invalid URL ID entries
                valid = false;
            }

            if (valid)
            {
                var db = new SCHOOLDB();
                //SCHOOLDB.FindClass() is not actually needed since that method can't do inner joins. Only used in this case to check that there is an entry at the given ID
                Dictionary<String, String> class_record = db.FindTeacher(Int32.Parse(classid));
                List<Dictionary<String, String>> rs = db.List_Query("select CLASSES.*, TEACHERS.TEACHERFNAME, TEACHERS.TEACHERLNAME, TEACHERS.EMPLOYEENUMBER from CLASSES inner join TEACHERS on CLASSES.TEACHERID = TEACHERS.TEACHERID " +
                    "where CLASSID = " + classid + " order by CLASSCODE asc");

                if (class_record.Count > 0)
                {
                    foreach (Dictionary<String, String> row in rs)
                    {
                        classTitle.InnerHtml = row["CLASSCODE"] + ": " + row["CLASSNAME"];
                        classCode.Text = row["CLASSCODE"];
                        className.Text = row["CLASSNAME"];
                        employeeNumber.Text = row["EMPLOYEENUMBER"];
                        startDate.Text = row["STARTDATE"];
                        finishDate.Text = row["FINISHDATE"];
                    }
                }
                else
                {
                    valid = false;
                }

            }
            if (!valid)
            {
                updateClassForm.InnerHtml = "There was an error finding that Class. <br />";
                updateClassForm.InnerHtml += "<button type=\"button\" onclick=\"location.href = 'Classes.aspx' \">Go Back</button>";
            }
        }

        protected void BackButton_Click(Object sender,
                       EventArgs e)
        {
            //sending teacher ID back to the individual view page when back button is clicked
            string classid = Request.QueryString["classid"];
            Response.Redirect("IndividualClass.aspx?classid=" + classid);
        }

        protected void UpdateButton_Click(Object sender,
                       EventArgs e)
        {
            //**DATABASE UPDATE CODE GOES HERE
            Response.Redirect("Classes.aspx?cmd=updated");
        }
    }
}