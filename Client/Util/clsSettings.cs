using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

namespace Website.Util
{
    public static class clsSettings
    {
        public static string strsqlcon
        {
            get
            {
                return ConfigurationManager.ConnectionStrings["CN"].ConnectionString;
            }
        }
    }
}