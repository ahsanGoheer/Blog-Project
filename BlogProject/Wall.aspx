<%@ Page Title="" Language="C#" MasterPageFile="~/PostLog.Master" AutoEventWireup="true" CodeBehind="Wall.aspx.cs" Inherits="BlogProject.Wall" %>
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

        .banner-div
        {
            text-align:center;
            width:100%;
            height:500px;
            border:2px solid white;
            background-repeat:no-repeat;
            background-size:100%;
           
        }

    </style>

<script>
   
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <!--The page starts here-->
   
    <div class="container-fluid" style="margin-top:10px;">
       <div class="row justify-content-center">
           
           <div runat="server" class="col-12 banner-div"  id="banner">
               <div style="margin-top:50px;margin-bottom:0px;border:2px solid black;display:inline-block;">
                   <h1 runat="server" id="banner_tag" style="text-align: center;color:black;font-family:'Amatic SC';position:relative;">THE LIFE OF AN ADVENTURER</h1>
               </div>
           </div>
       </div>
    </div>
    
	<div class="container">
		<!--First Row Starts Here-->
		<div class="row">
		<div class=" col-lg-7 col-sm-12 col-md-7">
            <asp:Repeater ID="post_card" runat="server">
            <ItemTemplate>
			<div class="card blog_post">
            <input runat="server" type="text" class="post_ID" value=<%#Eval("Post_ID")%> hidden="hidden" readonly/>
                <div style="text-align:center;">
    			<h2><a href="PostPage.aspx?ID=<%#Eval("Post_ID")%>" style="color:black;font-family:'Amatic SC';" id="title1"><%#Eval("Title")%></a></h2>
                </div>
			<small class="text-muted" id="time1"><i class="far fa-clock"></i><%#Convert.ToDateTime(Eval("publish_date")).ToString("dd-MMM-yyyy") %></small>
			<div style="text-align:center;margin-bottom:10px;"><img src="<%#Eval("post_image") %>" class="rounded" style="height:200px;width:200px;" alt="post image"/></div>
            <div style="border:1px groove;border-radius:20px;padding:10px;height:300px;overflow:hidden;">
			<section style="font-family:'Amatic SC';font-size:26px;" id="post1"><%# Eval("snippet")+"...."%></section>
            </div>
			</div>
            </ItemTemplate>
            </asp:Repeater>
			</div>
		<div class="col-lg-5 col-sm-12 col-md-5">
			<!--Author Card Starts Here-->
			<div class="card author_card">
            <div style="border:1px groove silver;margin:0;padding:10px;height:400px;">
			<h2>About The Author : </h2>
			<br/>
			<div style="text-align:center;"><img runat="server" class="rounded-pill" id="authorimg" style="height:150px;width:150px;"  alt="A picture of the author"/></div>
			<br/>
            <div style="text-align:center">
			<p runat="server" style="font-family:'Freestyle Script';font-size:25px;" id="authorinfo"></p>
            </div>
			</div>
            </div>
			<!--Author Card Ends Here-->
			
			<!--Comment Card Starts Here-->
			<div class="card comment_card">
			<h2>Recent Comments:</h2>
			<section>
				
			</section>	
			<!--Comment Card Ends Here-->	
			</div>	
			
		</div>
		</div>
		<!--First Row End Here-->
		
	<!--Pagination Starts Here-->
		<div class="row">
			<div class="col-sm-12">
			<div class="col-sm-12 pagenav">
		<nav>
		<ul class="pagination pagination-sm justify-content-center">
			<li class="page-item disabled"><a class="page-link" href="#" id="prev">Previous</a></li>
			<li class="page-item"><a class="page-link" href="#" id="pg1">1</a></li>
			<li class="page-item disabled"><a class="page-link" href="#" id="next">Next</a></li>
		</ul>
		</nav>
		</div>
		</div>
	<!--Pagination Ends Here-->	
		
	</div>
	<!--The page ends here-->
	</div>
   	
</asp:Content>
