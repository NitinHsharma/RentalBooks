using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Website
{
    public static class clsCommonFunction
    {
        public static Boolean isLogin(string strUsername, string strLSID)
        {
            try
            {
                if (strUsername == "nitin@gmail.com" && strLSID == "12345")
                {
                    return true;
                }
                return false;
            }
            catch (Exception ex)
            {
                return false;
            }
        }


    }
}