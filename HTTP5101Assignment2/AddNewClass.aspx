<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddNewClass.aspx.cs" Inherits="HTTP5101Assignment2.AddNewClass" %>

<asp:Content ID="student_view" ContentPlaceHolderID="MainContent" runat="server">

    <div id="newClassForm" runat="server">
        <div class="card text-dark bg-light mb-3" style="max-width: 75%;"  runat="server">
        <div class="card-header text-dark">Add New Class <span runat="server" id="classTitle" ></span></div>
        <div class="card-body">
            <div class="form" runat="server">
                <div class="form-group row">
                    <label for="classCode" class="col-sm-3 col-form-label">Class Code:</label>
                    <div class="col-sm-5">
                        <asp:TextBox runat="server" ID="classCode" name="classCode"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Required Field" ControlToValidate="classCode" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="className" class="col-sm-3 col-form-label">Class Name:</label>
                    <div class="col-sm-5">     
                        <asp:TextBox runat="server" ID="className" name="className"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Required Field" ControlToValidate="className" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="employeeNumber" class="col-sm-3 col-form-label">Teacher Employee Number:</label>
                    <div class="col-sm-5">
                        <asp:TextBox runat="server" ID="employeeNumber" name="employeeNumber"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Required Field" ControlToValidate="employeeNumber" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>    
                <div class="form-group row">    
                    <label for="startDate" class="col-sm-3 col-form-label">Start Date:</label>
                    <div class="col-sm-5">
                        <asp:TextBox runat="server" ID="startDate" name="hireDate"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Required Field" ControlToValidate="startDate" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div> 
                 </div>
                <div class ="form-group row" >
                    <label for="finishDate" class="col-sm-3 col-form-label">Finish Date:</label>
                    <div class="col-sm-5">
                        <asp:TextBox runat="server" ID="finishDate" name="finishDate"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Required Field" ControlToValidate="finishDate" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <button type="button" onclick="location.href='Classes.aspx'" class="btn btn-primary">Go Back</button>
                <asp:Button runat="server" Text="Add New Entry" ID="addbutton" OnClick="AddButton_Click" CssClass="btn btn-warning"/>
            </div>
        </div>
    </div>
        <%--<h2></h2>
        <label for="classCode">Class Code:</label>
        
        <br />

        <label for="className">Class Name:</label>
        
        <br />

        <label for="employeeNumber">Teacher Employee Number:</label>
        
        <br />

        <label for="startDate">Start Date:</label>
        
        <br />
        
        <label for="finishDate">Finish Date:</label>
        
        <br />--%>

        
    </div>


</asp:Content>