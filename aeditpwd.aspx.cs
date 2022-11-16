using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration; 
public partial class greatseo_aeditpwd : System.Web.UI.Page
{
    SqlConnection con;
    SqlConnection con1;
    String eid = "", s = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        con = new SqlConnection(strcon);
        eid = Session["logname"].ToString();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            s = "select * from admin where unam=" + "'" + eid + "'" + " and  pwd=" + "'" + TextBox1.Text + "'";
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




                s = "update admin  set pwd=@p where unam=@eid";// into patient values(@i,@n,@g,@d,@a,@e,@m,@r)";
                SqlCommand cmd11 = new SqlCommand(s, con);
                cmd11.Parameters.Add("@p", TextBox3.Text);
                cmd11.Parameters.Add("@eid", eid);

                con.Open();
                cmd11.ExecuteNonQuery();
                con.Close();
                Label1.Text = "Password updated successfully";
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