using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class registration : System.Web.UI.Page
{
    string s = ConfigurationManager.ConnectionStrings["YourConnectionStringName"].ConnectionString;
    /*{
        SqlConnection con = new SqlConnection(s);
    string com = "select * from reg";
    SqlDataAdapter adapt = new SqlDataAdapter(com, con); // Corrected this line
    DataTable dt = new DataTable();
    adapt.Fill(dt);
    }*/
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {
        // Your code logic here
    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {
        // Your code logic here
    }

    protected void Button1_Click(object sender, EventArgs e)
{
    string username = TextBox1.Text;
    string email = TextBoxemail.Text;
    string password = TextBox2.Text;
    string cpassword = TextBox3.Text;
    string country = DropDownList1.Text;

    //saving data to database from reg page to reg table
    using (SqlConnection con = new SqlConnection(s))
    {
        try
        {
            con.Open();
            string query = "INSERT INTO reg (username, e_mail, password, confirm_password, country) VALUES (@username,@e_mail, @password, @confirm_password, @country)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@username", username);
            cmd.Parameters.AddWithValue("@e_mail", email);
            cmd.Parameters.AddWithValue("@password", password);
            cmd.Parameters.AddWithValue("@confirm_password", cpassword);
            cmd.Parameters.AddWithValue("@country", country);


            int rowsAffected = cmd.ExecuteNonQuery();

            if (rowsAffected > 0)
            {
                // Data inserted successfully
                Session["SuccessMessage"] = "Registration successful"; ;
                Response.Redirect("login.aspx");
            }
            else
            {
                Response.Write("Registration failed.");
            }
        }
        catch (Exception ex)
        {
            // Handle exception
            Response.Write("An error occurred: " + ex.Message);
        }
    }
}

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}