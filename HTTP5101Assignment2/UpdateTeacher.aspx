<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateTeacher.aspx.cs" Inherits="HTTP5101Assignment2.UpdateTeacher" %>

<asp:Content ID="teacher_update" ContentPlaceHolderID="MainContent" runat="server">
       
    <div class="card text-dark bg-light mb-3" style="max-width: 75%;"  runat="server">
        <div class="card-header text-dark">Update Teacher: <span runat="server" id="teacher_FullName" ></span></div>
        <div class="card-body">
            <div class="form" id="updateTeacherForm" runat="server">
                <div class="form-group row">
                    <label for="teacher_Fname" class="col-sm-3 col-form-label">First Name:</label>
                    <div class="col-sm-5">
                        <asp:TextBox runat="server" ID="teacher_FName" name="teacher_FName"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Required Field" ControlToValidate="teacher_FName" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="teacher_LName" class="col-sm-3 col-form-label">Last Name:</label>
                    <div class="col-sm-5">     
                        <asp:TextBox runat="server" ID="teacher_LName" name="teacher_LName"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Required Field" ControlToValidate="teacher_LName" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="employee_Number" class="col-sm-3 col-form-label">Employee Number:</label>
                    <div class="col-sm-5">
                        <asp:TextBox runat="server" ID="employee_Number" name="employee_Number"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Required Field" ControlToValidate="employee_Number" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>    
                <div class="form-group row">    
                    <label for="hire_Date" class="col-sm-3 col-form-label">Hire Date:</label>
                    <div class="col-sm-5">
                        <asp:TextBox runat="server" ID="hire_Date" name="hire_Date"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Required Field" ControlToValidate="hire_Date" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div> 
                 </div>
                <asp:Button runat="server" Text="Go Back" ID="back_button" OnClick="BackButton_Click" cssClass="btn btn-primary"/>
                <asp:Button runat="server" Text="Update" ID="add_button" OnClick="UpdateButton_Click" cssClass="btn btn-warning"/>
            </div>
        </div>
    </div>
    

</asp:Content>
