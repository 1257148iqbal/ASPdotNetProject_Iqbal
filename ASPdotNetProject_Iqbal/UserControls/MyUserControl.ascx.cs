using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;


namespace ASPdotNetProject_Iqbal.UserControls
{
    public partial class MyUserControl : System.Web.UI.UserControl
    {
        string cs = ConfigurationManager.ConnectionStrings["DbCon"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            DataLoad();
        }

        public void CleanAllControl()
        {
            txtDate.Text = DateTime.Today.Date.ToString();
            txtEmail.Text = "";
            txtName.Text = "";
            txtClass.Text = "";
            txtPassword.Text = "";
            txtConfirmpass.Text = "";
            CheckBoxAgree.Checked = false;
            ddlGender.Text = ddlGender.Items[0].ToString();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (CheckBoxAgree.Checked && txtName.Text != "" && txtDate.Text != "")
            {
                using (con = new SqlConnection(cs))
                {
                    con.Open();
                    cmd = new SqlCommand("Insert Into Trainee(TraineeName, EmailAddress, Gender, DOB, Class, Password) Values (@name, @email, @gender, @dob, @class, @password)", con);
                    cmd.Parameters.AddWithValue("@name", txtName.Text);
                    cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                    cmd.Parameters.AddWithValue("@gender", ddlGender.SelectedValue);
                    cmd.Parameters.AddWithValue("@dob", txtDate.Text);
                    cmd.Parameters.AddWithValue("@class", txtClass.Text);
                    cmd.Parameters.AddWithValue("@password", txtPassword.Text);
                    cmd.ExecuteNonQuery();
                    DataLoad();
                    con.Close();
                    ShowAlert("Data Inserted Successfully!!!!!");
                    CleanAllControl();
                }
            }
            else
            {
                lblMessage.Text = "Please Provide All Info!!!";
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            if (CheckBoxAgree.Checked && txtName.Text != "" && txtDate.Text != "")
            {
                using (con = new SqlConnection(cs))
                {
                    con.Open();
                    cmd = new SqlCommand("Update Trainee Set TraineeName=@name, EmailAddress= @email, Gender=@gender, DOB=@dob, Class=@class, Password=@password Where TraineeID=@traineeId", con);
                    cmd.Parameters.AddWithValue("@traineeId", lblTid.Text);
                    cmd.Parameters.AddWithValue("@name", txtName.Text);
                    cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                    cmd.Parameters.AddWithValue("@gender", ddlGender.SelectedValue);
                    cmd.Parameters.AddWithValue("@dob", txtDate.Text);
                    cmd.Parameters.AddWithValue("@class", txtClass.Text);
                    cmd.Parameters.AddWithValue("@password", txtPassword.Text);
                    cmd.ExecuteNonQuery();
                    DataLoad();
                    con.Close();
                    ShowAlert("Data Updated Successfully!!");
                    CleanAllControl();
                }
            }
            else
            {
                lblMessage.Text = "Please Provide All Info!!!";
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            using (con = new SqlConnection(cs))
            {
                con.Open();
                cmd = new SqlCommand("Delete From Trainee Where TraineeID=@traineeId", con);
                cmd.Parameters.AddWithValue("@traineeId", lblTid.Text);
                cmd.ExecuteNonQuery();
                DataLoad();
                con.Close();
                ShowAlert("Data Deleted Successfully!!!");
                CleanAllControl();
            }
        }

        public void DataLoad()
        {
            if (Page.IsPostBack)
            {
                GridView1.DataBind();
            }
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtName.Text = GridView1.SelectedRow.Cells[1].Text;
            txtEmail.Text = GridView1.SelectedRow.Cells[2].Text;
            ddlGender.Text = GridView1.SelectedRow.Cells[3].Text;
            txtDate.Text = GridView1.SelectedRow.Cells[4].Text;
            txtClass.Text = GridView1.SelectedRow.Cells[5].Text;
            txtPassword.Text = GridView1.SelectedRow.Cells[6].Text;

            lblTid.Text = GridView1.SelectedRow.Cells[0].Text;
        }

        private void ShowAlert(string strmsg)
        {
            string str1;
            str1 = "<script language = 'javascript' type = 'text/javascript'> alert('" + strmsg + "');</script>";
            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "JS", str1);
        }
    }
}