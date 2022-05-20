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

            //jesus : Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename="E:\some app\movie-rentes\new Moives\App_Data\member.mdf";Integrated Security=True
            //mkky : w.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\abdel\\source\\repos\\new Moives\\App_Data\\member.mdf;Integrated Security=True";

            con.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|member.mdf;Integrated Security=True";
            String z = String.Format("INSERT INTO member VALUES('{0}','{1}','{2}','{3}')", username.Text,emailaddress.Text, password.Text, RadioButtonList1.SelectedValue);
            SqlCommand cmd = new SqlCommand(z, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void password_TextChanged(object sender, EventArgs e)
        {

        }
    }
}