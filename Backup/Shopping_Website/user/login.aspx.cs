using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace Shopping_Website.user
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\Shopping_Website\Shopping_Website\App_Data\shopping.mdf;Integrated Security=True;User Instance=True");
        int tot = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from registration where email = '"+TextBox1.Text+"' and password = '"+TextBox2.Text+"'";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);

            tot = Convert.ToInt32(dt.Rows.Count.ToString());

            if(tot > 0)
            {
                if (Session["checkoutbutton"] == "yes")
                {
                    Session["user"] = TextBox1.Text;
                    Response.Redirect("update_order_details.aspx");
                }
                else
                {
                    Session["user"] = TextBox1.Text;
                    Response.Redirect("order_details.aspx");
                }
            }
            else
            {
                Label1.Text = "Invalid Username or Password";
            }

            con.Close();
        }
    }
}