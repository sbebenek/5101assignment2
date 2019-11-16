﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Classes.aspx.cs" Inherits="HTTP5101Assignment2.Classes" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h4 class="text-center">Classes</h4>
    <!--Line Below will be updated if page is being reached after CRUD functions are made in other pages (Shown in url with GET methods)-->
    <div id="commandConfirm" runat="server"></div>
    <div class="form-inline">
        <div class="form-group mb-4">
            <label for="search_value" class="col-sm-2 col-form-lable">Search:</label>
            <asp:TextBox ID="search_value" name="search_value" runat="server" CssClass="form-control-plaintext border-dark" />
            <%-- Adding later--%>
            <%-- <small class="form-text text-muted">
              You can search for employee number or name 
            </small>--%>
            <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Required Field" ControlToValidate="search_value" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:Button Text="Search" runat="server" CssClass="btn btn-primary ml-2" />
            <%-- Dont like this btn style fix later--%>
            <button onclick="location.href='AddNewClass.aspx'" type="button" class="btn btn-primary mt-2 ml-5">Add New Class</button>
        </div>
    </div>
    <div id="students_result" class="_table" runat="server">
    </div>
</asp:Content>
