<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateTeacher.aspx.cs" Inherits="HTTP5101Assignment2.UpdateTeacher" %>

<asp:Content ID="teacher_update" ContentPlaceHolderID="MainContent" runat="server">

    <div id="updateTeacherForm" runat="server">
        <h2>Update Teacher: <span runat="server" id="teacher_FullName" ></span></h2>
        <label for="teacher_Fname">First Name:</label>
        <asp:TextBox runat="server" ID="teacher_FName" name="teacher_FName"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Required Field" ControlToValidate="teacher_FName" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />

        <label for="teacher_LName">Last Name:</label>
        <asp:TextBox runat="server" ID="teacher_LName" name="teacher_LName"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Required Field" ControlToValidate="teacher_LName" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />

        <label for="employee_Number">Employee Number:</label>
        <asp:TextBox runat="server" ID="employee_Number" name="employee_Number"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Required Field" ControlToValidate="employee_Number" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />

        <label for="hire_Date">Hire Date:</label>
        <asp:TextBox runat="server" ID="hire_Date" name="hire_Date"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Required Field" ControlToValidate="hire_Date" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />

        
        <asp:Button runat="server" Text="Go Back" ID="back_button" OnClick="BackButton_Click" />
        <asp:Button runat="server" Text="Update" ID="add_button" OnClick="UpdateButton_Click" />
    </div>


</asp:Content>
