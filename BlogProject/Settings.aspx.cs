using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
namespace BlogProject
{
    public partial class Settings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("index.aspx");
            }
          if(!IsPostBack)
            {
                get_info();
            }
            get_Image();
            
        }

        protected void submitPic_Click(object sender, EventArgs e)
        {
            Guid id = Guid.NewGuid();
            string user_name = Session["username"].ToString();
            int user_ID = Convert.ToInt32(Session["user_id"]);
            string image_Path = "ProfilePictures/" + user_name + "/" + id.ToString()+profilePicture.FileName;
            string subpath = "ProfilePictures/" + user_name + "/";
            bool exists = System.IO.Directory.Exists(Server.MapPath(subpath));
            if (!exists)
                System.IO.Directory.CreateDirectory(Server.MapPath(subpath));

            profilePicture.SaveAs(Server.MapPath(image_Path));

            SqlConnection newConn = new SqlConnection();
            string connection_String;
            connection_String = ConfigurationManager.ConnectionStrings["myDB"].ConnectionString;
            newConn.ConnectionString = connection_String;

            SqlCommand pic_upload = new SqlCommand();
            string command = "UPDATE dbo.USERS SET DISPLAY_PICTURE ='"+image_Path+"' WHERE ID = " + user_ID;
            pic_upload.CommandText = command;
            pic_upload.Connection = newConn;
            newConn.Open();
            pic_upload.ExecuteNonQuery();
            newConn.Close();
            author_DP.Src = image_Path;
        }

        public void get_Image()
        {
            int user_ID = Convert.ToInt32(Session["user_id"]);
            SqlConnection newConn = new SqlConnection();
            string connection_String;
            connection_String = ConfigurationManager.ConnectionStrings["myDB"].ConnectionString;
            newConn.ConnectionString = connection_String;

            SqlCommand pic_upload = new SqlCommand();
            pic_upload.CommandText = "SELECT DISPLAY_PICTURE FROM dbo.USERS WHERE ID="+user_ID;
            
            pic_upload.Connection = newConn;
            newConn.Open();
            string pic_addr = pic_upload.ExecuteScalar().ToString().Trim();
            newConn.Close();
            author_DP.Src = pic_addr;
        }
        protected void update_Click(object sender, EventArgs e)
        {
            int user_ID = Convert.ToInt32(Session["user_id"]);
            SqlConnection newCon = new SqlConnection();
            string conn_Str = ConfigurationManager.ConnectionStrings["myDB"].ConnectionString;
            newCon.ConnectionString = conn_Str;
            SqlCommand user_Dat = new SqlCommand();
            SqlCommand blog_Dat = new SqlCommand();
            user_Dat.CommandText = "UPDATE dbo.Users SET FirstName ='" + firstName.Value + "' , LastName ='" + lastName.Value + "' , email = '" + Email.Value + "' WHERE ID =" + user_ID;
            blog_Dat.CommandText = "UPDATE dbo.BlogSettings SET BlogName='" + blog_name.Value + "' , About_User='" + about_author.Value +"' WHERE User_ID =" + user_ID;
            user_Dat.Connection = newCon;
            blog_Dat.Connection = newCon;
            newCon.Open();
            user_Dat.ExecuteNonQuery();
            blog_Dat.ExecuteNonQuery();
            newCon.Close();

        }

        

        void get_info()
        {
            int user_ID = Convert.ToInt32(Session["user_id"]);
            SqlConnection newConn = new SqlConnection();
            string connection_String;
            connection_String = ConfigurationManager.ConnectionStrings["myDB"].ConnectionString;
            newConn.ConnectionString = connection_String;

            SqlCommand User_data = new SqlCommand();
            SqlCommand blog_data = new SqlCommand();
            User_data.CommandText = "SELECT Username,FirstName,LastName,email FROM dbo.USERS WHERE ID=" + user_ID;
            blog_data.CommandText = "SELECT BlogName,About_user FROM dbo.BlogSettings WHERE USER_ID=" + user_ID;
            User_data.Connection = newConn;
            blog_data.Connection = newConn;
            SqlDataReader user_Reader;
            SqlDataReader blog_SettingReader;


            newConn.Open();
            user_Reader = User_data.ExecuteReader();
            user_Reader.Read();
            user.Value = user_Reader["username"].ToString();
            firstName.Value = user_Reader["FirstName"].ToString();
            lastName.Value = user_Reader["LastName"].ToString();
            Email.Value = user_Reader["Email"].ToString();
            user_Reader.Close();

            blog_SettingReader = blog_data.ExecuteReader();
            blog_SettingReader.Read();
            blog_name.Value = blog_SettingReader["BlogName"].ToString();
            about_author.Value = blog_SettingReader["About_user"].ToString();
            blog_SettingReader.Close();
            newConn.Close();
        }
    }
}