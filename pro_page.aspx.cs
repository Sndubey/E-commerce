using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public class ProductDataAccess1
{
    private readonly string connectionString;

    public ProductDataAccess1()
    {
        // Initialize the connection string from web.config
        connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["YourConnectionStringName"].ConnectionString;
    }

    //function for fetching product1 name
    public string GetProNameById(int pro_id)
    {
        string pro_name = string.Empty;

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();
            string query = "SELECT pro_name FROM product1 WHERE pro_id = @pro_id";
            SqlCommand cmd = new SqlCommand(query, connection);
            cmd.Parameters.AddWithValue("@pro_id", pro_id);

            using (SqlDataReader reader = cmd.ExecuteReader())
            {
                if (reader.Read())
                {
                    pro_name = reader["pro_name"].ToString();
                }
            }
        }

        return pro_name;
    }

    //function for fetching product1 price
    public string GetProPriceById(int pro_id)
    {
        string pro_price = string.Empty;

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();
            string query = "SELECT pro_price FROM product1 WHERE pro_id = @pro_id";
            SqlCommand cmd = new SqlCommand(query, connection);
            cmd.Parameters.AddWithValue("@pro_id", pro_id);

            using (SqlDataReader reader = cmd.ExecuteReader())
            {
                if (reader.Read())
                {
                    pro_price = reader["pro_price"].ToString();
                }
            }
        }

        return pro_price;
    }

    //function for fetching for product1 details
    public string GetProDescById(int pro_id)
    {
        string pro_desc = string.Empty;

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();
            string query = "SELECT pro_desc FROM product1 WHERE pro_id = @pro_id";
            SqlCommand cmd = new SqlCommand(query, connection);
            cmd.Parameters.AddWithValue("@pro_id", pro_id);

            using (SqlDataReader reader = cmd.ExecuteReader())
            {
                if (reader.Read())
                {
                    pro_desc = reader["pro_desc"].ToString();
                }
            }
        }

        return pro_desc;
    }

}

public partial class pro_page : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string textData = Server.UrlDecode(Request.QueryString["data"]);
        int textD = int.Parse(textData);
        int pro_id = textD;

        if (!IsPostBack)
        {

            ProductDataAccess1 dataAccess = new ProductDataAccess1();
            string pro_name = dataAccess.GetProNameById(pro_id);
            string pro_price = dataAccess.GetProPriceById(pro_id);
            string pro_desc = dataAccess.GetProDescById(pro_id);

            proname.Text = pro_name;
            proprice.Text = pro_price;
            prodesc.Text = pro_desc;
        }

        //img fetching code
        SqlConnection con;
        string connectionString = ConfigurationManager.ConnectionStrings["YourConnectionStringName"].ConnectionString;
        con = new SqlConnection(connectionString);
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "SELECT pro_img FROM product1 WHERE pro_id = @pro_id";
        cmd.Parameters.AddWithValue("@pro_id", pro_id);

        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        d1.DataSource = dt;
        d1.DataBind();
        con.Close();

    }

    //function for add to cart
    protected void Button2_Click(object sender, EventArgs e)
    {
        string textData = Server.UrlDecode(Request.QueryString["data"]);
        int textD = int.Parse(textData);
        int selectedProductId = textD;
        string connectionString = ConfigurationManager.ConnectionStrings["YourConnectionStringName"].ConnectionString;

        // Define the variables
        int userID = textD;
        string proName = "";
        decimal proPrice = 0;

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();
            SqlParameter param = new SqlParameter("@ProductId", SqlDbType.Int);
            param.Value = selectedProductId;
            string query = "SELECT pro_name, pro_price FROM product1 WHERE pro_id = @ProductId";
            using (SqlCommand command = new SqlCommand(query, connection))
            {
                command.Parameters.Add(param);

                using (SqlDataReader reader = command.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        proName = reader["pro_name"].ToString();
                        proPrice = Convert.ToDecimal(reader["pro_price"]);
                    }


                    // Close the SqlDataReader
                    reader.Close();

                    // Insert the product into the Cart table.
                    string insertQuery = "INSERT INTO Cart (user_id, pro_name, pro_price) " +
                                         "VALUES (@UserId, @ProName, @ProPrice)";
                    using (SqlCommand insertCommand = new SqlCommand(insertQuery, connection))
                    {
                        insertCommand.Parameters.AddWithValue("@UserId", userID);
                        insertCommand.Parameters.AddWithValue("@ProName", proName);
                        insertCommand.Parameters.AddWithValue("@ProPrice", proPrice);

                        int rowsAffected = insertCommand.ExecuteNonQuery();

                    }
                }
            }
        }
    }
}