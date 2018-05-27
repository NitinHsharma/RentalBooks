using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HelperLibrary;
using Website.Util;
using System.IO;
using System.Text;
using System.Data;
using System.Drawing;

namespace Website
{
    public partial class teamandcondition : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnaccept_Click(object sender, EventArgs e)
        {
            clsSqlHelper ObjBD = new clsSqlHelper(clsSettings.strsqlcon);
            Dictionary<string, object> DicData = new Dictionary<string, object>();
            DicData.Add("@pkclient", Session["id"]);
            if (ObjBD.objExecuteQuery("Sp_client_teamandcondition", HelperLibrary.clsSqlHelper.QueryExcution.storeProcedure, DicData))
            {
                Response.Write("<script>alert('Apply For Books');</script>");
                Server.Transfer("Books.aspx", true);
            }
        }
    }
}