using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        // Get the selected value from the DropDownList
        string selectedValue = DropDownList1.SelectedValue;

        // Check if the selected value is "Men" and redirect to the appropriate page
        if (selectedValue == "Men")
        {
            Response.Redirect("men.aspx");
        }
    }

}
