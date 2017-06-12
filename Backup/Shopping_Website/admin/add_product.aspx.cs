using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;



namespace Shopping_Website.admin
{
    public partial class add_product : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\Shopping_Website\Shopping_Website\App_Data\shopping.mdf;Integrated Security=True;User Instance=True");
        string b;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
                if (Session["admin"] == null)
            { 
                    Response.Redirect("adminlogin.aspx");
            }
        }

        protected void b1_Click(object sender, EventArgs e)
        {
            //a = Class1.GetRandomPassword(10).ToString();
            //f1.SaveAs(Server.MapPath("/images/" + f1.FileName.ToString()));
            f1.SaveAs(Request.PhysicalApplicationPath + "./images/" + f1.FileName.ToString());
            b = "images/" + f1.FileName.ToString();

            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into product values('"+t1.Text+"','"+t2.Text+"',"+t3.Text+","+t4.Text+",'"+b.ToString()+"')";
            cmd.ExecuteNonQuery(); 
            con.Close();
        }
    }
}