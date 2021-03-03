using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;
using System.Configuration;


namespace ASPdotNetProject_Iqbal.ContentPages
{
    public partial class StudentInfo : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DbCon"].ConnectionString);
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void CleanAllControl()
        {
            txtBoxFullName.Text = "";
            txtBoxEmail.Text = "";
            txtBoxRoundNo.Text = "";
            txtBoxPhoneNumber.Text = "";
            txtBoxMessage.Text = "";
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (cBoxAgree.Checked && txtBoxFullName.Text != "" && txtBoxEmail.Text != "" && txtBoxRoundNo.Text != "" && txtBoxPhoneNumber.Text != "")
            {
                con.Open();
                cmd = new SqlCommand("Insert Into ReunionRegistration (FullName, EmailAddress, RoundNo, PhoneNo, Message) Values (@fullname,@email,@round,@phone,@message)", con);
                cmd.Parameters.AddWithValue("@fullname", txtBoxFullName.Text);
                cmd.Parameters.AddWithValue("@email", txtBoxEmail.Text);
                cmd.Parameters.AddWithValue("@round", txtBoxRoundNo.Text);
                cmd.Parameters.AddWithValue("@phone", txtBoxPhoneNumber.Text);
                cmd.Parameters.AddWithValue("@message", txtBoxMessage.Text);
                cmd.ExecuteNonQuery();
                con.Close();
                rtnMessage.Text = "Your Registration Information Successfull Submited!!";
                //Start Email Send
                sendEmailToAuthority();
                sendEmailToClient();
                emailSendSuccess.Text = "Email Send Successfully !!!";
                emailSendSuccess.Visible = true;
                //End Email Send
                CleanAllControl();
            }
            else
            {
                rtnMessage.Text = "Read All the conditions and also check the checkbox!!!";
            }
        }

        private void sendEmailToClient()
        {
            var fromAddress = "1257148iqbal@gmail.com";
            const string fromPassword = "r441257148";
            var toAddress = txtBoxEmail.Text;
            string subject = "Reunion Program-2020";

            string body = "Thank You " + txtBoxFullName.Text + " for your Interest in participation on our reuning program-2020.\n";
            body += "His/her Personal information is like as below.\n";
            body += "Looing forword to see you on the reunion program day." + "\n\n";
            body += "--------------=========<><><><><><> Program Details <><><><><><>==========--------------" + "\n";
            body += "Event Address: " + "New Vision Information Technology (NVIT), 110 CDA Avenue, Nasirabad, (Opposite CTG Shopping Complex) Chittagong- 4000" + "\n";
            body += "Event Date: " + "Friday, 30 October 2020" + "\n";
            body += "Event Start Time: " + "Start from 02:00 PM onwards" + "\n";
            body += "Please feel free to call me on (+8801747 193 694) or contact by (learnprogramwithfun@gmail.com), if you require any further information.";

            //SMTP Settings
            var smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);
            smtp.Timeout = 20000;

            //passing values to SMTP Object
            smtp.Send(fromAddress, toAddress, subject, body);
        }

        protected void sendEmailToAuthority()
        {
            var fromAddress = "1257148iqbal@gmail.com";
            const string fromPassword = "r441257148";
            var toAddress = "iqbalhossain1095@gmail.com";
            string subject = "Reunion Program-2020";

            string body = txtBoxFullName.Text + " is coming to the reuning program-2020.\n";
            body += " His/her Personal information is like as below.\n";
            body += "Trainee Name: " + txtBoxFullName.Text + "\n";
            body += "Email Address: " + txtBoxEmail.Text + "\n";
            body += "Round No: " + txtBoxRoundNo.Text + "\n";
            body += "Phone No: " + txtBoxPhoneNumber.Text + "\n";
            body += "Message: " + txtBoxMessage.Text;

            //SMTP Settings
            var smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);
            smtp.Timeout = 20000;

            //passing values to SMTP Object
            smtp.Send(fromAddress, toAddress, subject, body);

        }
    }
}