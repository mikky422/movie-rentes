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
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|member.mdf;Integrated Security=True";
            
            String z = String.Format("INSERT INTO member VALUES('{0}','{1}','{2}','{3}')", username.Text,emailaddress.Text, password.Text, RadioButtonList1.SelectedValue);
            SqlCommand cmd = new SqlCommand(z, con);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
            catch(SqlException err)
            {
                if(err.Number == 2627)
                {
                    usernamemsg.Text = "USERNAME ALRDY TAKEN";
                }
                else
                {
                    usernamemsg.Text = "DATABASE ERROR";
                }
            }
            catch
            {
                usernamemsg.Text = "Unexpected error";
            }

        }

    }
}