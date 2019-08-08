<%@ Page Title="" Language="C#" MasterPageFile="~/PreLog.Master" AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="BlogProject.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <style>
      body
      {
        background-color: rgba(243,239,224,1);
        background-repeat: no-repeat;
	    width: 100%;
	    height: 120vh;
	    background-size:cover;	
}
      }
  </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div class="container-fluid">
	<!--Services Start Here-->
	<div class="container">
		<div class="row ser_style">
			<!--Writing Space Box Starts Here-->
			<div class="col-lg-4 col-md-4 col-xs-3" id="writingspace">
				<div id="writingspace_container">
				<img src="Page_images/apple-coffee-cup-5199.jpg" class="rounded-circle" alt="writer" style="height:150px;width: 150px;vertical-align: text-bottom;margin-left:30px; ">
				<h1>Writing Space</h1>
				<p>We provide a place where you can express your thoughts and hone your skills as a writer. You can also get reviews on your work via our comment system. </p>
				</div>	
				</div>
			<!--Wrting Space Box Ends Here-->
			
			<!--Collaborate Box Starts Here-->
			<div class="col-lg-4 col-md-4 col-xs-3" id="collaborate">
				<div style="align-content: center" id="collaborate_container">
				<img src="Page_images/agreement-business-businessman-872957.jpg" class="rounded-circle" alt="writer" style="height:150px;width: 150px;vertical-align: text-bottom;margin-left:30px; ">
				<h1>Collaborate</h1>
				<p>Collaborate with other content creators to increase your horizons. Improve your work by getting feedback from other users on the platform.</p>
				</div>	
			</div>
			<!--Collaborate Box Ends Here-->
			
			<!--Assistance Box Starts Here-->
			<div class="col-lg-4 col-md-4 col-xs-3" id="assistance">
				<div style="align-content: center" id="assistance_container">
				<img src="Page_images/achievement-adult-agreement-1153213.jpg" class="rounded-circle" alt="writer" style="height:150px;width: 150px;vertical-align: text-bottom;margin-left:30px; ">
				<h1>24 Hour Assistance</h1>
				<p>Collaborate with other content creators to increase your horizons. Improve your work by getting feedback from other users on the platform.</p>
				</div>	
				</div>
			<!--Assistance Box Ends Here-->
			</div>
	<!--Services Blocks End Here-->
        </div>
        </div>
 </asp:Content>
