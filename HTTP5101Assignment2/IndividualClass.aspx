<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="IndividualClass.aspx.cs" Inherits="HTTP5101Assignment2.IndividualClass" %>

<asp:Content ID="student_view" ContentPlaceHolderID="MainContent" runat="server">

<%--    <div  runat="server">
        <h2></h2>
        Class Code: 
        <br />
        Class Name: 
        <br />
        Teacher: 
        <br />
        : 
        <br />
        : 
        <br />
        
    </div>
    <button type="button" onclick="location.href='Classes.aspx'">Go back</button>--%>
    <span id="error" runat="server"></span>
    <div class="card text-white bg-light mb-3" style="max-width: 50%;" id="class_content" runat="server">
        <div class="card-header text-dark">Details for <span id="class_title" runat="server"></span></div>
        <div class="card-body">
            <table class="table table-condensed">
                <tbody>
                    <tr>
                        <td>Class Code</td>
                        <td><span id="class_code" runat="server"></span></td>
                    </tr>
                    <tr>
                        <td>Class Name</td>
                        <td><span id="class_name" runat="server"></span></td>
                    </tr>
                    <tr>
                        <td>Teacher</td>
                        <td><span id="teacher" runat="server"></span></td>
                    </tr>
                    <tr>
                        <td>Start Date</td>
                        <td><span id="start_date" runat="server"></span></td>
                    </tr>
                    <tr>
                        <td>Finish Date</td>
                        <td><span id="finish_date" runat="server"></span></td>
                    </tr>
                </tbody>
            </table>
            <div class="btn-group">
                <asp:Button runat="server" Text="Update Entry" ID="updateButton" OnClick="UpdateButton_Click" CssClass="btn btn-warning" />
                <asp:Button runat="server" Text="Delete Entry" ID="deleteButton" OnClick="DeleteButton_Click" OnClientClick="return confirm('Are you sure you would like to delete this entry?');" cssClass="btn btn-danger"/>
                <button type="button" onclick="location.href='Classes.aspx'" class="btn btn-primary">Go back</button>
            </div>
            
        </div>
    </div>

</asp:Content>
