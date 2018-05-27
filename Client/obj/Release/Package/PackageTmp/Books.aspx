<%@ Page Title="Books Apply" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Books.aspx.cs" Inherits="Website.Books" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="shortcut icon" href="<%=ResolveUrl("~/Books.png")%>" />
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2 class="text-info" style="padding-left: 10px; margin-top: 10px">Select Books</h2>
    <hr />
    <div class="container">

        <form class="form-horizontal" style="position: fixed">
            <div class="row">
                <label for="inputcategory" class="col-md-2">Course</label>
                <asp:DropDownList ID="ddCourse" runat="server" CssClass="form-control col-md-2" OnSelectedIndexChanged="ddCourse_SelectedIndexChanged" DataTextField="Course" DataValueField="pkcourseid" AutoPostBack="true"></asp:DropDownList>
                <label for="inputcategory" class="col-md-2">Category</label>
                <asp:DropDownList ID="ddCategory" runat="server" CssClass="form-control col-md-2" DataTextField="category" DataValueField="pkidcategory" OnSelectedIndexChanged="ddCategory_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                <label for="inputcategory" class="col-md-2">Semester</label>
                <asp:DropDownList ID="ddSemester" runat="server" CssClass="form-control col-md-2" DataTextField="semester" DataValueField="pkidsemester" OnSelectedIndexChanged="ddSemester_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
            </div>
            <br />
            <div class="row">

                <asp:Label ID="lblComments" runat="server" CssClass="col-md-2">Comments</asp:Label>
                <asp:TextBox ID="txtcomments" runat="server" CssClass="col-md-2" TextMode="MultiLine"></asp:TextBox>
                <label id="lblBooks" runat="server" class="col-form col-md-2 ">Books</label>
                <asp:CheckBoxList ID="chkbook"
                    runat="server"
                    RepeatColumns="6"
                    EnableViewState="true"
                    DataTextField="bookname"
                    DataValueField="pkidbooks">
                </asp:CheckBoxList>
            </div>
            <br />
            <div class="form-group row">
                <asp:Button ID="btuapply" runat="server" Text="Apply" CssClass="col-md-1 font-weight-bold btn btn-primary offset-5 text-center" OnClick="btuapply_Click" />
                <div class="col-sm-1"></div>
                <asp:Button ID="btncancel" runat="server" Text="Cancel" CssClass="col-md-1 font-weight-bold btn btn-secondary text-center" OnClick="btncancel_Click" />
            </div>
        </form>
    </div>

    <script type="text/javascript">
        function fnCheck() {
            var a = document.getElementById("inputState").value;
            if (document.getElementById("inputState").selectedIndex != 0) {
                alert(a);
            }

        }
    </script>

</asp:Content>
