using System;
using System.Configuration;
using System.Data.SqlClient;

public partial class LogIn : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session.Count > 0)
        {
            Response.Write("Welcome" + Session["UName"].ToString());
            TextBox1.Visible = false;
            TextBox3.Visible = false;
            DropDownList1.Visible = false;
            Message_Label.Visible = false;
            Label1.Visible = false;
            Label3.Visible = false;
            Button1.Visible = false;
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select count(*) from Userpass where UName='" + TextBox1.Text + "' and Password='" + TextBox3.Text + "' and Designation='" + DropDownList1.SelectedItem.Text + "'", con);
            int c = int.Parse(cmd.ExecuteScalar().ToString());
            con.Close();
            if (c > 0)
            {
                Session["UName"] = TextBox1.Text;
                if (DropDownList1.SelectedItem.Text == "Client")
                {
                    Response.Redirect("ClientHome.aspx");
                }
                if (DropDownList1.SelectedItem.Text == "BDO")
                {
                    Response.Redirect("BDOHome.aspx");
                }
                if (DropDownList1.SelectedItem.Text == "Project Manager(PM)")
                {
                    Response.Redirect("PMHome.aspx");
                }
                if (DropDownList1.SelectedItem.Text == "Developer")
                {
                    Response.Redirect("DevHomepage.aspx");
                }
                if (DropDownList1.SelectedItem.Text == "HR")
                {
                    Response.Redirect("HRHome.aspx");
                }
            }
            else
            {
                Message_Label.Text = "User name and Password does not match please try again";
            }
            con.Close();
        }
        catch(Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}