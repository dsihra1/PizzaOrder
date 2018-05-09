using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        Decimal totalPrice = Convert.ToDecimal(ddlPizzaSize.SelectedValue);

   //     totalPrice += Convert.ToDecimal(rblCrust.SelectedValue);
        totalPrice = totalPrice + Convert.ToDecimal(rblCrust.SelectedValue);

        foreach (ListItem i in cblToppings.Items)
        {
            if (i.Selected)
            {
                totalPrice += Convert.ToDecimal(i.Value);
            }
        }

        lblTotal.Text = "Your total is: " + totalPrice.ToString("c");
    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}