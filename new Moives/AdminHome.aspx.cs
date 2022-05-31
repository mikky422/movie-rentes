using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace new_Moives
{
    public partial class AdminHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|member.mdf;Integrated Security=True";

            string strSelect = "SELECT * FROM member"; ;

            SqlCommand cmdSelect = new SqlCommand(strSelect, con);
            //reader is needed to store the return of the sqlcommand
            SqlDataReader reader;

            con.Open();

            reader = cmdSelect.ExecuteReader();

            

            con.Close();

            
        }
    }
}