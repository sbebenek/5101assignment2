<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="IndividualClass.aspx.cs" Inherits="HTTP5101Assignment2.IndividualClass" %>

<asp:Content ID="student_view" ContentPlaceHolderID="MainContent" runat="server">

    <div id="class_content" runat="server">
        <h2>Details for <span id="class_title" runat="server"></span></h2>
        Class Code: <span id="class_code" runat="server"></span>
        <br />
        Class Name: <span id="class_name" runat="server"></span>
        <br />
        Teacher: <span id="teacher" runat="server"></span>
        <br />
        Start Date: <span id="start_date" runat="server"></span>
        <br />
        Finish Date: <span id="finish_date" runat="server"></span>
        <br />
        <asp:Button runat="server" Text="Update Entry" ID="updateButton" OnClick="UpdateButton_Click" />
        <asp:Button runat="server" Text="Delete Entry" ID="deleteButton" OnClick="DeleteButton_Click" OnClientClick="return confirm('Are you sure you would like to delete this entry?');" />
    </div>
    <button type="button" onclick="location.href='Classes.aspx'">Go back</button>


</asp:Content>
