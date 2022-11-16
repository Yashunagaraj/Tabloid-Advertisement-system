using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration; 
public partial class greatseo_geditpwd : System.Web.UI.Page
{

    SqlConnection con;
    SqlConnection con1;
    String eid = "", s = "";
    protected void Page_Load(object sender, EventArgs e)
    {
       //Session["clogname"] = TextBox1.Text.Trim();
       string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
       con = new SqlConnection(strcon);
       eid = Session["clogname"].ToString();
         //Session["caddress"] = caddress;
         //       Session["mobile"] = ph;

       TextBox4.Text = Session["caddress"].ToString();
       TextBox5.Text = Session["mobile"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            s = "select * from creg where femail=" + "'" + eid + "'" + " and  pwd=" + "'" + TextBox1.Text + "'";
            ///  Response.Write(s);
            con.Open();

            SqlCommand cmd1 = new SqlCommand(s, con);
            SqlDataReader reader;
            reader = cmd1.ExecuteReader();
            int ctr = 0;
            //    string uname = "";
            while (reader.Read())
            {
                //  uname = reader.GetString(0);
                ctr++;
            }
            reader.Close();
            con.Close();
            if (ctr == 1)
            {




                s = "update creg  set pwd=@p,companynameaddr=@a,fphone=@f where femail=@eid";// into patient values(@i,@n,@g,@d,@a,@e,@m,@r)";
                SqlCommand cmd11 = new SqlCommand(s, con);
                cmd11.Parameters.Add("@p", TextBox3.Text);
                cmd11.Parameters.Add("@eid", eid);
                cmd11.Parameters.Add("@a", TextBox4.Text);
                cmd11.Parameters.Add("@f", TextBox5.Text);
                con.Open();
                cmd11.ExecuteNonQuery();
                con.Close();
                Label1.Text = "Password and other details updated successfully";
            }
            else
            {
                Label1.Text = "Something has gone wrong pls chk...";
            }
        }
        catch (Exception ex)
        {

            Label1.Text = ex.ToString();
        }

    }
}