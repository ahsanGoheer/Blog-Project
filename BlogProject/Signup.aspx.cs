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
    public partial class AboutUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void sub_btn_Click(object sender, EventArgs e)
        {
            if(InputPassword1.Value==ConfirmPassword1.Value)
            {
                SqlConnection newCon = new SqlConnection();
                string conn_Str = ConfigurationManager.ConnectionStrings["myDB"].ConnectionString;
                newCon.ConnectionString = conn_Str;
                SqlCommand log_Command = new SqlCommand();
                log_Command.CommandText = "INSERT INTO dbo.Users(Username,Password,FirstName,LastName,Email) VALUES('" + userName.Value + "','" + InputPassword1.Value + "','" + FName.Value + "','" + LName.Value + "','" + Signup_email.Value + "'" + ")";
                log_Command.Connection = newCon;
                newCon.Open();
                log_Command.ExecuteNonQuery();
                newCon.Close();
            }
            else
            {

            }
        }
    }
}