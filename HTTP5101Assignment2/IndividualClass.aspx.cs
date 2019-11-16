using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HTTP5101Assignment2
{
    public partial class IndividualClass : System.Web.UI.Page
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
                Dictionary<String, String> class_record = db.FindClass(Int32.Parse(classid));
                List<Dictionary<String, String>> rs = db.List_Query("select CLASSES.*, TEACHERS.TEACHERFNAME, TEACHERS.TEACHERLNAME from CLASSES inner join TEACHERS on CLASSES.TEACHERID = TEACHERS.TEACHERID " +
                    "where CLASSID = "+  classid +" order by CLASSCODE asc");

                if (class_record.Count > 0)
                {
                    foreach (Dictionary<String, String> row in rs)
                    {
                        class_title.InnerHtml = row["CLASSCODE"] + ": " + row["CLASSNAME"];
                        class_code.InnerHtml = row["CLASSCODE"];
                        class_name.InnerHtml = row["CLASSNAME"];
                        teacher.InnerHtml = "<a href =\"IndividualTeacher.aspx?teacherid=" + row["TEACHERID"] + "\">" + row["TEACHERFNAME"] + " " + row["TEACHERLNAME"] + "</a>";
                        start_date.InnerHtml = row["STARTDATE"];
                        finish_date.InnerHtml = row["FINISHDATE"];
                    }
                }
                else
                {
                    valid = false;
                }

            }
            if (!valid)
            {
                class_content.InnerHtml = "There was an error finding that class.";
            }


        }
        //Delete entry button clicked
        protected void DeleteButton_Click(Object sender,
                       EventArgs e)
        {
            //Method created in codebehind so that entry deletion can be handled by the server

            //**DATABASE DELETE CODE GOES HERE

            //Putting command=deleted in URL to confirm to Teachers page that something was just deleted
            Response.Redirect("Classes.aspx?cmd=deleted");
        }

        //Update entry button clicked
        protected void UpdateButton_Click(Object sender,
                       EventArgs e)
        {
            string classid = Request.QueryString["classid"]; //Don't need to validate URL because it was already done on page load (these buttons wouldn't appear if invalid)
            //sends teacher ID to the update page
            Response.Redirect("UpdateClass.aspx?classid=" + classid);
        }
    }
}