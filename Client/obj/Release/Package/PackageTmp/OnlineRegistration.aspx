<%@ Page Title="Sign Up" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OnlineRegistration.aspx.cs" Inherits="Website.forms.OnlineRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="first" runat="server">
        <br />
        <h2 class="text-primary" style="padding-left: 10px">Online Registration Form</h2>
        <div class="container">
            <form class="form-horizontal">
                <h7 class="text-danger">* Shows Required Fields</h7>
                <h4 class="text-info">Your Information</h4>
                <hr />
                <div class="form-group row">
                    <label for="staticName" class="col-md-2 col-form-label font-weight-bold">First Name:<span class="ion-android-star" style="color: red"></span></label>
                    <asp:TextBox ID="txtfirstname" runat="server" CssClass="col-md-2 form-control" PlaceHolder="First Name" type="Text" required></asp:TextBox>
                    <label for="staticmiddlename" class="col-md-2 col-form-label font-weight-bold">Middle Name :<span class="ion-android-star" style="color: red"></span></label>
                    <asp:TextBox ID="txtmiddlename" runat="server" CssClass="col-md-2 form-control" PlaceHolder="Middle Name" required></asp:TextBox>
                    <label for="staticlastname" class="col-md-2 col-form-label font-weight-bold">Last Name :<span class="ion-android-star" style="color: red"></span></label>
                    <asp:TextBox ID="txtlastname" runat="server" CssClass="col-md-2 form-control" PlaceHolder="Last Name" required></asp:TextBox>
                </div>
                <div class="form-group row">
                    <label for="staticEmail" class="col-md-2 col-form-label font-weight-bold">Email:<span class="ion-android-star" style="color: red"></span></label>
                    <asp:TextBox ID="txtUserEmail" runat="server" placeholder="email@email.com" CssClass="col-md-2 form-control" type="Email" required></asp:TextBox>
                    <label for="phone" class="col-md-2 col-form-label font-weight-bold">Phone:<span class="ion-android-star" style="color: red"></span></label>
                    <asp:TextBox ID="txtUserPhone" placeholder="123456789" CssClass="col-md-2 form-control" runat="server" TextMode="Phone" required></asp:TextBox>
                    <label for="phone" class="col-sm-2 col-form-label font-weight-bold">Caste:<span class="ion-android-star" style="color: red"></span></label>
                    <asp:TextBox ID="inputcaste" placeholder="Sindhi" CssClass="col-md-2 form-control" runat="server" required></asp:TextBox>
                </div>


                <h4 class="text-info">Address</h4>
                <hr />
                <div class="form-group row">
                    <label for="text" class="col-md-2 col-form-label font-weight-bold">Address Line1:<span class="ion-android-star" style="color: red"></span></label>
                    <asp:TextBox ID="txtaddress1" runat="server" CssClass="col-md-3 form-control" placeholder="Street address, P.O. box, company name, c/o" required></asp:TextBox>
                    <label for="text" class="col-md-2 col-form-label font-weight-bold">Address Line2:</label>
                    <asp:TextBox ID="txtaddress2" CssClass="form-control col-md-3" placeholder="Apartment, suite , unit, building, floor, etc" runat="server"></asp:TextBox>
                </div>
                <div class="form-group row">
                    <label for="text" class="col-md-2 col-form-label font-weight-bold">City / Town:<span class="ion-android-star" style="color: red"></span></label>
                    <asp:TextBox ID="inputcity" CssClass="col-md-3 form-control " placeholder="ULHASNAGAR" runat="server" required></asp:TextBox>
                    <label for="text" class="col-md-2 col-form-label font-weight-bold">State / Region:<span class="ion-android-star" style="color: red"></span></label>
                    <asp:TextBox ID="inputstatus" CssClass="col-md-3 form-control" placeholder="THANE" runat="server" required></asp:TextBox>
                </div>
                <div class="form-group row">
                    <label for="text" class="col-md-2 col-form-label font-weight-bold">Zip / Postal Code:<span class="ion-android-star" style="color: red"></span></label>
                    <asp:TextBox ID="inputpincode" CssClass="col-md-3 form-control" placeholder="421003" runat="server" required></asp:TextBox>
                    <label for="text" class="col-md-2 col-form-label font-weight-bold">Country:<span class="ion-android-star" style="color: red"></span></label>
                    <asp:TextBox ID="inputcountry" CssClass="col-md-3 form-control" placeholder="INDIA" runat="server" required></asp:TextBox>
                </div>
                <div class="form-group row">
                    <div class="col-md-4"></div>
                    <asp:Button ID="btufirst" CssClass=" col-md-3 font-weight-bold bg-success" runat="server" Text="Next" OnClick="btufirst_Click" />
                </div>
            </form>
        </div>

    </asp:Panel>

    <asp:Panel ID="second" runat="server">
        <div class="container">
            <form class="form-horizontal" action="/" method="post">
                <br />
                <h4 class="text-info">Financial Information</h4>
                <hr />
                <div class="form-group row">
                    <label for="text" class="col-md-3 col-form-label font-weight-bold">No. of family Members:<span class="ion-android-star" style="color: red"></span></label>
                    <asp:TextBox ID="txtfamilyno" CssClass="col-md-2 form-control" runat="server" TextMode="Number" required />
                    <label for="ownrent" class="col-sm-3 col-form-label font-weight-bold">Own House or Rent:<span class="ion-android-star" style="color: red"></span></label>
                    <%--<asp:TextBox ID="txtownrenthouse" runat="server" PlaceHolder="Rent/Own" CssClass="col-md-2 form-control" required></asp:TextBox>--%>
                    <asp:DropDownList ID="txtownrenthouse" runat="server" CssClass="col-md-2 form-control" required>
                        <asp:ListItem Value="-1" Text="-Select-"></asp:ListItem>
                        <asp:ListItem Value="1" Text="Own House"></asp:ListItem>
                        <asp:ListItem Value="2" Text="Rent House"></asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group row">
                    <label for="salary" class="col-md-3 col-form-label font-weight-bold">Salary slip: </label>
                    <asp:FileUpload ID="filesalary" PlaceHoler="" runat="server" Font-Size="Small" CssClass="col-md-2" />
                    <label for="text" class="col-md-3 col-form-label font-weight-bold">Total earning per month:<span class="ion-android-star" style="color: red"></span></label>
                    <asp:TextBox ID="totalearning" runat="server" CssClass="col-md-2 form-control" placeholder="15000" required />
                </div>
                <div class="form-group row">
                    <p class="text-nowrap text-muted">Please attach salary proof scan copy</p>
                </div>

                <h4 class="text-info">Eduction Information</h4>
                <hr />
                <div class="form-group row">
                    <label for="text" class="col-md-2 col-form-label font-weight-bold">Collage Name:<span class="ion-android-star" style="color: red"></span></label>
                    <asp:TextBox ID="collagename" CssClass="col-md-3 form-control" PlaceHolder="collage" runat="server" required />
                    <label for="text" class="col-md-2 col-form-label font-weight-bold">STD/YEAR:<span class="ion-android-star" style="color: red"></span></label>
                    <asp:TextBox ID="txtstd" CssClass="col-md-3 form-control" placeholder="" runat="server" required />
                </div>
                <div class="form-group row">
                    <label for="text" class="col-md-2 col-form-label font-weight-bold">Total Marks:<span class="ion-android-star" style="color: red"></span></label>
                    <asp:TextBox ID="txttotalmark" CssClass="col-md-3 form-control" placeholder="555" runat="server" required />
                    <label for="text" class="col-md-2 col-form-label font-weight-bold">Percentage:<span class="ion-android-star" style="color: red"></span></label>
                    <asp:TextBox ID="txtpercentage" CssClass="col-md-3 form-control" placeholder="80 %" runat="server" required />
                </div>
                <div class="form-group row">
                    <label for="text" class="col-md-6 col-form-label font-weight-bold">Have you own Prize/ award/ scholarship- If yes describe:</label>
                    <asp:TextBox ID="txtscholarship" CssClass="col-md-4 form-control" runat="server" />
                </div>
                <div class="form-group row">
                    <div class="col-md-3"></div>
                    <asp:Button ID="btuback1" CssClass=" col-md-2 font-weight-bold bg-primary" runat="server" Text="Back" OnClick="btuback1_Click" formnovalidate />
                    <div class="col-sm-1"></div>
                    <asp:Button ID="btusecond" Text="Next" CssClass="col-md-2 font-weight-bold bg-success" runat="server" OnClick="btusecond_Click" />


                </div>
            </form>
        </div>
    </asp:Panel>

    <asp:Panel ID="third" runat="server">
        <h2 class="text-primary" style="padding-left: 10px">Upload Documents</h2>
        <div class="container">
            <form class="form-horizontal" action="/" method="post">
                <hr />
                <h4 class="text-info">Documents</h4>
                <hr />
                <div class="form-group row">
                    <div class="col-md-4">
                        <span class="font-weight-bold">1) Gardian photo <span class="ion-android-star" style="color: red"></span></span>
                    </div>
                    <asp:FileUpload ID="filedadmomphoto" runat="server" CssClass="custom-file col-md-6" required />

                    <br />
                    <hr />
                    <div class="col-md-4">
                        <span class="font-weight-bold">2) Student Photo<span class="ion-android-star" style="color: red"></span></span>
                    </div>
                    <asp:FileUpload ID="filestudent" runat="server" CssClass="custom-file col-md-6" required />
                    <br />
                    <hr />
                    <div class="col-md-4">
                        <span class="font-weight-bold">3) Aadhar Photo<span class="ion-android-star" style="color: red"></span></span>
                    </div>
                    <asp:FileUpload ID="fileaadhar" runat="server" CssClass="custom-file col-md-6" required />
                    <br />
                    <hr />
                    <div class="col-md-4">
                        <span class="font-weight-bold">4) Light Bill <span class="ion-android-star" style="color: red"></span></span>
                    </div>
                    <asp:FileUpload ID="filelight" runat="server" CssClass="custom-file col-md-6" required />
                    <br />
                    <hr />
                    <div class="col-md-4">
                        <span class="font-weight-bold">5) Marksheet photo<span class="ion-android-star" style="color: red"></span></span>
                    </div>
                    <asp:FileUpload ID="filemarksheet" runat="server" CssClass="custom-file col-md-6" required />
                    <br />
                    <hr />
                    <div class="col-md-4">
                        <span class="font-weight-bold">6) Collage ID<span class="ion-android-star" style="color: red"></span></span>
                    </div>
                    <asp:FileUpload ID="filecollage" runat="server" CssClass="custom-file col-md-6" required />
                </div>
                <div class="form-group row">

                    <%--  <asp:ScriptManager ID="ScriptManager1" runat="server" />
                    <asp:UpdatePanel runat="server" ID="UpdatePanel" UpdateMode="Conditional">
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="btunewcode" EventName="Click" />
                        </Triggers>
                        <ContentTemplate>
                            <asp:Image ID="imgcatcha" runat="server" ImageUrl="~/imagecatcha.aspx" />
                            <asp:Button ID="btunewcode"
                                CssClass="col-md-1 form-control"
                                runat="server"
                                Text="New Code"
                                OnClick="btunewcode_Click"
                                formnovalidate />

                        </ContentTemplate>
                    </asp:UpdatePanel>

                    <asp:TextBox ID="txtcatcha" CssClass="col-md-2 form-control" runat="server" required />--%>
                    <label for="staticPassword" class="col-md-2 col-form-label font-weight-bold">Password:<span class="ion-android-star" style="color: red"></span></label>
                    <asp:TextBox ID="txtPassword" runat="server" placeholder="Password" CssClass="col-md-2 form-control" TextMode="password" required></asp:TextBox>
                    <label for="staticConfirmPassword" class="col-md-2 col-form-label font-weight-bold">Confirm Password:<span class="ion-android-star" style="color: red"></span></label>
                    <asp:TextBox ID="txtConfirmPassword" placeholder="Confirm Password" CssClass="col-md-2 form-control" runat="server" TextMode="password" required></asp:TextBox>
                </div>
                <div class="form-group row">
                    <div class="col-md-4"></div>
                    <asp:Button ID="btuback2" CssClass="col-md-2 font-weight-bold bg-primary" runat="server" Text="Back" OnClick="btuback2_Click" formnovalidate />
                    <div class="col-sm-1"></div>
                    <asp:Button ID="btuthird" runat="server" Text="SUBMIT" class=" col-md-2 font-weight-bold bg-success" OnClick="btuthird_Click" />
                </div>
            </form>
        </div>
    </asp:Panel>
</asp:Content>
