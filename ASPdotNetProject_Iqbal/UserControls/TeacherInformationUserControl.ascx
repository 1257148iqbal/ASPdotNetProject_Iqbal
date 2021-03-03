<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TeacherInformationUserControl.ascx.cs" Inherits="ASPdotNetProject_Iqbal.UserControls.TeacherInformationUserControl" %>


<style type="text/css">
    .auto-style1 {
        width: 1018px;
    }
    .auto-style2 {
        font-size: x-large;
        color: #0000CC;
    }
</style>


<div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="../images/teacher.png" width="100"/>
                                </center>
                            </div>
                        </div>
                             <div class="row">
                                <div class="col">
                                <center>
                                     <h3>Teacher&#39;s Information</h3>
                             </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>

                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Full Name</label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ControlToValidate="txtName" ErrorMessage="Name Is Required">*</asp:RequiredFieldValidator>
                                <div class="auto-style1">
                                    <asp:TextBox CssClass="form-control" ID="txtName" runat="server" placeholder="Full Name" Width="180px"></asp:TextBox>
                                </div>

                            </div>
                            
                            <div class="col-md-6">
                                <label>Email Address</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtEmail" runat="server" placeholder="Email" Width="180px"></asp:TextBox>
                                </div>
                            </div>

                        </div>


                        <div class="row">
                            <div class="col-md-6">
                                <label>Phone No</label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorMobile" runat="server" ControlToValidate="txtMobile" ErrorMessage="Mobile Number Is Required">*</asp:RequiredFieldValidator>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtMobile" runat="server" placeholder="Phone No" Width="180px"></asp:TextBox>
                                </div>
                            </div>
                                <div class="col-md-6">
                                <label>Date Of Birth</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtDOB" runat="server" placeholder="Date of Birth" TextMode="Date" Width="180px"></asp:TextBox>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-md-6">
                                Course<asp:RequiredFieldValidator ID="RequiredFieldValidatorGender" runat="server" ControlToValidate="ddlCourse" ErrorMessage="Pick a Valid Gender value [Male,Female or Others]" InitialValue="0">*</asp:RequiredFieldValidator>
                                <div class="form-group">
                                    <asp:DropDownList ID="ddlCourse" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Class" DataValueField="Class" Height="26px" Width="185px">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DbCon %>" SelectCommand="SELECT [Class] FROM [Trainee]"></asp:SqlDataSource>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Address</label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorAddress" runat="server" ControlToValidate="txtAddress" ErrorMessage="Address Is Required!">*</asp:RequiredFieldValidator>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtAddress" runat="server" placeholder="Address" Width="180px"></asp:TextBox>
                                </div>
                            </div>
                        </div>


                        <asp:Label ID="lblTID" runat="server" Visible="False"></asp:Label>


                        <br />

                        <div class="row">
                            <div class="col-md-4">
                                <asp:Button class="btn btn-success btn-block btn-lg" ID="btnAdd" runat="server" Text="Add" BackColor="#009933" ForeColor="White" OnClick="btnAdd_Click" />
                            </div>

                            <div class="col-md-4">
                                <asp:Button class="btn btn-warning btn-block btn-lg" ID="btnUpdate" runat="server" Text="Update" BackColor="#CC9900" OnClick="btnUpdate_Click" />
                            </div>

                            <div class="col-md-4">
                                <asp:Button class="btn btn-danger btn-block btn-lg" ID="btnDelete" runat="server" Text="Delete" BackColor="#CC0000" ForeColor="White" OnClick="btnDelete_Click" />

                            </div>

                        </div>
                        <br />
                        <div class="col-md-6 mx-auto">
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                        </div>
                    </div>


                </div>
            </div>


            <div class="col-md-12">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h2>Teacher&#39;s Data</h2>
                           <asp:Label class="badge badge-pill badge-info" ID="lblTeacherData" runat="server" Text="Teacher Information for Update Or Delete" BackColor="#333399" ForeColor="White"></asp:Label>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                         <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="TeacherID" DataSourceID="SqlDataSource1">
                             <Columns>
                                 <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                                 <asp:BoundField DataField="TeacherID" HeaderText="TeacherID" InsertVisible="False" ReadOnly="True" SortExpression="TeacherID" />
                                 <asp:BoundField DataField="TeacherName" HeaderText="TeacherName" SortExpression="TeacherName" />
                                 <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                 <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                                 <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                                 <asp:BoundField DataField="Course" HeaderText="Course" SortExpression="Course" />
                                 <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                             </Columns>
                         </asp:GridView>
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DbCon %>" DeleteCommand="DELETE FROM [TeacherInformation] WHERE [TeacherID] = @TeacherID" InsertCommand="INSERT INTO [TeacherInformation] ([TeacherName], [Email], [Phone], [DOB], [Course], [Address]) VALUES (@TeacherName, @Email, @Phone, @DOB, @Course, @Address)" SelectCommand="SELECT * FROM [TeacherInformation]" UpdateCommand="UPDATE [TeacherInformation] SET [TeacherName] = @TeacherName, [Email] = @Email, [Phone] = @Phone, [DOB] = @DOB, [Course] = @Course, [Address] = @Address WHERE [TeacherID] = @TeacherID">
                             <DeleteParameters>
                                 <asp:Parameter Name="TeacherID" Type="Int32" />
                             </DeleteParameters>
                             <InsertParameters>
                                 <asp:Parameter Name="TeacherName" Type="String" />
                                 <asp:Parameter Name="Email" Type="String" />
                                 <asp:Parameter Name="Phone" Type="String" />
                                 <asp:Parameter DbType="Date" Name="DOB" />
                                 <asp:Parameter Name="Course" Type="String" />
                                 <asp:Parameter Name="Address" Type="String" />
                             </InsertParameters>
                             <UpdateParameters>
                                 <asp:Parameter Name="TeacherName" Type="String" />
                                 <asp:Parameter Name="Email" Type="String" />
                                 <asp:Parameter Name="Phone" Type="String" />
                                 <asp:Parameter DbType="Date" Name="DOB" />
                                 <asp:Parameter Name="Course" Type="String" />
                                 <asp:Parameter Name="Address" Type="String" />
                                 <asp:Parameter Name="TeacherID" Type="Int32" />
                             </UpdateParameters>
                         </asp:SqlDataSource>
                     </div>
                  </div>
               </div>
            </div>
         </div>


        </div>
    </div>
<p>
    &nbsp;</p>
<p class="auto-style2">
    <strong>Form View Teacher&#39;s Information</strong></p>
<asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="TeacherID" DataSourceID="SqlDataSource1">
    <EditItemTemplate>
        TeacherID:
        <asp:Label ID="TeacherIDLabel1" runat="server" Text='<%# Eval("TeacherID") %>' />
        <br />
        TeacherName:
        <asp:TextBox ID="TeacherNameTextBox" runat="server" Text='<%# Bind("TeacherName") %>' />
        <br />
        Email:
        <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
        <br />
        Phone:
        <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
        <br />
        DOB:
        <asp:TextBox ID="DOBTextBox" runat="server" Text='<%# Bind("DOB") %>' />
        <br />
        Course:
        <asp:TextBox ID="CourseTextBox" runat="server" Text='<%# Bind("Course") %>' />
        <br />
        Address:
        <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
        <br />
        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </EditItemTemplate>
    <InsertItemTemplate>
        TeacherName:
        <asp:TextBox ID="TeacherNameTextBox" runat="server" Text='<%# Bind("TeacherName") %>' />
        <br />
        Email:
        <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
        <br />
        Phone:
        <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
        <br />
        DOB:
        <asp:TextBox ID="DOBTextBox" runat="server" Text='<%# Bind("DOB") %>' />
        <br />
        Course:
        <asp:TextBox ID="CourseTextBox" runat="server" Text='<%# Bind("Course") %>' />
        <br />
        Address:
        <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
        <br />
        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </InsertItemTemplate>
    <ItemTemplate>
        TeacherID:
        <asp:Label ID="TeacherIDLabel" runat="server" Text='<%# Eval("TeacherID") %>' />
        <br />
        TeacherName:
        <asp:Label ID="TeacherNameLabel" runat="server" Text='<%# Bind("TeacherName") %>' />
        <br />
        Email:
        <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' />
        <br />
        Phone:
        <asp:Label ID="PhoneLabel" runat="server" Text='<%# Bind("Phone") %>' />
        <br />
        DOB:
        <asp:Label ID="DOBLabel" runat="server" Text='<%# Bind("DOB") %>' />
        <br />
        Course:
        <asp:Label ID="CourseLabel" runat="server" Text='<%# Bind("Course") %>' />
        <br />
        Address:
        <asp:Label ID="AddressLabel" runat="server" Text='<%# Bind("Address") %>' />
        <br />
        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
    </ItemTemplate>
</asp:FormView>
