using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace new_Moives
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void rentnow_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|member.mdf;Integrated Security=True";


            string username = "";
            if (Request.Cookies["userinfo"] != null)
            {
                username = Request.Cookies["userinfo"].Values["username"];
            }



            String z = String.Format("INSERT INTO rental VALUES('{1}','{2}','{3}','{4}','{5}')", username, DateTime.Now, datepicker.SelectedDate, 0, int.Parse(GridView1.SelectedRow.Cells[1].Text));
            SqlCommand cmd = new SqlCommand(z, con);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
            catch
            {
      
            }

        }
    }
}