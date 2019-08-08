<%@ Page Title="" Language="C#" MasterPageFile="~/PostLog.Master" AutoEventWireup="true" CodeBehind="PostWrite.aspx.cs" Inherits="BlogProject.PostWrite" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--Writing box starts here-->
    <div class="container" id="write_post">
		<div class="row justify-content-center">
			<div class="col-12" >
				<h1>Write Your Blog Post Here:</h1>
				<br/>
	
				<div class="form-group">
				<h5>Enter the Post Title:</h5>
				<input type="text" class="form-control" id="post_title"/>
                <br/>
                  <label>Select and image for your post:</label>
                    <br/>
                    <input type="file" accept="image/*">
                    <br/>
				<br/>
				<textarea id="froala-editor"></textarea>
				<br/>
					<button type="submit" class="btn btn-success" onclick="check_input()">Post!</button>
				</div>
			</div>
		</div>
	</div>
	<!--writing box ends here-->

    
</asp:Content>
