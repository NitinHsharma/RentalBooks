using SRVTextToImage;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Imaging;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Website.forms
{
    public partial class imagecatcha : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CaptchaRandomImage ci = new CaptchaRandomImage();
            // GetRandomString Funtion return random text of  your provided characters
            string captachaText = ci.GetRandomString(5);
            // GenearteImage funtion return image of the provided text of provided size
            //ci.GenerateImage(captachaText, 200, 50);
            // there is a overload function available for set color of the image
            Session["CaptchaText"] = captachaText;
            ci.GenerateImage(captachaText, 200, 50, Color.Red, Color.White);
            this.Response.Clear();
            this.Response.ContentType = "image/jpeg";
            ci.Image.Save(this.Response.OutputStream, ImageFormat.Jpeg);
            ci.Dispose();
        }
    }
}