<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateStudent.aspx.cs" Inherits="HTTP5101Assignment2.UpdateStudent" %>
<asp:Content ID="student_update" ContentPlaceHolderID="MainContent" runat="server">
    <div class="card text-dark bg-light mb-3" style="max-width: 75%;"  runat="server">
        <div class="card-header text-dark">Update Student: <span runat="server" id="student_FullName" ></span></div>
        <div class="card-body">
            <div class="form" id="updatestudentForm" runat="server">
                <div class="form-group row">
                    <label for="student_Fname" class="col-sm-3 col-form-label">First Name:</label>
                    <div class="col-sm-5">
                        <asp:TextBox runat="server" ID="student_FName" name="student_FName"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Required Field" ControlToValidate="student_FName" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="student_LName" class="col-sm-3 col-form-label">Last Name:</label>
                    <div class="col-sm-5">     
                        <asp:TextBox runat="server" ID="student_LName" name="student_LName"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Required Field" ControlToValidate="student_LName" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="student_Number" class="col-sm-3 col-form-label">Student Number:</label>
                    <div class="col-sm-5">
                        <asp:TextBox runat="server" ID="student_Number" name="student_Number"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Required Field" ControlToValidate="student_Number" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>    
                <div class="form-group row">    
                    <label for="enrolment_Date" class="col-sm-3 col-form-label">Enrolment Date:</label>
                    <div class="col-sm-5">
                        <asp:TextBox runat="server" ID="enrolment_Date" name="enrolment_Date"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Required Field" ControlToValidate="enrolment_Date" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div> 
                 </div>
                <asp:Button runat="server" Text="Go Back" ID="back_button" OnClick="BackButton_Click" cssClass="btn btn-primary"/>
                <asp:Button runat="server" Text="Update" ID="add_button" OnClick="UpdateButton_Click" cssClass="btn btn-warning"/>
            </div>
        </div>
    </div>
</asp:Content>
