using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace new_Moives
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void Signup_Click(object sender, EventArgs e)
        {
        SqlConnection w = new SqlConnection();
 
        w.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\abdel\\source\\repos\\new Moives\\App_Data\\member.mdf;Integrated Security=True";
        String z = String.Format("insert into Member values('{0}','{1}','{2}','{3}','{4}',)  ", username.Text, password.Text, firstname.Text, lastname.Text, emailaddress.Text);
        SqlCommand cmd = new SqlCommand(z, w);
        w.Open();
        cmd.ExecuteNonQuery();
        w.Close();
        }

        protected void password_TextChanged(object sender, EventArgs e)
        {

        }
    }
}