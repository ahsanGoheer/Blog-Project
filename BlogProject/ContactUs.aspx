<%@ Page Title="" Language="C#" MasterPageFile="~/PreLog.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="BlogProject.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body
        {
            background-image:url('Page_images/cable-call-communication-33999.jpg');
	        background-repeat: no-repeat;
	        width: 100%;
	        height: 125vh;
	        background-size:cover;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    	<div class="container-fluid">
		<div class="row justify-content-center">
			<div class="col-lg-4 col-md-6 col-sm-7 col-xs-12 myContact">
			<!--Contact Box Starts Here-->
				<h1>Contact Information.</h1>
                <hr>
                <p>Phone No: 02948655443<br/>Fax No:02937768876<br/>Address: Redfort Avenue 9898<br/>Email:Ahsangoheer@live.com</p>
                </div>
				<!--Contact Box Ends Here-->
			</div>
        </div>
</asp:Content>
