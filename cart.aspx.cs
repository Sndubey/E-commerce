using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web.Configuration;
using System.Web.UI.WebControls;

public class CartItem
{
    public int SerialNumber { get; set; } // Add SerialNumber property
    public string ProductName { get; set; }
    public decimal ProductPrice { get; set; }
}

public partial class cart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Get the connection string from web.config
            string connectionString = WebConfigurationManager.ConnectionStrings["YourConnectionStringName"].ConnectionString;

            // Create a list to store cart items
            List<CartItem> cartItems = new List<CartItem>();

            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();

                    // SQL query to select all data from the Cart table
                    string sqlQuery = "SELECT pro_name, pro_price FROM Cart"; // Exclude user_id

                    using (SqlCommand command = new SqlCommand(sqlQuery, connection))
                    {
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            int serialNumber = 1; // Initialize serial number
                            while (reader.Read())
                            {
                                CartItem cartItem = new CartItem
                                {
                                    SerialNumber = serialNumber++, // Assign serial number
                                    ProductName = reader.GetString(0),
                                    ProductPrice = reader.GetDecimal(1)
                                };

                                cartItems.Add(cartItem);
                            }
                        }
                    }
                }

                // Calculate the total price of all items in the cart
                decimal totalPrice = cartItems.Sum(item => item.ProductPrice);

                // Display the total price on the page
                Label1.Text = "Total Price: Rs " + totalPrice.ToString("0.00");
            }
            catch (Exception ex)
            {
                // Handle any exceptions
                Response.Write("Error: " + ex.Message);
            }

            // Bind the cartItems list to the GridView
            GridView1.DataSource = cartItems;
            GridView1.DataBind();
        }
    }
}
