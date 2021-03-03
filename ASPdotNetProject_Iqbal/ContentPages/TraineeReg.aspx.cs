using ASPdotNetProject_Iqbal.BL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPdotNetProject_Iqbal.ContentPages
{
    public partial class TraineeInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            try
            {
                StudentsReg sReg = new StudentsReg();
                sReg.Name = txtName.Text;
                sReg.Email = txtEmail.Text;
                sReg.Gender = ddlGender.SelectedValue;
                sReg.DOB = txtDOB.Text;

                bool status = sReg.Save();

                if (status == true)
                {
                    ShowAlert("You Have Successfully Registered");
                }
                else
                {
                    ShowAlert("Failed To Register");
                }

            }
            catch (Exception ex)
            {
                ShowAlert(ex.Message.ToString());
            }
        }

        private void ShowAlert(string strmsg)
        {
            string str1;
            str1 = "<script language = 'javascript' type = 'text/javascript'> alert('" + strmsg + "');</script>";
            ClientScript.RegisterClientScriptBlock(this.GetType(), "JS", str1);
        }
    }
}