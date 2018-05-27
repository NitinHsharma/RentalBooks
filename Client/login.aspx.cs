using HelperLibrary;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Website.Util;
using System.Net.Mail;

namespace Website.forms
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string useid = Request.QueryString["id"];
            //string links = Request.QueryString["link"];
            //if (!this.IsPostBack && !string.IsNullOrEmpty(useid) && !string.IsNullOrEmpty(links))
            //{
            //    clsSqlHelper objBD = new clsSqlHelper(clsSettings.strsqlcon);
            //    //string activationCode = !string.IsNullOrEmpty(Request.QueryString["ActivationCode"]) ? Request.QueryString["ActivationCode"] : Guid.Empty.ToString();
            //    Dictionary<string, object> DicData = new Dictionary<string, object>();
            //    string StrQuery = "SELECT tokeforlink,activation FROM dbo.client WHERE tokeforlink=@tokeforlink and pkclient=@pkclient";
            //    DicData.Add("@tokeforlink", links);
            //    DicData.Add("@pkclient", useid);
            //    objBD.objExecuteQuery(StrQuery, HelperLibrary.clsSqlHelper.QueryExcution.ExecuteReader, DicData);
            //    if (objBD.dtrData.HasRows && objBD.dtrData.Read())
            //    {
            //        string toke = objBD.dtrData.GetString(0);
            //        string acti = (objBD.dtrData.IsDBNull(1) ? "" : objBD.dtrData.GetString(1));
            //        if (links == toke && acti == "")
            //        {
            //            //link.Visible = true;
            //            //link.Text = "activation successfully completed";
            //            string strqueryupdate = "UPDATE dbo.client SET activation=@activation, activationdate=@activationdate WHERE pkclient=@pkclient";
            //            DicData.Add("activation", "YES");
            //            DicData.Add("activationdate", DateTime.Now.ToString("yyyy-MM-dd hh:mm:ss"));
            //            objBD.objExecuteQuery(strqueryupdate, clsSqlHelper.QueryExcution.ExecuteNonQuery, DicData);
            //        }
            //        else if (links == toke && acti == "YES")
            //        {
            //            //link.Visible = true;
            //            //link.Text = "Activation Aleady Done Please Login";
            //        }
            //    }
            //    else
            //    {
            //        //link.Visible = true;
            //        //link.Text = "Invalid Activation code";
            //    }
            //}
        }

        protected void forgotpassword_Click(object sender, EventArgs e)
        {
            forgot.Visible = true;
            first.Visible = false;

        }

        protected void signup_Click(object sender, EventArgs e)
        {
            Response.Redirect("OnlineRegistration.aspx");

        }

        protected void cancel_Click(object sender, EventArgs e)
        {
            forgot.Visible = false;
            first.Visible = true;
        }

        protected void Login_Click(object sender, EventArgs e)
        {
            clsSqlHelper objBD = new clsSqlHelper(clsSettings.strsqlcon);
            try
            {
                string StrQuery = "SELECT firstname+' '+lastname,pkclient FROM dbo.client WHERE username=@username AND password=@password";
                Dictionary<string, object> DicData = new Dictionary<string, object>();
                DicData.Add("@username", txtusername.Text);
                DicData.Add("@password", txtpassword.Text);
                objBD.objExecuteQuery(StrQuery, HelperLibrary.clsSqlHelper.QueryExcution.ExecuteReader, DicData);
                if (objBD.dtrData.HasRows && objBD.dtrData.Read() && !objBD.dtrData.IsDBNull(0))
                {
                    Session["name"] = objBD.dtrData.GetString(0);
                    Session["id"] = objBD.dtrData.GetInt32(1);
                    Response.Redirect("Index.aspx", false);
                }
                else
                {
                    Response.Write("<script>alert('Invalid Username or Password');</script>");
                }
            }
            catch (Exception ex)
            {
                string j = ex.ToString();
            }
            finally
            {
                objBD.blnCloseConnection();
            }
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            clsSqlHelper objBD = new clsSqlHelper(clsSettings.strsqlcon);
            try
            {
                string use = txtforgotpassword.Text;
                string password = "";
                string mailid = "";
                string html1 = "";
                string StrQuery = "SELECT emailid,password FROM dbo.client WHERE emailid=@username";
                Dictionary<string, object> DicData = new Dictionary<string, object>();
                DicData.Add("@username", txtforgotpassword.Text);
                objBD.objExecuteQuery(StrQuery, HelperLibrary.clsSqlHelper.QueryExcution.ExecuteReader, DicData);
                if (objBD.dtrData.HasRows && objBD.dtrData.Read() && !objBD.dtrData.IsDBNull(0))
                {
                    SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                    MailMessage massage = new MailMessage();
                    massage.From = new MailAddress("sycbookbank@gmail.com");
                    mailid = objBD.dtrData.GetString(0);
                    password = objBD.dtrData.GetString(1);

                    if (mailid != null && password != null)
                    {
                        #region mailid
                        html1 += "<!DOCTYPE html>            "
+ "<html>                                                "
      + "<head>                                                "
      + "<style>                                               "
      + "table {"
      + "font-family: arial, sans-serif;                         "
      + "border-collapse: collapse;"
    + "  width: 100%;"
  + "}"

  + "td, th {"
      + "border: 1px solid #dddddd;"
      + "text-align: left;"
     + " padding: 8px;"
  + "}"

  + "tr:nth-child(even) {"
    + "  background-color: #dddddd;"
  + "}"
      + "</style>                                              "
      + "</head>                                               "
      + "<body>                                                "
                            //+ "<table id="t01">                                      "
      + "  <tr>                                                "
      + "    <th>Your Usename</th>                             "
      + "    <th>Your mail id</th>                             "
      + "    <th>Password</th>		                         "
      + "  </tr>                                               "
      + "  <tr>		                                         "
      + "    <td  align=center>" + use + "</td>                              "
      + "    <td align=center>" + mailid + "</td>                           "
      + "    <td align=center >" + password + "</td>                         "
      + "  </tr>                                               "
      + "</table>                                              "
      + "</body>                                               "
      + "</html>												";
                        
                        #endregion

                        txtforgotpassword.Text = string.Empty;
                        massage.To.Add(mailid);
                        //massage.Body = "Your Usename is '" + use + "' '" + Environment.NewLine + "'Your mail Id Is '" + mailid + "' '" + Environment.NewLine + "' Password  Is '" + password + "'";
                        massage.Body = html1;
                        massage.IsBodyHtml = true;
                        massage.Subject = "Recall Password";
                        client.EnableSsl = true;
                        client.DeliveryMethod = SmtpDeliveryMethod.Network;
                        client.Credentials = new System.Net.NetworkCredential("sycbookbank@gmail.com", "sycbb96@");
                        client.Send(massage);
                        Response.Write("<script>alert('Password Send');</script>");

                    }
                }
                else
                {
                    Response.Write("<script>alert('Invalid Username');</script>");
                }
            }
            catch (Exception ex)
            {
                string j = ex.ToString();
            }
            finally
            {
            }
        }
    }
}