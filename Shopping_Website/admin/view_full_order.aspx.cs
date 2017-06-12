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
    public partial class view_full_order : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=E:\Shopping_Website\Shopping_Website\App_Data\shopping.mdf;Integrated Security=True;User Instance=True");
        int id;
        int tot;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("adminlogin.aspx");
            }
           id = Convert.ToInt32(Request.QueryString["id"].ToString());
           
            con.Open();
            SqlCommand cmd1 = con.CreateCommand();
            cmd1.CommandType = CommandType.Text;
            cmd1.CommandText = "select * from orders where id = "+id+"";
            cmd1.ExecuteNonQuery();
            DataTable dt1 = new DataTable();
            SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
            da1.Fill(dt1);
            r2.DataSource = dt1;
            r2.DataBind();
            con.Close();
             
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select * from order_details where order_id = " + id + "";
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                foreach (DataRow dr in dt.Rows)
                {
                    tot = tot + Convert.ToInt32(dr["product_price"].ToString()) * Convert.ToInt32(dr["product_qty"].ToString());
                }
                r1.DataSource = dt;
                r1.DataBind();

                con.Close();

                l1.Text = "Total Order Price =" + tot.ToString();
            }
        }
    }
