<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddNewTeacher.aspx.cs" Inherits="HTTP5101Assignment2.AddNewTeacher" %>

<asp:Content ID="teacher_view" ContentPlaceHolderID="MainContent" runat="server">

    <div id="newTeacherForm" runat="server">
        <div class="card text-dark bg-light mb-3" style="max-width: 75%;"  runat="server">
        <div class="card-header text-dark">Add New Teacher</div>
        <div class="card-body">
            <div class="form" runat="server">
                <div class="form-group row">
                    <label for="teacher_Fname" class="col-sm-3 col-form-label">First Name:</label>
                    <div class="col-sm-5">
                        <asp:TextBox runat="server" ID="teacherFName" name="teacherFName"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Required Field" ControlToValidate="teacherFName" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="teacher_LName" class="col-sm-3 col-form-label">Last Name:</label>
                    <div class="col-sm-5">     
                        <asp:TextBox runat="server" ID="teacherLName" name="teacherLName"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Required Field" ControlToValidate="teacherLName" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="employee_Number" class="col-sm-3 col-form-label">Employee Number:</label>
                    <div class="col-sm-5">
                        <asp:TextBox runat="server" ID="employeeNumber" name="employeeNumber"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Required Field" ControlToValidate="employeeNumber" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>    
                <div class="form-group row">    
                    <label for="hire_Date" class="col-sm-3 col-form-label">Hire Date:</label>
                    <div class="col-sm-5">
                        <asp:TextBox runat="server" ID="hireDate" name="hireDate"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Required Field" ControlToValidate="hireDate" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div> 
                 </div>
                <button type="button" onclick="location.href='Teachers.aspx'" class="btn btn-primary">Go Back</button>
                <asp:Button runat="server" Text="Add New Entry" ID="addbutton" OnClick="AddButton_Click" cssClass="btn btn-warning"/>
            </div>
        </div>
    </div>
 </div>


</asp:Content>
