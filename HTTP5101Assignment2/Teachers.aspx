<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Teachers.aspx.cs" Inherits="HTTP5101Assignment2.Teachers" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Teachers</h1>
    <label for="search_value">Search:</label>
    <asp:TextBox ID="search_value" name="search_value" runat="server" />
    <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Required Field" ControlToValidate="search_value" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:Button Text="Submit" runat="server" />
    <button onclick="location.href='Classes.aspx'" type="button">Add New Teacher</button>
    <div id="students_result" class="_table" runat="server">
        <div class="listitem">
            <div class="col4">FIRST NAME</div>
            <div class="col4">LAST NAME</div>
            <div class="col4">EMPLOYEE NUMBER</div>
            <div class="col4last">HIRE DATE</div>
        </div>

    </div>
</asp:Content>

