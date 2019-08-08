
<%@ Page Title="" Language="C#" MasterPageFile="~/PostLog.Master" AutoEventWireup="true" CodeBehind="Settings.aspx.cs" Inherits="BlogProject.Settings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    	<!--Profile adjustment box starts here-->
    
	<div id="profile_details">
		<div class="container" id="detail_box">
		<div class="row justify-content-center">
			<div class="col-lg-4 col-md-6 col-sm-12">
						<h1>Profile Details</h1>
					
						<div class="form-group">
						<img runat="server" style="height:300px;width:300px;" class="img-thumbnail" id="author_DP" alt="Profile picture of the author."/>
						<label>Select an image</label>
                        <div>
                        <asp:FileUpload runat="server" ID="profilePicture" accept=".png,.jpg,.jpeg,.gif"/>
                        </div>
                        <br/>
                        <div>
                        <button type="button" runat="server" class="btn btn-dark" onserverclick="submitPic_Click" id="upload_Btn">Upload</button>
					    </div>	
					    </div>
					</div>
			<div class="col-lg-4 col-md-5 col-sm-12">
			
  				<div class="form-group">
					<label>Username : </label>
					<input runat="server" type="text" class="form-control" id="user" placeholder="Username" readonly/>
					<label>Blog Name : </label>
					<input runat="server" type="text" class="form-control" id="blog_name" placeholder="Blog Name"/>
					<label>First Name:</label>
					<input runat="server" type="text" class="form-control" id="firstName" placeholder="First Name"/>
					<label>Last Name:</label>
					<input runat="server" type="text" class="form-control" id="lastName" placeholder="Last Name"/>
					<label>Email Address:</label>
					<input runat="server" type="text" class="form-control" id="Email" placeholder="Email Address"/>
					<small class="form-text text-muted">Your email shall be kept private</small>
					<label>About the author:</label>
					<textarea runat="server" id="about_author" class="form-control" cols="30" rows="10"></textarea>
					<br/>
					<button runat="server" type="submit" id="update_Profile" class="btn btn-dark" onserverclick="update_Click">Update profile!</button>
						
				</div>
			
			
			</div>
				</div>
			</div>
	</div>
	<!--Profile adjustment box ends here-->
	
</asp:Content>
