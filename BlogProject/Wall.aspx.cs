using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.HtmlControls;
namespace BlogProject
{
    public partial class Wall : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"]==null)
            {
                Response.Redirect("Index.aspx");
            }

            get_Posts();
        }

        void get_Posts()
        {
            int user_ID = Convert.ToInt32(Session["user_id"]);
            SqlConnection newConn = new SqlConnection();
            string connection_String;
            connection_String = ConfigurationManager.ConnectionStrings["myDB"].ConnectionString;
            newConn.ConnectionString = connection_String;

            SqlCommand Post_dat = new SqlCommand();
            SqlCommand Blog_Settings = new SqlCommand();
            Post_dat.CommandText = "SELECT Post_ID,Title,isPublished,publish_date,snippet,post_image from dbo.Posts WHERE ID =" + user_ID;
            Blog_Settings.CommandText = "SELECT B.BlogName,B.About_user,B.Background_Image,U.Display_picture FROM dbo.BlogSettings B,dbo.users U WHERE U.ID=" + user_ID+" AND B.USER_ID="+user_ID;
            Post_dat.Connection = newConn;
            Blog_Settings.Connection = newConn;
            SqlDataReader Post_reader;
            SqlDataReader blog_SettingReader;


            newConn.Open();
           

            Post_reader = Post_dat.ExecuteReader();
            post_card.DataSource = Post_reader;
            post_card.DataBind();
            Post_reader.Close();
            blog_SettingReader = Blog_Settings.ExecuteReader();
            blog_SettingReader.Read();
            authorimg.Src = blog_SettingReader["Display_picture"].ToString();
            authorinfo.InnerText = blog_SettingReader["About_user"].ToString();
            banner_tag.InnerText = blog_SettingReader["BlogName"].ToString();
            string banner_url = blog_SettingReader["Background_Image"].ToString();
            newConn.Close();
            HtmlGenericControl divcontrol = this.banner;
            divcontrol.Style["background-image"]="url('"+banner_url+"');";

        }
    }
}