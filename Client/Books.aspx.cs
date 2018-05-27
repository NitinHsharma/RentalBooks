using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HelperLibrary;
using Website.Util;
using System.IO;
using System.Data;

namespace Website
{
    public partial class Books : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["name"] != null)
                {
                    clsSqlHelper objDb = new clsSqlHelper(clsSettings.strsqlcon);
                    Dictionary<string, object> dicparamread = new Dictionary<string, object>();
                    dicparamread.Add("@pk_Client_id", Session["id"].ToString());
                    if (objDb.objExecuteQuery("spCheckUserDetails", HelperLibrary.clsSqlHelper.QueryExcution.storeProcedure, dicparamread))
                    {
                        DataTable dt = new DataTable();
                        dt = objDb.objDataset.Tables[0];
                        if (Convert.ToInt32(dt.Rows[0][0]) == 0)
                        {
                            Response.Write("<script>alert('Please Signup First');</script>");
                            Response.Redirect("OnlineRegistration.aspx", false);
                            return;
                        }
                    }
                    Dictionary<string, object> DicData = new Dictionary<string, object>();
                    string StrQuery = "SELECT pkcourseid,Course FROM dbo.course with(nolock)";
                    if (objDb.objExecuteQuery(StrQuery, HelperLibrary.clsSqlHelper.QueryExcution.ExecuteDataAdapter))
                    {
                        ddCourse.DataSource = objDb.objDataset.Tables[0];
                        ddCourse.DataBind();
                    }
                    ListItem licourse = new ListItem("Select Course", "-1");
                    ddCourse.Items.Insert(0, licourse);
                    ListItem licategory = new ListItem("Select Category", "-1");
                    ddCategory.Items.Insert(0, licategory);
                    ListItem lisemester = new ListItem("Select Semester", "-1");
                    ddSemester.Items.Insert(0, lisemester);
                    ddCategory.Enabled = false;
                    ddSemester.Enabled = false;
                    btuapply.Enabled = false;
                    txtcomments.Enabled = false;
                    btncancel.Enabled = false;
                    chkbook.Enabled = false;
                    chkbook.Visible = false;
                    lblBooks.Visible = false;
                    lblComments.Visible = false;
                    txtcomments.Visible = false;
                    btuapply.Visible = false;
                    btncancel.Visible = false;
                }
                else
                {
                    Response.Write("<script>alert('Please SignUp First Or Login');</script>");
                    Response.Redirect("login.aspx");
                }
            }
        }

        protected void ddCourse_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddCourse.SelectedIndex != -1)
            {
                ddCategory.Enabled = true;
                ListItem lisemester = new ListItem("Select Semester", "-1");
                ddSemester.Items.Insert(0, lisemester);
                ddSemester.SelectedIndex = 0;
                ddSemester.Enabled = false;
                clsSqlHelper objDb = new clsSqlHelper(clsSettings.strsqlcon);
                Dictionary<string, object> DicData = new Dictionary<string, object>();
                string Course = ddCourse.SelectedValue.ToString();
                string StrQuery = "SELECT pkidcategory,category FROM dbo.category with(nolock) WHERE fkcourseid='" + Course + "'";
                if (objDb.objExecuteQuery(StrQuery, HelperLibrary.clsSqlHelper.QueryExcution.ExecuteDataAdapter))
                {
                    ddCategory.DataSource = objDb.objDataset.Tables[0];
                    ddCategory.DataBind();
                }
                ListItem licategory = new ListItem("Select Category", "-1");
                ddCategory.Items.Insert(0, licategory);
            }
        }

        protected void ddCategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddCategory.SelectedIndex != -1)
            {
                ddSemester.Enabled = true;
                clsSqlHelper objDb = new clsSqlHelper(clsSettings.strsqlcon);
                Dictionary<string, object> DicData = new Dictionary<string, object>();
                string Course1 = ddCourse.SelectedValue.ToString();
                string Category = ddCategory.SelectedValue.ToString();
                string StrQuery = "SELECT pkidsemester,semester FROM dbo.semester WITH(NOLOCK) WHERE fkcourse='" + Course1 + "'AND fkidcategory='" + Category + "'";
                if (objDb.objExecuteQuery(StrQuery, HelperLibrary.clsSqlHelper.QueryExcution.ExecuteDataAdapter))
                {
                    ddSemester.DataSource = objDb.objDataset.Tables[0];
                    ddSemester.DataBind();
                }
                ListItem lisemester = new ListItem("Select Semester", "-1");
                ddSemester.Items.Insert(0, lisemester);
            }
        }

        protected void ddSemester_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddSemester.SelectedIndex != -1)
            {
                txtcomments.Enabled = true;
                btuapply.Enabled = true;
                btncancel.Enabled = true;
                chkbook.Visible = true;
                chkbook.Enabled = true;
                lblBooks.Visible = true;
                lblComments.Visible = true;
                txtcomments.Visible = true;
                btuapply.Visible = true;
                btncancel.Visible = true;
                clsSqlHelper objDb = new clsSqlHelper(clsSettings.strsqlcon);
                string Course1 = ddCourse.SelectedValue.ToString();
                string Category = ddCategory.SelectedValue.ToString();
                string semester = ddSemester.SelectedValue.ToString();
                Dictionary<string, object> objParam = new Dictionary<string, object>();
                objParam.Add("@Course1", Course1);
                objParam.Add("@Category", Category);
                objParam.Add("@semester", semester);
                string StrQuery = "SELECT pkidbooks,bookname FROM dbo.books WHERE fkidcategory=" + Category + " AND fkcourseid=" + Course1 + " AND fkidsemester=" + semester + "";
                if (objDb.objExecuteQuery(StrQuery, HelperLibrary.clsSqlHelper.QueryExcution.ExecuteDataAdapter, objParam))
                {
                    chkbook.DataSource = objDb.objDataset.Tables[0];
                    chkbook.DataBind();
                    for (int i = 0; i < chkbook.Items.Count; i++)
                    {
                        chkbook.Items[i].Selected = true;
                    }
                }
            }
        }

        protected void btuapply_Click(object sender, EventArgs e)
        {
            clsSqlHelper ObjDb = new clsSqlHelper(clsSettings.strsqlcon);
            Dictionary<string, object> DicParam = new Dictionary<string, object>();
            string Course1 = ddCourse.SelectedValue.ToString();
            string Category = ddCategory.SelectedValue.ToString();
            string semester = ddSemester.SelectedValue.ToString();
            string bookid = "";
            string id = Session["id"].ToString();
            //string bookid=
            DicParam.Add("@dk_Client_id", id);
            DicParam.Add("@fk_Course_id", Course1);
            DicParam.Add("@fk_Category_id", Category);
            DicParam.Add("@fk_Semester_Id", semester);
            DicParam.Add("@fk_Client_id", id);
            for (int i = 0; i < chkbook.Items.Count; i++)
            {
                if (chkbook.Items[i].Selected)
                {
                    if (bookid == "")
                    {
                        bookid = chkbook.Items[i].Value.ToString();
                    }
                    else if (bookid != "")
                    {
                        bookid = bookid + ',' + chkbook.Items[i].Value.ToString();
                    }
                }
            }
            DicParam.Add("@fk_Book_id", bookid);
            DicParam.Add("@Comments", txtcomments.Text);
            ObjDb.objExecuteQuery("SpInserttblTransaction", HelperLibrary.clsSqlHelper.QueryExcution.storeProcedure, DicParam);
            Response.Write("<script>alert('Thank You For apply Book');</script>");
            Server.Transfer("Index.aspx", true);
        }

        protected void btncancel_Click(object sender, EventArgs e)
        {
            Server.Transfer("Index.aspx", true);
        }
    }
}