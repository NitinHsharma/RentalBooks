<%@ Page Title="Team And Condition" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="teamandcondition.aspx.cs" Inherits="Website.teamandcondition" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="text-info" style="padding-left: 10px; margin-top: 10px">Team And Condition</h2>
    <hr />
    <div class="container">

        <div class="text" style="text-align: justify; color: black;">
            Sindhu Youth Circle is Non Profit Sindhi organization, working for general welfare, preservation of Sindhi Language and Sindhi culture. Sindhu Youth Circle is lead by Chief Trusty Mr. Sunder Dangwani.
        <br />
            <br />

            <p><strong><span class="ion-information-circled"></span>Overview</strong></p>
            Sindhu Youth Circle is registered non profit Sindhi organization in India. Its activities are dedicated towards preservation of Sindhi language and Sindhi Culture. Sindhu Youth Circle is lead by Chief Trusty Mr. Sunder Dangwani.
        <br />
            <br />
            <p><strong><span class="ion-information-circled"></span>General Information</strong></p>
            Sindhu Youth Circle runs various social activities including Sindhi Dramas, free Yoga Classes in association with Ambika Yog Kutir, Murij Manghnani Gym and ladies fitness center, Lekhraj aziz Sindhi books library and various other activities.
        <br />
            <br />

            <p><strong><span class="ion-trophy"></span>Awards</strong></p>
            Sindhi Rattan
        <br />
            <br />

            <p><strong><span class="ion-information-circled"></span>Products</strong></p>
            Marriage Hall, Free Yoga Classes, Community Gym, Open Air Auditorium, Guest House, Free books library for students, Free Biggest Sindhi Literature Book library.
        <br />
            <p>
                    <p>
                        <input type="checkbox" required name="terms">
                        I accept the <u>Terms and Conditions</u>
                    </p>
            </p>
            <br />
            <asp:Button ID="btnaccept" runat="server" Text="Accept" class=" col-md-2 font-weight-bold bg-success" OnClick="btnaccept_Click" TabIndex="0" />

        </div>
    </div>
</asp:Content>
