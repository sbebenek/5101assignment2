<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="IndividualTeacher.aspx.cs" Inherits="HTTP5101Assignment2.WebForm1" %>

<asp:Content ID="teacher_view" ContentPlaceHolderID="MainContent" runat="server">

    <%--<div id="teacher" runat="server">
        <h4></h4>
        First Name: 
        <br />
        Last Name: 
        <br />
        Employee Number: 
        <br />
        Hire Date: 
        <br />
        
    </div>--%>
    
    <div class="card text-white bg-light mb-3" style="max-width: 50%;" id="teacher" runat="server">
        <div class="card-header text-dark">Details for <span id="teacher_title_fname" runat="server"></span></div>
        <div class="card-body">
            <table class="table table-condensed">
                <tbody>
                    <tr>
                        <td>First Name</td>
                        <td><span id="teacher_fname" runat="server"></span></td>
                    </tr>
                    <tr>
                        <td>Last Name</td>
                        <td><span id="teacher_lname" runat="server"></span></td>
                    </tr>
                    <tr>
                        <td>Employee Number</td>
                        <td><span id="employee_number" runat="server"></span></td>
                    </tr>
                    <tr>
                        <td>Hire Date</td>
                        <td><span id="hire_date" runat="server"></span></td>
                    </tr>
                </tbody>
            </table>
            <div class="btn-group">
                <asp:Button runat="server" Text="Update Entry" ID="updateButton" OnClick="UpdateButton_Click" CssClass="btn btn-warning"/>
                <asp:Button runat="server" Text="Delete Entry" ID="deleteButton" OnClick="DeleteButton_Click" OnClientClick="return confirm('Are you sure you would like to delete this entry?');" CssClass="btn btn-danger"/>
                <button type="button" onclick="location.href='Teachers.aspx'" class="btn btn-primary">Go back</button>
            </div>
            
        </div>
    </div>

</asp:Content>
