using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration; 
public partial class greatseo_aaddproducts : System.Web.UI.Page
{

    SqlConnection con;
    SqlConnection con1;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            con = new SqlConnection(strcon);

            string s = "select * from product ";
            con.Open();

            SqlCommand cmd1 = new SqlCommand(s, con);
            SqlDataReader reader;
            reader = cmd1.ExecuteReader();
            int ctr = 100;
            while (reader.Read())
            {
                ctr++;

            }
            reader.Close();
            con.Close();
            TextBox1.Text = ctr.ToString();

        }
        catch (Exception ex)
        {
            Label1.Text = ex.ToString();
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            String s = "insert into product values(@id,@pd,@r,@pic,@c,@sc,@gst)";
            SqlCommand cmd1 = new SqlCommand(s, con);



            cmd1 = new SqlCommand(s, con);

            cmd1.Parameters.Add("@id", TextBox1.Text);
            cmd1.Parameters.Add("@pd", TextBox2.Text);
            cmd1.Parameters.Add("@r", TextBox3.Text);
            cmd1.Parameters.Add("@pic", FileUpload1.FileName);
            cmd1.Parameters.Add("@c", DropDownList1.Text);
            cmd1.Parameters.Add("@sc", DropDownList2.Text);
            cmd1.Parameters.Add("@gst", TextBox7.Text);
    

            con.Open();
            cmd1.ExecuteNonQuery();
            con.Close();
            Label1.Text = "Registered successfully";

             TextBox7.Text = "";
            TextBox1.Text = "";
            TextBox3.Text = "";
           TextBox2.Text = "";

          //  TextBox5.Text = "";
          //  TextBox6.Text = "";





        }
        catch (Exception ex)
        {

            Label1.Text = ex.ToString();

        }
    }
}