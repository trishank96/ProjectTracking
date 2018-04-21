using System;
using System.Web.UI;
using System.Net.Mail;

public partial class ContactUs : System.Web.UI.Page
{
   

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (Page.IsValid)
            {
                MailMessage msg = new MailMessage();
                msg.From = new MailAddress("mukherjeetrish005@gmail.com");
                msg.To.Add("mukherjeetrish005@gmail.com");

                msg.Body = "<b>Sender Name : </b>" + Name_TextBox.Text + "<br>" +
                    "<b>Sender Email : </b>" + Email_Text.Text + "<br>" +
                    "<b>Sender ContactNo : </b>" + Mobile_Text.Text + "<br>" +
                    "<b>Main Message : </b>" + Comment_Box.Text;
                msg.IsBodyHtml = true;


                SmtpClient smt = new SmtpClient();
                smt.Port = 587;
                smt.Host = "smtp.gmail.com";
                smt.EnableSsl = true;
                smt.Credentials = new System.Net.NetworkCredential("mukherjeetrish005@gmail.com", "tri/4944566");
                smt.Send(msg);

                Message_Label.Text = "Thank You for your valuable feedback";
            }
        }catch(Exception ex)
        {
            Message_Label.ForeColor = System.Drawing.Color.Red;
            Message_Label.Text = "Can't Send your feedback due to some technical issues"+ex.Message;
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Name_TextBox.Text = "";
        Email_Text.Text = "";
        Mobile_Text.Text = "";
        Comment_Box.Text = "";

    }
}