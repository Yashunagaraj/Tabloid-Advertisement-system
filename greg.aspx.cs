using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration; 

public partial class greatseo_greg : System.Web.UI.Page
{
    SqlConnection con;
    SqlConnection con1;
    protected void Page_Load(object sender, EventArgs e)
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        con = new SqlConnection(strcon);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            string s = "select * from creg where femail= " + "'" + TextBox5.Text + "'";
            con.Open();

            SqlCommand cmd1 = new SqlCommand(s, con);
            SqlDataReader reader;
            reader = cmd1.ExecuteReader();
            int ctr = 0;
            while (reader.Read())
            {
                ctr++;

            }
            reader.Close();
            con.Close();
            if (ctr == 0)
            {

                s = "insert into creg values(@fn,@cn,@ca,@cph,@e,@p)";
                cmd1 = new SqlCommand(s, con);

                cmd1.Parameters.Add("@fn", TextBox1.Text);
                cmd1.Parameters.Add("@cn", TextBox2.Text);
                cmd1.Parameters.Add("@ca", TextBox3.Text);
                cmd1.Parameters.Add("@cph", TextBox4.Text);
                cmd1.Parameters.Add("@e", TextBox5.Text);
                cmd1.Parameters.Add("@p", TextBox6.Text);
                //cmd1.Parameters.Add("@pw", TextBox7.Text);





                con.Open();
                cmd1.ExecuteNonQuery();
                con.Close();
                Label1.Text = "Registered successfully";

                 TextBox6.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";

                TextBox5.Text = "";
                TextBox1.Text = "";


            }
            else
            {
                Label1.Text = "You have already registered with us..";
            }
            //Session["name"] = TextBox1.Text.Trim();
            //Session["address"] = TextBox6.Text.Trim();
            //Session["mobile"] = TextBox2.Text.Trim();


        }
        catch (Exception ex)
        {

            Label1.Text = ex.ToString();

        }
    }
}