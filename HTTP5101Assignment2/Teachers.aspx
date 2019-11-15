<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Teachers.aspx.cs" Inherits="HTTP5101Assignment2.Teachers" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Teachers</h1>
    <!--Line Below will be updated if page is being reached after CRUD functions are made in other pages (Shown in url with GET methods)-->
    <div id="commandConfirm" runat="server"></div>
    <label for="search_value">Search:</label>
    <asp:TextBox ID="search_value" name="search_value" runat="server" />
    <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Required Field" ControlToValidate="search_value" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:Button Text="Search" runat="server" />
    <button onclick="location.href='AddNewTeacher.aspx'" type="button">Add New Teacher</button>
    <div id="students_result" class="_table" runat="server">
        <div class="listitem">
            <div class="col4">FIRST NAME</div>
            <div class="col4">LAST NAME</div>
            <div class="col4">EMPLOYEE NUMBER</div>
            <div class="col4last">HIRE DATE</div>
        </div>

    </div>
</asp:Content>

