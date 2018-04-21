using System;
using System.Web.UI.WebControls;

public partial class DevHomepage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "Welcome To" + Session["UName"].ToString();
    }

    protected void Menu2_MenuItemClick(object sender, MenuEventArgs e)
    {

    }
}