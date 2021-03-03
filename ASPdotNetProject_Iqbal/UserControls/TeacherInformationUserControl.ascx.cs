using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPdotNetProject_Iqbal.UserControls
{
    public partial class TeacherInformationUserControl : System.Web.UI.UserControl
    {
        TeacherInformationDataContext ctx;
        protected void Page_Load(object sender, EventArgs e)
        {
            DataLoad();
        }

        public void DataLoad()
        {
            if (Page.IsPostBack)
            {
                GridView1.DataBind();
            }
        }

        private void ShowAlert(string strmsg)
        {
            string str1;
            str1 = "<script language = 'javascript' type = 'text/javascript'> alert('" + strmsg + "');</script>";
            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "JS", str1);
        }

        public void ClearData()
        {
            txtName.Text = "";
            ddlCourse.Text = ddlCourse.Items[0].Value;
            txtEmail.Text = "";
            txtDOB.Text = DateTime.Today.Date.ToString();
            txtMobile.Text = "";
            txtAddress.Text = "";
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            using (ctx = new TeacherInformationDataContext())
            {
                TeacherInformation teacher = new TeacherInformation
                {
                    TeacherName = txtName.Text,
                    Email = txtEmail.Text,
                    Phone = txtMobile.Text,
                    DOB = Convert.ToDateTime(txtDOB.Text),
                    Course = ddlCourse.SelectedValue,
                    Address = txtAddress.Text


                };
                ctx.TeacherInformations.InsertOnSubmit(teacher);
                ctx.SubmitChanges();
            }

            ShowAlert("Data Inserted Successfully!!");
            this.DataLoad();

            ClearData();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            int teacherID = Convert.ToInt32(lblTID.Text);

            ctx = new TeacherInformationDataContext();

            TeacherInformation teacher = new TeacherInformation();

            teacher = ctx.TeacherInformations.Single(x => x.TeacherID == teacherID);

            teacher.TeacherName = txtName.Text;
            teacher.Email = txtEmail.Text;
            teacher.Phone = txtMobile.Text;
            teacher.DOB = Convert.ToDateTime(txtDOB.Text);
            teacher.Course = ddlCourse.SelectedValue;
            teacher.Address = txtAddress.Text;


            ctx.SubmitChanges();

            ShowAlert("Data Updated Successfully!!");
            this.DataLoad();
            ClearData();


            //=============


        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            int teacerId = Convert.ToInt32(lblTID.Text);

            using (ctx = new TeacherInformationDataContext())
            {
                TeacherInformation teacher = (from c in ctx.TeacherInformations
                                              where c.TeacherID == teacerId
                                              select c).FirstOrDefault();
                ctx.TeacherInformations.DeleteOnSubmit(teacher);
                ctx.SubmitChanges();
            }
            ShowAlert("Data Deleted Successfully!!");
            this.DataLoad();
            ClearData();


        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblTID.Text = GridView1.SelectedRow.Cells[0].Text;
            txtName.Text = GridView1.SelectedRow.Cells[1].Text;
            txtEmail.Text = GridView1.SelectedRow.Cells[2].Text;
            txtMobile.Text = GridView1.SelectedRow.Cells[3].Text;
            txtDOB.Text = GridView1.SelectedRow.Cells[4].Text;

            txtAddress.Text = GridView1.SelectedRow.Cells[6].Text;
        }
    }
}