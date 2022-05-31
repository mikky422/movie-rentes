using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace new_Moives
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Signin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|member.mdf;Integrated Security=True";

            string strSelect = "SELECT * FROM member" + " WHERE MemberID = '" + txtusername.Text +
                "' AND password = '" + txtpassword.Text + "'";

            SqlCommand cmdSelect = new SqlCommand(strSelect,con);
            //reader is needed to store the return of the sqlcommand
            SqlDataReader reader;

            con.Open();

            reader = cmdSelect.ExecuteReader();

            if (reader.Read())
            {

                string isadmin = (string)reader.GetValue(4);

                //create cookie
                HttpCookie coco = new HttpCookie("userinfo");
                coco.Values.Add("username", txtusername.Text);
                coco.Values.Add("password", txtpassword.Text);
                coco.Values.Add("isadmin", isadmin);
                coco.Expires = DateTime.Now.AddDays(1);
                //add cookie to browser
                Response.Cookies.Add(coco);

                if (isadmin == "1")
                {
                    Response.Redirect("~/AdminHome.aspx");
                }
                else
                {
                    Response.Redirect("~/UserHome.aspx");
                }
            }
            else
            {
                errormsg.Text = "incorrect username or password";
            }

            con.Close();
        }
    }
}