using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration; 
public partial class greatseo_newspaperad : System.Web.UI.Page
{

    SqlConnection con;
    SqlConnection con1;
    protected void Page_Load(object sender, EventArgs e)
    {
          try
        {
            string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            con = new SqlConnection(strcon);
           // string ln = Session["logname"].ToString();
            String str = "select *  from product where category='NEWS PAPER AD'";// where not email=" + "'" + ln + "'";
            SqlCommand cm = new SqlCommand(str, con);
            SqlDataReader reader;
            con.Open();
             Response.Write("	<header class=top-navbar>		<nav class=navbar navbar-expand-lg navbar-light bg-light>			<div class=container>            TABLOID AD AGENCY						<button class=navbar-toggler type=button data-toggle=collapse data-target=#navbars-seo aria-controls=navbars-rs-food aria-expanded=false aria-label=Toggle navigation>				  <span class=navbar-toggler-icon></span>				</button>				</div>		</nav>	</header>");

             Response.Write("<br><br><br><br><br><br><table id=customers align=center border=2><tr><td>Product Id</td><td>Product Description</td><td>Rate</td><td>Image</td><td>Category</td><td>Sub Category</td> <td>GST</td><td>ACTION</td></tr><tr>");
            reader = cm.ExecuteReader();
            String s = "", pid = "";
            while (reader.Read())
            {
                for (int i = 0; i <= 6; i++)
                {
                    s = reader.GetString(i).Trim();
                    if (i == 3)
                    {
                        //Response.Write(s);
                        Response.Write("<td><img src=" + s + " width=100 height=100 ></img></td>");
                        //    Response.Write("<td><a href=addtocart.aspx?id=" + s + " >Add to Cart</a></td>");
                    }
                    else if (i == 0)
                    {
                        pid = s;
                        Response.Write("<td>" + s + " </td>");


                    }
                    else
                    {

                        Response.Write("<td>" + s + " </td>");


                    }


                }
                Response.Write("<td><a href=newspaperad1.aspx?id=" + pid + " >BOOK THIS AD</a></td>");
                //    Response.Write("<td><a href=Deletebook.aspx?id=" + pid + " ><img src=delete.jpg height=50 width=50></img></a></td>");
                // Response.Write("<td><a href=Editbook.aspx?id="+" class=btn btn-info btn-lg>       <span class=glyphicon glyphicon-pencil></span> Edit     </a></td>");
                //  Response.Write("<td><a href=deletebook.aspx?id=" + s + " >Delete</a></td>");
                //   Response.Write("<td><a href=Viewcommentsmainpage1.aspx?u=" + s + ">Download<a/></td>");

                Response.Write("</tr>");
            }
            Response.Write("</table>");
            // Response.Write("<a href=homepage.aspx> back </a>");
            con.Close();

        }
          catch (Exception ex)
          {
             // Label1.Text = ex.ToString();
          }

        
    }
}
