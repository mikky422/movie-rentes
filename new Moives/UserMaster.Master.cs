using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace new_Moives
{
    public partial class UserMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string username = "";

            if(Request.Cookies["userinfo"]!= null){
                username = Request.Cookies["userinfo"].Values["username"];
            }
            usernameheader.Text = "Welcome " + username;
        }
    }
}