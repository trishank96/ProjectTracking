using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class Registration : System.Web.UI.Page
{
    String FullName;
    String Gender;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        FullName = NameTextBox.Text + "" + LnameTextBox.Text;
        if (RadioButton1.Checked)
        {
            Gender = "Male";
        }
        else
        {
            Gender = "Female";
        }
        Boolean useravailable;
        useravailable = checkusername(UserTextBox.Text);
        if (useravailable)
        {
            
                String query = "insert into Employee(ENAME,Designation,Phno,EMAIL,Gender,Address,CoMP name,Country,State) values('" + FullName +"','" + DesigDropDown.Text + "','" + MobBox.Text + "','" + EmailTextBox.Text + "','" + Gender + "','" + AddressBox.Text + "','" + ComTextBox.Text + "','"+CountryDropDown.Text+"','"+StateDropDown.Text+"')";
                String authquery = "insert into Userpass(UName,Password,Designation)values('" + UserTextBox.Text + "','" + PassText.Text + "','" + DesigDropDown.Text + "')";
                String mycon = "Data Source=LENOVO-PC\\SQLEXPRESS;Initial Catalog=Registration_Data;Integrated Security=True";
                SqlConnection con = new SqlConnection(mycon);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = query;
                cmd.CommandText = authquery;
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                Label15.Text = "You are successfully signed up!!";
                NameTextBox.Text = "";
                LnameTextBox.Text = "";
                DOBTextBox.Text = "";
                CountryDropDown.Text = "0";
                StateDropDown.Text = "0";
                DesigDropDown.Text = "Select";    
           
        }
        else
        {
            Label15.Text = "UserName Not Available";
        }

    }
    public Boolean checkusername(String username)
    {
        bool userstatus;
        String mycon = "Data Source=LENOVO-PC\\SQLEXPRESS;Initial Catalog=Registration_Data;Integrated Security=True";
        String myquery = "Select * from Userpass where Uname='" + UserTextBox.Text + "'";
        SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            userstatus = false;
        }
        else
        {
            userstatus = true;

        }
        con.Close();

        return userstatus;

    }




   
}