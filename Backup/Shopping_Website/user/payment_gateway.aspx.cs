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
    public partial class payment_gateway : System.Web.UI.Page
    {
        int tot = 0;
        string s;
        string t;
        string[] a = new string[6];
        string order_no;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("login.aspx");
            }
            if (Request.Cookies["aa"] != null)
            {
                s = Convert.ToString(Request.Cookies["aa"].Value);
                string[] strArr = s.Split('|');

                for (int i = 0; i < strArr.Length; i++)
                {
                    t = Convert.ToString(strArr[i].ToString());
                    string[] strArr1 = s.Split(',');

                    for (int j = 0; j < strArr1.Length; j++)
                    {
                        a[j] = strArr1[j].ToString();
                    }

                    tot = tot + (Convert.ToInt32(a[2].ToString()) * Convert.ToInt32(a[3].ToString()));
                }
                Session["tot"] = tot.ToString();
            }

            //The implementation of Paypal
            var chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
            var stringChars = new char[8];
            var random = new Random();

            for (int i = 0; i < stringChars.Length; i++)
            {
                stringChars[i] = chars[random.Next(chars.Length)];
            }

            var finalString = new String(stringChars);
            order_no = finalString;

            Session["order_no"] = order_no.ToString();

            Response.Redirect("payment_success.aspx?order="+order_no.ToString());
            //Response.Write("<form action = 'https://www.sandbox.paypal.com/cgi-bin/webscr' method = 'post' name ='buyCredits' id = 'buyCredits'>");
            //Response.Write("<input type = 'hidden' name = 'cmd' value = '_xclick'>");
            //Response.Write("<input type = 'hidden' name = 'business' value = 'vivekvpatil8888@gmail.com'>");
            //Response.Write("<input type = 'hidden' name = 'currency_code' value = 'USD'>");
            //Response.Write("<input type = 'hidden' name = 'item_name' value = 'Payment for Purchase'>");
            //Response.Write("<input type = 'hidden' name = 'item_number' value = '0'>");
            //Response.Write("<input type = 'hidden' name = 'amount' value = '"+Session["tot"].ToString()+"'>");
              //Response.Write("<input type = 'hidden' name = 'return' value = 'http://localhost:54592/user/payment_success.aspx?order = "+order_no.ToString()+"'>");
              //Response.Write("</form>");

            //Response.Write("<script type = 'text/javascript'>");
            //Response.Write("document.GetElementById('buyCredits').submit();");
            //Response.Write("</script>");

            //Response.Write("<form target='paypal' action='https://www.sandbox.paypal.com/cgi-bin/webscr' method='post'>");
            //Response.Write("<input type='hidden' name='cmd' value='_s-xclick'>");
            //Response.Write("<input type='hidden' name='hosted_button_id' value='2GGKPS3WA8ZMC'>");
            //Response.Write("<input type='image' src='https://www.sandbox.paypal.com/en_US/i/btn/btn_cart_LG.gif' border='0' name='submit' alt='PayPal - The safer, easier way to pay online!'>");
            //Response.Write("<img alt='' border='0' src='https://www.sandbox.paypal.com/en_US/i/scr/pixel.gif' width='1' height='1'>");
            //Response.Write("</form>");

        }
    }
}