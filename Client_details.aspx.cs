using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Client_details : Page
{
    public String gender;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender ,EventArgs e)
    {
       if(RadioButtonList1.SelectedItem.Text == "Male")
        {
            gender = "Male";
        }
        else
        {
            gender = "Female";
        }
        Boolean useravail;
        useravail = CheckUsername(Client_id.Text);
        if (useravail)
        {
            String query = "insert into Client(ClientName,ClientSex,ClientPhNO,ClientEmail,ClientAdd,CompName) values('" + Client_name.Text + "','" + gender + "','" + Client_phone.Text + "','" + Client_email.Text +"','" + ClientAdd.Text + "','" + ClientComp.Text + "')";
            String authquery = "insert into Userpass(UName,Password,Designation)values('" + Client_id.Text + "','" + Client_pass.Text + "','" + "Client" + "')";
            String mycon = "Data Source=LENOVO-PC;Initial Catalog=RegistrationData;Integrated Security=True";
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.CommandText = authquery;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label10.Text = "You are successfully added";

            Client_id.Text = "";
            Client_name.Text = "";
            Client_pass.Text = "";
            Client_email.Text = "";
            Client_phone.Text = "";
            RadioButtonList1.Visible = false;
            ClientAdd.Text = "";
            ClientComp.Text = "";
        }
        else
        {
            Label10.Text = "Id already used";
        }
    }

    public Boolean CheckUsername(String username)
    {
        bool userstatus;
        String mycon = "Data Source=LENOVO-PC;Initial Catalog=RegistrationData;Integrated Security=True";
        String myquery = "Select * from Userpass where Uname='" + Client_id.Text + "'";
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




    protected void Button1_Click(object sender, EventArgs e)
    {
        Client_id.Text = "";
        Client_name.Text = "";
        Client_pass.Text = "";
        Client_email.Text = "";
        Client_phone.Text = "";
        RadioButtonList1.Visible = false;
        ClientAdd.Text = "";
        ClientComp.Text = "";
    }
}

