<%@ Page Title="" Language="C#" MasterPageFile="~/PostLog.Master" AutoEventWireup="true" CodeBehind="PostPage.aspx.cs" Inherits="BlogProject.PostPage" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
     body
        {
            background-color: rgba(243,239,224,1);
	        background-repeat: no-repeat;
	        width: 100%;
	        height: 100vh;
	        background-size:cover;
        }

   </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
    <div class="container-fluid post">
        <div class="row justify-content-center">
            <div class="col-lg-6 col-sm-12 col-xs-12 ">
                <h1>Post Title</h1>
                <hr />
                <section>
                    This area will contain the post.
                </section>
            </div>
        </div>
    </div>
 

    <div class="comments">
        <div class="container">
            <div class="row justify-content-start">
                <div class="col-12">
       <div> <asp:Label runat="server" Text="Write Your Comment Here:"></asp:Label></div>
       <div> <asp:TextBox runat="server" Height="300px" Width="664px" ID="TextBox1" TextMode="MultiLine"></asp:TextBox></div>
        <div><asp:Button runat="server" class="btn-primary" Text="Submit" /></div>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row justify-content-start">
            <div class="col-lg-7 col-sm-12 col-xs-12">
                <div>
                    <h3>COMMENTS:</h3>
                </div>
                <div>
                    <h6></h6>
                    <section></section>
                </div>

            </div>

        </div>

    </div>
</asp:Content>
