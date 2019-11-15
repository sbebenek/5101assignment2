using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Diagnostics;


namespace HTTP5101Assignment2
{
    public partial class Teachers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Checking if page was reached after a CRUD command was just done on another page
            string command = Request.QueryString["cmd"];
            if (!String.IsNullOrEmpty(command))
            {
                commandConfirm.InnerHtml = "Entry " + command;
            }





            //DATABASE READING CODE
            var db = new SCHOOLDB();
           
            List<Dictionary<String, String>> rs = db.List_Query("select * from TEACHERS order by TEACHERFNAME asc");
            foreach (Dictionary<String, String> row in rs)
            {
                string studentid = row["TEACHERID"];
                students_result.InnerHtml += "<a href=\"IndividualTeacher.aspx?teacherid=" + studentid + "\"><div class=\"listitem\">";



                string studentfirstname = row["TEACHERFNAME"];
                students_result.InnerHtml += "<div class=\"col4\">" + studentfirstname + "</div>";

                string studentlastname = row["TEACHERLNAME"];
                students_result.InnerHtml += "<div class=\"col4\">" + studentlastname + "</div>";

                string studentnumber = row["EMPLOYEENUMBER"];
                students_result.InnerHtml += "<div class=\"col4\">" + studentnumber + "</div>";

                string enrolmentdate = row["HIREDATE"];
                students_result.InnerHtml += "<div class=\"col4last\">" + enrolmentdate + "</div>";

                students_result.InnerHtml += "</div></a>";
            }


            if (Page.IsPostBack)
            {
                //clearing command div (no longer necessary after search is preformed)
                commandConfirm.InnerHtml = "";

                string searchValue = search_value.Text.ToString();
                students_result.InnerHtml = "";
                students_result.InnerHtml += "<div class=\"listitem\">" +
                    "<div class=\"col4\">FIRST NAME</div>" +
                    "<div class=\"col4\">LAST NAME</div>" +
                    "<div class=\"col4\">EMPLOYEE NUMBER</div>" +
                    "<div class=\"col4last\">HIRE DATE</div>" +
                    "</div>";


                List<Dictionary<String, String>> rows = db.List_Query("select * from TEACHERS where TEACHERFNAME like '%" + searchValue + "%' or TEACHERLNAME like '%" + searchValue + "%' or EMPLOYEENUMBER  like '%" + searchValue + "%' order by teacherfname asc");
                foreach (Dictionary<String, String> row in rows)
                {
                    string studentid = row["TEACHERID"];
                    students_result.InnerHtml += "<a href=\"IndividualTeacher.aspx?teacherid=" + studentid + "\"><div class=\"listitem\">";

                    string studentfirstname = row["TEACHERFNAME"];
                    students_result.InnerHtml += "<div class=\"col4\">" + studentfirstname + "</div>";

                    string studentlastname = row["TEACHERLNAME"];
                    students_result.InnerHtml += "<div class=\"col4\">" + studentlastname + "</div>";

                    string studentnumber = row["EMPLOYEENUMBER"];
                    students_result.InnerHtml += "<div class=\"col4\">" + studentnumber + "</div>";

                    string enrolmentdate = row["HIREDATE"];
                    students_result.InnerHtml += "<div class=\"col4last\">" + enrolmentdate + "</div>";

                    students_result.InnerHtml += "</div></a>";
                }

            }
        }
    }
}