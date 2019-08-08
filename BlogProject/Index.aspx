<%@ Page Title="" Language="C#" MasterPageFile="~/PreLog.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="TwichBlog.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="mycss.css" rel="stylesheet" />
    <title>Twich-Homepage</title>
    <style>
    body 
    { 
           background-image: url('Page_images/alphabets-ancient-box-529926.jpg');
           background-repeat: no-repeat;
           width: 100%; height: 100vh;
           background-size: cover; 

    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <div class="container-fluid">
		<div class="row justify-content-center">
			<div class="col-lg-5 col-md-6 col-sm-7 col-xs-12 login" style="padding-bottom:30%;color:azure;padding-top:10%;">
			<!--Login Form Starts Here-->
                 <div class="form-box" id="myForm">
					<h1 style="text-align: center;font-family: Segoe, 'Segoe UI', 'DejaVu Sans', 'Trebuchet MS', Verdana, 'sans-serif'">Login </h1>
				  <div class="form-group">
					<label>Username</label>
					<input  runat="server" type="text" class="form-control" id="user_name" placeholder="Enter Username">
					
				  </div>
				  <div class="form-group">
					<label>Password</label>
					<input runat="server" type="password" class="form-control" id="Pass" placeholder="Password">
				  </div>
				  <div class="form-group form-check">
					<input runat="server" type="checkbox" class="form-check-input" id="checkbox">
					<label class="form-check-label"  style="color: azure">Remember me</label>
				  </div>
				  <asp:Button runat="server"  class="btn btn-success btn-block" id="login_btn" Text="Login" OnClick="login_btn_Click"></asp:Button>
			    </div>
                <div><label runat="server" style="color:red;font-family:'Segoe UI';" visible="false" id="incorrectpw">INCORRECT LOGIN DETAILS!</label></div>
			<!--Login Form Ends Here-->
			</div>
		</div>
     </div>
    <script>
	function check_input()
	  {
		var email=document.getElementById("email_id").value;
		var pass=document.getElementById("Pass").value;
		  if(email==""||pass=="")
			  {
				  alert("Please fill in all fields!");
			  }
           else if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(myForm.email_id.value))
              {
                window.location.href="Mainpage.html";
                return (true);
              }
          else{
                alert("You have entered an invalid email address!");
                return (false);
          }
    }
  </script>
</asp:Content>
