using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Shopping_Website.user
{
    public partial class user : System.Web.UI.MasterPage
    {
        string s;
        string t;
        string[] a = new string[6];
        int tot = 0;
        int totcount = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
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
                    totcount = totcount + 1;

                    carttotitem.Text = totcount.ToString();
                    carttotprice.Text = tot.ToString();
                }
            }
        }
    }
}