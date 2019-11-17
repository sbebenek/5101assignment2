<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddNewStudent.aspx.cs" Inherits="HTTP5101Assignment2.AddNewStudent" %>
<asp:Content ID="student_view" ContentPlaceHolderID="MainContent" runat="server">
    <div id="newStudentForm" runat="server">
        <div class="card text-dark bg-light mb-3" style="max-width: 75%;"  runat="server">
        <div class="card-header text-dark">Add New Student</div>
        <div class="card-body">
            <div class="form" runat="server">
                <div class="form-group row">
                    <label for="student_Fname" class="col-sm-3 col-form-label">First Name:</label>
                    <div class="col-sm-5">
                        <asp:TextBox runat="server" ID="studentFName" name="studentFName"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Required Field" ControlToValidate="studentFName" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="student_LName" class="col-sm-3 col-form-label">Last Name:</label>
                    <div class="col-sm-5">     
                        <asp:TextBox runat="server" ID="studentLName" name="studentLName"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Required Field" ControlToValidate="studentLName" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="student_Number" class="col-sm-3 col-form-label">Employee Number:</label>
                    <div class="col-sm-5">
                        <asp:TextBox runat="server" ID="studentNumber" name="studentNumber"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Required Field" ControlToValidate="studentNumber" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>    
                <div class="form-group row">    
                    <label for="enrolment_Date" class="col-sm-3 col-form-label">Enrolment Date:</label>
                    <div class="col-sm-5">
                        <asp:TextBox runat="server" ID="enrolmentDate" name="enrolmentDate"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Required Field" ControlToValidate="enrolmentDate" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div> 
                 </div>
                <button type="button" onclick="location.href='Students.aspx'" class="btn btn-primary">Go Back</button>
                <asp:Button runat="server" Text="Add New Entry" ID="addbutton" OnClick="AddButton_Click" cssClass="btn btn-warning"/>
            </div>
        </div>
    </div>
 </div>
</asp:Content>
