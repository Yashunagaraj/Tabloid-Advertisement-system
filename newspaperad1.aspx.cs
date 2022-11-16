using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail; 
using System.Data;
using System.Data.SqlClient;
using System.Configuration; 
public partial class greatseo_newspaperad1 : System.Web.UI.Page
{

    SqlConnection con;
    SqlConnection con1;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = Request.QueryString.Get(0);
        Label11.Text = DateTime.Now.ToLongDateString();
        ///////////////////////////////////////////////
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        con = new SqlConnection(strcon);


        try
        {

            string s = "select * from receipt";


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
            if (ctr == 100)
            {

                Label10.Text = "ID-" + ctr.ToString();

            }
            else
            {
                ctr++;
                Label10.Text = "ID-" + ctr.ToString();
            }
        }
        catch (Exception ex)
        {
            Label1.Text = ex.ToString();
        }


        /////////////////////////////////////////////////////
        try
        {


            //Session["clogname"] = TextBox1.Text.Trim();
            //Session["cname"] = cname;
            //Session["caddress"] = caddress;


            //string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            //con = new SqlConnection(strcon);


            string s = "select * from product where pid=" + "'" + Label2.Text + "'";


            con.Open();

            SqlCommand cmd1 = new SqlCommand(s, con);
            SqlDataReader reader;
            reader = cmd1.ExecuteReader();
         
           
            while (reader.Read())
            {
               
                Label3.Text = reader.GetString(1);
                Label4.Text = reader.GetString(2);
                Label5.Text = reader.GetString(6);

            }
            reader.Close();
            con.Close();
            Label6.Text = (Convert.ToDouble(Label4.Text) + Convert.ToDouble(Label5.Text)).ToString();

            Label7.Text = Session["cname"].ToString();
            Label8.Text = Session["caddress"].ToString();
            Label9.Text = Session["clogname"].ToString();
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

          
          //  con.Open();

         
           
                String s = "insert into receipt values(@a,@b,@c,@d,@e,@f,@g,@h,@i,@j,@k,@l)";
                 SqlCommand cmd1 = new SqlCommand(s, con);
                cmd1.Parameters.Add("@a", Label10.Text);
                cmd1.Parameters.Add("@b", Label11.Text);
                cmd1.Parameters.Add("@c", Label2.Text);
                cmd1.Parameters.Add("@d", Label3.Text);
                cmd1.Parameters.Add("@e", Label4.Text);
                cmd1.Parameters.Add("@f", Label5.Text);
                cmd1.Parameters.Add("@g", Label6.Text);
             cmd1.Parameters.Add("@h", TextBox1.Text);
             cmd1.Parameters.Add("@i", FileUpload1.FileName);
             cmd1.Parameters.Add("@j", Label7.Text);

             cmd1.Parameters.Add("@k", Label8.Text);
                     cmd1.Parameters.Add("@l", Label9.Text);





                con.Open();
                cmd1.ExecuteNonQuery();
                con.Close();
                Label1.Text = "Booked successfully";

                //TextBox6.Text = "";
                //TextBox2.Text = "";
                //TextBox3.Text = "";
                //TextBox4.Text = "";

                //TextBox5.Text = "";
                //TextBox1.Text = "";
            //////////////////////////////////////////////

                

                MailMessage msg = new MailMessage();
                SmtpClient smtp = new SmtpClient();
                msg.From = new MailAddress("varuaithal123@gmail.com");
                msg.To.Add(Label9.Text);
                msg.Subject = "AD Booking Confirmation ";
                msg.Body = "Your Order Amount is  " + Label6.Text;
                msg.IsBodyHtml = true;
                smtp.Host = "smtp.gmail.com";
                System.Net.NetworkCredential Networkcred = new System.Net.NetworkCredential();
                Networkcred.UserName = "varuaithal123@gmail.com";
                Networkcred.Password = "yashu123$";
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = Networkcred;
                smtp.Port = 587;
                smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                //smtp.Port = 465;
                smtp.EnableSsl = true;
                smtp.Send(msg);


           


        }
        catch (Exception ex)
        {

            Label1.Text = ex.ToString();

        }
    }
}