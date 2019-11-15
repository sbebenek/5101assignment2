<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddNewTeacher.aspx.cs" Inherits="HTTP5101Assignment2.AddNewTeacher" %>

<asp:Content ID="student_view" ContentPlaceHolderID="MainContent" runat="server">

    <div id="newTeacherForm" runat="server">
        <h2>Add New Teacher:</h2>
        <label for="teacherFname">First Name:</label>
        <asp:TextBox runat="server" ID="teacherFName" name="teacherFName"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Required Field" ControlToValidate="teacherFName" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />

        <label for="teacherLName">Last Name:</label>
        <asp:TextBox runat="server" ID="teacherLName" name="teacherLName"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Required Field" ControlToValidate="teacherLName" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />

        <label for="employeeNumber">Employee Number:</label>
        <asp:TextBox runat="server" ID="employeeNumber" name="employeeNumber"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Required Field" ControlToValidate="employeeNumber" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />

        <label for="hireDate">Hire Date:</label>
        <asp:TextBox runat="server" ID="hireDate" name="hireDate"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Required Field" ControlToValidate="hireDate" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />

        <button type="button" onclick="location.href='Teachers.aspx'">Go Back</button>
        <asp:Button runat="server" Text="Add New Entry" ID="addbutton" OnClick="AddButton_Click" />
    </div>


</asp:Content>
