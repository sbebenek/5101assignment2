<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="IndividualStudent.aspx.cs" Inherits="HTTP5101Assignment2.IndividualStudent" %>
<asp:Content ID="student_view" ContentPlaceHolderID="MainContent" runat="server">
    <span id="error" runat="server"></span>
     <div class="card text-white bg-light mb-3" style="max-width: 50%;" id="student" runat="server">
        <div class="card-header text-dark">Details for <span id="student_title_fname" runat="server"></span></div>
        <div class="card-body">
            <table class="table table-condensed">
                <tbody>
                    <tr>
                        <td>First Name</td>
                        <td><span id="student_fname" runat="server"></span></td>
                    </tr>
                    <tr>
                        <td>Last Name</td>
                        <td><span id="student_lname" runat="server"></span></td>
                    </tr>
                    <tr>
                        <td>Student Number</td>
                        <td><span id="student_number" runat="server"></span></td>
                    </tr>
                    <tr>
                        <td>Enrolment Date</td>
                        <td><span id="enrolment_date" runat="server"></span></td>
                    </tr>
                    <%--<tr>
                        <td>Classes Enrolled</td>
                        <td><span id="classes_enrolled" runat="server"></span></td>
                    </tr>--%>
                </tbody>
            </table>
            <div class="btn-group">
                <asp:Button runat="server" Text="Update Entry" ID="updateButton" OnClick="UpdateButton_Click" CssClass="btn btn-warning"/>
                <asp:Button runat="server" Text="Delete Entry" ID="deleteButton" OnClick="DeleteButton_Click" OnClientClick="return confirm('Are you sure you would like to delete this entry?');" CssClass="btn btn-danger"/>
                <button type="button" onclick="location.href='Students.aspx'" class="btn btn-primary">Go back</button>
            </div>
            
        </div>
    </div>
</asp:Content>
