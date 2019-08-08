using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
namespace TwichBlog
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         if(Session["username"]!=null)
            {
                Response.Redirect("Wall.aspx");
            }
        }

        protected void login_btn_Click(object sender, EventArgs e)
        {
            SqlConnection newCon = new SqlConnection();
            string conn_Str = ConfigurationManager.ConnectionStrings["myDB"].ConnectionString;
            newCon.ConnectionString = conn_Str;
            SqlCommand user_auth = new SqlCommand("dbo.User_auth",newCon);
            user_auth.CommandType = System.Data.CommandType.StoredProcedure;
            user_auth.Parameters.Add(new SqlParameter("@username",user_name.Value));
            user_auth.Parameters.Add(new SqlParameter("@password", Pass.Value));
            newCon.Open();
            int check_count = Convert.ToInt32(user_auth.ExecuteScalar());
            newCon.Close();
            if(check_count==1)
            {
                Session["username"] = user_name.Value.Trim();
                Session["pwd"] = Pass.Value.Trim();
                Session["user_id"] = get_userid();
                Response.Redirect("Wall.aspx");
            }
            else
            {

                Response.Write("<script>alert('User does not exist.');</script>");
            }
        }

        public int get_userid()
        {
            SqlConnection newCon = new SqlConnection();
            string conn_Str = ConfigurationManager.ConnectionStrings["myDB"].ConnectionString;
            newCon.ConnectionString = conn_Str;
            SqlCommand user_auth = new SqlCommand("dbo.GET_ID", newCon);
            user_auth.CommandType = System.Data.CommandType.StoredProcedure;
            user_auth.Parameters.Add(new SqlParameter("@username", user_name.Value));
            newCon.Open();
            int user_id = Convert.ToInt32(user_auth.ExecuteScalar());
            newCon.Close();
            return user_id;
        }
    }
}