using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class del_db : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string connectionString = ConfigurationManager.ConnectionStrings["YourConnectionStringName"].ConnectionString;

        try
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                // Define your SQL DELETE command to delete all data from the Cart table
                string deleteQuery = "DELETE FROM Cart";

                using (SqlCommand command = new SqlCommand(deleteQuery, connection))
                {
                    // Execute the DELETE command
                    int rowsAffected = command.ExecuteNonQuery();
                    if (rowsAffected > 0)
                    {
                        Label1.Text = "All data from Cart table deleted successfully.";
                    }
                    else
                    {
                        Label1.Text = "No data found to delete in Cart table.";
                    }
                }
            }
        }
        catch (Exception ex)
        {
            Label1.Text = "An error occurred: " + ex.Message;
        }
    }
}
