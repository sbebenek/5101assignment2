using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HTTP5101Assignment2
{
    public partial class Students : System.Web.UI.Page
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

            //SELECT students.*,COUNT(`STUDENTNUMBER`) FROM STUDENTS
            //JOIN STUDENTSXCLASSES
            //ON STUDENTSXCLASSES.`STUDENTID` = STUDENTS.`STUDENTID`
            //GROUP BY `STUDENTID`;

            List<Dictionary<String, String>> rs = db.List_Query("select STUDENTS.*,count(studentnumber) as 'Enrolled classes' from STUDENTS join STUDENTSXCLASSES on STUDENTSXCLASSES.STUDENTID = STUDENTS.STUDENTID group by STUDENTS.STUDENTNUMBER order by STUDENTFNAME asc");
            students_result.InnerHtml += "<table class=\"table\"><thead><tr>" +
                    "<th>FIRST NAME</th>" +
                    "<th>LAST NAME</th>" +
                    "<th>STUDENT NUMBER</th>" +
                    "<th>ENROLMENT DATE</th>" +
                    "<th>CLASSES ENROLED</th>" +
                    "</tr></thead><tbody>";
            foreach (Dictionary<String, String> row in rs)
            {
                string studentid = row["STUDENTID"];
                students_result.InnerHtml += "<tr>";
                


                string studentfirstname = row["STUDENTFNAME"];
                students_result.InnerHtml += "<td><a href=\"IndividualStudent.aspx?studentid=" + studentid + "\">" + studentfirstname + "</a></td>";

                string studentlastname = row["STUDENTLNAME"];
                students_result.InnerHtml += "<td>" + studentlastname + "</td>";

                string studentnumber = row["STUDENTNUMBER"];
                students_result.InnerHtml += "<td>" + studentnumber + "</td>";

                string enrolmentdate = row["ENROLMENTDATE"];
                students_result.InnerHtml += "<td>" + enrolmentdate + "</td>";

                string enroledclasses = row["Enrolled classes"];
                students_result.InnerHtml += "<td>" + enroledclasses + "</td>";

                students_result.InnerHtml += "</tr>";
            }
            students_result.InnerHtml += "</tbody><table>";

            if (Page.IsPostBack)
            {
                //clearing command div (no longer necessary after search is preformed)
                commandConfirm.InnerHtml = "";
                commandDiv.Visible = false;
                string searchValue = search_value.Text.ToString();
                Console.WriteLine(searchValue);
                students_result.InnerHtml = "";
                students_result.InnerHtml += "<table class=\"table\"><thead><tr>" +
                    "<th>FIRST NAME</th>" +
                    "<th>LAST NAME</th>" +
                    "<th>STUDENT NUMBER</th>" +
                    "<th>ENROLMENT DATE</th>" +
                    "<th>CLASSES ENROLED</th>" +
                    "</tr></thead><tbody>";


                List<Dictionary<String, String>> rows = db.List_Query("select STUDENTS.*,count(studentnumber) as 'Enrolled classes' from STUDENTS join STUDENTSXCLASSES on STUDENTSXCLASSES.STUDENTID = STUDENTS.STUDENTID where STUDENTFNAME like '%" + searchValue + "%' or STUDENTLNAME like '%" + searchValue + "%' or STUDENTNUMBER  like '%" + searchValue + "%' group by STUDENTS.STUDENTNUMBER order by studentfname asc");
                foreach (Dictionary<String, String> row in rows)
                {
                    string studentid = row["STUDENTID"];
                    students_result.InnerHtml += "<tr>";

                    string studentfirstname = row["STUDENTFNAME"];
                    students_result.InnerHtml += "<td><a href=\"IndividualStudent.aspx?studentid=" + studentid + "\">" + studentfirstname + "</a></td>";

                    string studentlastname = row["STUDENTLNAME"];
                    students_result.InnerHtml += "<td>" + studentlastname + "</td>";

                    string studentnumber = row["STUDENTNUMBER"];
                    students_result.InnerHtml += "<td>" + studentnumber + "</td>";

                    string enrolmentdate = row["ENROLMENTDATE"];
                    students_result.InnerHtml += "<td>" + enrolmentdate + "</td>";

                    string enroledclasses = row["Enrolled classes"];
                    students_result.InnerHtml += "<td>" + enroledclasses + "</td>";

                    students_result.InnerHtml += "</tr>";
                }
                students_result.InnerHtml += "</tbody><table>";
            }
        }
    }
}