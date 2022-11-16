using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration; 

public partial class greatseo_glogin : System.Web.UI.Page
{
    SqlConnection con;
    SqlConnection con1;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            con = new SqlConnection(strcon);


            string s = "select * from creg where femail=" + "'" + TextBox1.Text + "'" + " and  pwd=" + "'" + TextBox2.Text + "'";


            con.Open();

            SqlCommand cmd1 = new SqlCommand(s, con);
            SqlDataReader reader;
            reader = cmd1.ExecuteReader();
            int ctr = 0;
            String cname = "", cemail = "", caddress = "", ph = "";
            while (reader.Read())
            {
                ctr++;
                cname = reader.GetString(1);
              
                caddress = reader.GetString(2);
                ph = reader.GetString(3);

            }
            reader.Close();
            con.Close();
            if (ctr == 1)
            {
                // Label1.Text = "success";
                Session["clogname"] = TextBox1.Text.Trim();
                Session["cname"] = cname;
                Session["caddress"] = caddress;
                Session["mobile"] = ph;

                //Response.Write("c===" + Session["logname"].ToString());
                //Response.Write("<br>" + Session["name"].ToString());
                //Response.Write("<br>" + Session["mobile"].ToString());
                Response.Redirect("guestHomepage.aspx");
            }
            else
            {
                Label1.Text = "Login Failed";
            }


        }
        catch (Exception ex)
        {
            Label1.Text = ex.ToString();
        }

    }
}