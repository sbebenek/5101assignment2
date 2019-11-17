using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HTTP5101Assignment2
{
    public partial class Classes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Disabling view of command div because it shows on load
            commandDiv.Visible = false;
            //Checking if page was reached after a CRUD command was just done on another page
            string command = Request.QueryString["cmd"];
            if (!String.IsNullOrEmpty(command))
            {
                commandDiv.Visible = true;
                commandConfirm.InnerHtml = "Entry " + command;
            }


            //DATABASE READING CODE
            var db = new SCHOOLDB();


            //Columns are: CLASSID, CLASSCODE, TEACHERID, STARTDATE, FINISHDATE, CLASSNAME
            List<Dictionary<String, String>> rs = db.List_Query("select CLASSES.*, TEACHERS.TEACHERFNAME, TEACHERS.TEACHERLNAME from CLASSES inner join TEACHERS on CLASSES.TEACHERID = TEACHERS.TEACHERID order by CLASSCODE asc");
            students_result.InnerHtml += "<table class=\"table\"><thead><tr>" +
                    "<th>CLASS CODE</th>" +
                    "<th>CLASS NAME</th>" +
                    "<th>TEACHER</th>" +
                    "<th>START DATE</th>" +
                    "<th>FINISH DATE</th>" +
                    "</tr></thead><tbody>";
            foreach (Dictionary<String, String> row in rs)
            {
                string classid = row["CLASSID"];
                students_result.InnerHtml += "<tr>";



                string classcode = row["CLASSCODE"];
                students_result.InnerHtml += "<td>" + classcode + "</td>";

                string classname = row["CLASSNAME"];
                students_result.InnerHtml += "<td><a href=\"IndividualClass.aspx?classid=" + classid + "\">" + classname + "</a></td>";

                string teacher = row["TEACHERFNAME"] + " " + row["TEACHERLNAME"];
                students_result.InnerHtml += "<td>" + teacher + "</td>";

                string startdate = row["STARTDATE"];
                students_result.InnerHtml += "<td>" + startdate + "</td>";

                string finishdate = row["FINISHDATE"];
                students_result.InnerHtml += "<td>" + finishdate + "</td>";

                students_result.InnerHtml += "</tr>";
            }
            students_result.InnerHtml += "</tbody><table>";

            if (Page.IsPostBack)
            {
                //clearing command div (no longer necessary after search is preformed)
                commandConfirm.InnerHtml = "";
                commandDiv.Visible = false;
                string searchValue = search_value.Text.ToString();
                students_result.InnerHtml = "";
                students_result.InnerHtml += "<table class=\"table\"><thead><tr>" +
                    "<th>CLASS CODE</th>" +
                    "<th>CLASS NAME</th>" +
                    "<th>TEACHER</th>" +
                    "<th>START DATE</th>" +
                    "<th>FINISH DATE</th>" +
                    "</tr></thead><tbody>";

                List<Dictionary<String, String>> rows = db.List_Query("select CLASSES.*, TEACHERS.TEACHERFNAME, TEACHERS.TEACHERLNAME from CLASSES inner join TEACHERS on " +
                    "CLASSES.TEACHERID = TEACHERS.TEACHERID where CLASSES.CLASSCODE like '%" + searchValue + "%' or CLASSES.CLASSNAME like '%" + searchValue + "%' or " +
                    "TEACHERS.TEACHERFNAME like '%" + searchValue + "%' or TEACHERS.TEACHERLNAME like '%" + searchValue + "%' order by CLASSCODE asc");
                foreach (Dictionary<String, String> row in rows)
                {
                    string classid = row["CLASSID"];
                    students_result.InnerHtml += "<tr>";


                    string classcode = row["CLASSCODE"];
                    students_result.InnerHtml += "<td>" + classcode + "</td>";

                    string classname = row["CLASSNAME"];
                    students_result.InnerHtml += "<td><a href=\"IndividualClass.aspx?classid=" + classid + "\">" + classname + "</a></td>";

                    string teacher = row["TEACHERFNAME"] + " " + row["TEACHERLNAME"];
                    students_result.InnerHtml += "<td>" + teacher + "</td>";

                    string startdate = row["STARTDATE"];
                    students_result.InnerHtml += "<td>" + startdate + "</td>";

                    string finishdate = row["FINISHDATE"];
                    students_result.InnerHtml += "<td>" + finishdate + "</td>";

                    students_result.InnerHtml += "</tr>";
                }
                students_result.InnerHtml += "</tbody><table>";
            }
        }
    }
}