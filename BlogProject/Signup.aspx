<%@ Page Title="" Language="C#" MasterPageFile="~/PreLog.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="BlogProject.AboutUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body
        {
            background-image: url("antique-blank-camera-269810.jpg");
	        background-repeat: no-repeat;
	        width: 100%;
	        height: 150vh;
	        background-size:cover;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
		<div class="row justify-content-center">
			<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
			<!--Sign Up Form Starts Here-->
			        <div class="form-box" style="margin-top:20px;">
					<h1 style="text-align: center;font-family: Segoe, 'Segoe UI', 'DejaVu Sans', 'Trebuchet MS', Verdana, 'sans-serif'">Create an account</h1>
					<div class="form-group">
                    <label >Enter your Username :</label>
					<input runat="server" type="text" class="form-control" id="userName" placeholder="Enter Username">
					<label for="FName">Enter your first name :</label>
					<input runat="server" type="text" class="form-control" id="FName" placeholder="Enter first name">
                    <label for="LName">Enter your last name :</label>
					<input runat="server" type="text" class="form-control" id="LName" placeholder="Enter last name">
					</div>
				  <div class="form-group">
					<label for="Signup_email">Enter your email address:</label>
					<input runat="server" type="email" class="form-control" id="Signup_email" aria-describedby="email_signup" placeholder="Enter email address">
				  </div>
				  <div class="form-group">
					<label for="InputPassword1">Enter a Password :</label>
					<input runat="server" type="password" class="form-control" id="InputPassword1" placeholder="Password">
					<label for="ConfirmPassword1">Confirm Password :</label>
					<input runat="server" type="password" class="form-control" id="ConfirmPassword1" placeholder="Confirm Password">
				  </div>
				 <div>
				  <asp:Button runat="server" id="sub_btn" type="submit" class="btn btn-primary btn-block" Text="Sign Up!" OnClick="sub_btn_Click"></asp:Button>
				</div>
			<!--Sign Up Form Ends Here-->
			</div>
         </div>
		</div>
    </div>
</asp:Content>
