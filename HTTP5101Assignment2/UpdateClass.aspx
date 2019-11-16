<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateClass.aspx.cs" Inherits="HTTP5101Assignment2.UpdateClass" %>

<asp:Content ID="class_update" ContentPlaceHolderID="MainContent" runat="server">

    <div id="updateClassForm" runat="server">
        <h2>Update Class: <span runat="server" id="classTitle" ></span></h2>
        <label for="classCode">Class Code:</label>
        <asp:TextBox runat="server" ID="classCode" name="classCode"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Required Field" ControlToValidate="classCode" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />

        <label for="className">Class Name:</label>
        <asp:TextBox runat="server" ID="className" name="className"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Required Field" ControlToValidate="className" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />

        <label for="employeeNumber">Teacher Employee Number:</label>
        <asp:TextBox runat="server" ID="employeeNumber" name="employeeNumber"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Required Field" ControlToValidate="employeeNumber" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />

        <label for="startDate">Start Date:</label>
        <asp:TextBox runat="server" ID="startDate" name="hireDate"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Required Field" ControlToValidate="startDate" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        
        <label for="finishDate">Finish Date:</label>
        <asp:TextBox runat="server" ID="finishDate" name="finishDate"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Required Field" ControlToValidate="finishDate" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />

        
        <asp:Button runat="server" Text="Go Back" ID="back_button" OnClick="BackButton_Click" />
        <asp:Button runat="server" Text="Update" ID="add_button" OnClick="UpdateButton_Click" />
    </div>


</asp:Content>
