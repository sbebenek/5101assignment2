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
            students_result.InnerHtml += "<table class=\"table\"><thead><tr>" +
                    "<th>FIRST NAME</th>" +
                    "<th>LAST NAME</th>" +
                    "<th>EMPLOYEE NUMBER</th>" +
                    "<th>HIRE DATE</th>" +
                    "</tr></thead><tbody>";
            foreach (Dictionary<String, String> row in rs)
            {
                string teacherid = row["TEACHERID"];
                students_result.InnerHtml += "<a href=\"IndividualTeacher.aspx?teacherid=" + teacherid + "\"><tr>";



                string teacherfirstname = row["TEACHERFNAME"];
                students_result.InnerHtml += "<td>" + teacherfirstname + "</td>";

                string teacherlastname = row["TEACHERLNAME"];
                students_result.InnerHtml += "<td>" + teacherlastname + "</td>";

                string employeenumber = row["EMPLOYEENUMBER"];
                students_result.InnerHtml += "<td>" + employeenumber + "</td>";

                string hiredate = row["HIREDATE"];
                students_result.InnerHtml += "<td>" + hiredate + "</td>";

                students_result.InnerHtml += "</tr></a>";
            }
            students_result.InnerHtml += "</tbody><table>";

            if (Page.IsPostBack)
            {
                //clearing command div (no longer necessary after search is preformed)
                commandConfirm.InnerHtml = "";

                string searchValue = search_value.Text.ToString();
                students_result.InnerHtml = "";
                students_result.InnerHtml += "<table class=\"table\"><thead><tr>" +
                    "<th>FIRST NAME</th>" +
                    "<th>LAST NAME</th>" +
                    "<th>EMPLOYEE NUMBER</th>" +
                    "<th>HIRE DATE</th>" +
                    "</tr></thead><tbody>";


                List<Dictionary<String, String>> rows = db.List_Query("select * from TEACHERS where TEACHERFNAME like '%" + searchValue + "%' or TEACHERLNAME like '%" + searchValue + "%' or EMPLOYEENUMBER  like '%" + searchValue + "%' order by teacherfname asc");
                foreach (Dictionary<String, String> row in rows)
                {
                    string teacherid = row["TEACHERID"];
                    students_result.InnerHtml += "<a href=\"IndividualTeacher.aspx?teacherid=" + teacherid + "\"><tr>";

                    string teacherfirstname = row["TEACHERFNAME"];
                    students_result.InnerHtml += "<td>" + teacherfirstname + "</td>";

                    string teacherlastname = row["TEACHERLNAME"];
                    students_result.InnerHtml += "<td>" + teacherlastname + "</td>";

                    string employeenumber = row["EMPLOYEENUMBER"];
                    students_result.InnerHtml += "<td>" + employeenumber + "</td>";

                    string hiredate = row["HIREDATE"];
                    students_result.InnerHtml += "<td>" + hiredate + "</td>";

                    students_result.InnerHtml += "</tr></a>";
                }
                students_result.InnerHtml += "</tbody><table>";
            }
        }
    }
}