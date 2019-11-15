<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="IndividualTeacher.aspx.cs" Inherits="HTTP5101Assignment2.WebForm1" %>

<asp:Content ID="student_view" ContentPlaceHolderID="MainContent" runat="server">

    <div id="teacher" runat="server">
        <h2>Details for <span id="teacher_title_fname" runat="server"></span></h2>
        First Name: <span id="teacher_fname" runat="server"></span>
        <br />
        Last Name: <span id="teacher_lname" runat="server"></span>
        <br />
        Employee Number: <span id="employee_number" runat="server"></span>
        <br />
        Hire Date: <span id="hire_date" runat="server"></span>
        <br />
        <asp:Button runat="server" Text="Update Entry" ID="updateButton" OnClick="UpdateButton_Click" />
        <asp:Button runat="server" Text="Delete Entry" ID="deleteButton" OnClick="DeleteButton_Click" OnClientClick="return confirm('Are you sure you would like to delete this entry?');" />
    </div>
    <button type="button" onclick="location.href='Teachers.aspx'">Go back</button>


</asp:Content>
