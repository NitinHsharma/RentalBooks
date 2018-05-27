<%@ Page Title="Help" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="help.aspx.cs" Inherits="Website.forms.help" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="text-info" style="padding-left: 10px;margin-top:10px;">Help</h2>
    <hr />
    <div class="container">

        <div class="media-container-row">
            <div class="toggle-content">


                <div id="bootstrap-toggle" class="toggle-panel accordionStyles tab-content pt-5 mt-2">
                    <div class="card">
                        <div class="card-header" role="tab" id="headingOne">
                            <a role="button" class="collapsed panel-title text-black" data-toggle="collapse" data-parent="#accordion" data-core="" href="#collapse1_1" aria-expanded="false" aria-controls="collapse1">
                                <h4 class="mbr-fonts-style display-5">
                                    <span class="sign mbr-iconfont mbri-arrow-down inactive"></span>How to apply for Books?
                                </h4>
                            </a>
                        </div>
                        <div id="collapse1_1" class="panel-collapse noScroll collapse" role="tabpanel" aria-labelledby="headingOne">
                            <div class="panel-body p-4">
                                <p class="mbr-fonts-style panel-text display-7">
                                    For applying for books you need to follow below steps:
                                    <ul>
                                        <li>Loggin to the website. click here for login page <a href="login.aspx">LOGIN</a></li>
                                        <li>Fill the All(Basic, Personal and attachment of documents) Details under User Information.</li>
                                        <li>Select the particular category under apply for books</li>
                                        <li>choose the books.</li>
                                        <li>You will get the email notification if you are selected.</li>
                                        <li>Visit the sindhu circel on the appoitment date</li>
                                        <li>Pay the fees and collect the books.</li>
                                    </ul>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>


                <div id="Div1" class="toggle-panel accordionStyles tab-content pt-5 mt-2">
                    <div class="card">
                        <div class="card-header" role="tab" id="Div2">
                            <a role="button" class="collapsed panel-title text-black" data-toggle="collapse" data-parent="#accordion" data-core="" href="#collapse1_2" aria-expanded="false" aria-controls="collapse1">
                                <h4 class="mbr-fonts-style display-5">
                                    <span class="sign mbr-iconfont mbri-arrow-down inactive"></span>How to Login?
                                </h4>
                            </a>
                        </div>
                        <div id="collapse1_2" class="panel-collapse noScroll collapse" role="tabpanel" aria-labelledby="headingOne">
                            <div class="panel-body p-4">
                                <p class="mbr-fonts-style panel-text display-7">
                                    For Logging you need to follow below steps:
                                    <ul>
                                        <li>User should be registered user on the website</li>
                                        <li>Enter the email id as username and enter the password which you enterd at the time of registeration</li>
                                        <li>In case of forget password please click on forget password link, you will get the link on register email id</li>

                                    </ul>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</asp:Content>
