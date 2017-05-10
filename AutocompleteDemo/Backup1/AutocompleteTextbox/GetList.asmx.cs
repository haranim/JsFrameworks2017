using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.Xml.Linq;
using System.Collections.Generic;
using System.Web.Script.Services;

namespace AutocompleteTextbox
{
    /// <summary>
    /// Summary description for GetList
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [ToolboxItem(false)]
    [ScriptService]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class GetList : System.Web.Services.WebService
    {

        [WebMethod]
        public string[] GetValues(string prefixText)
        {
            List<string> ss = new List<string>();

            ss.Add("January");
            ss.Add("February");
            ss.Add("March");
            ss.Add("April");
            ss.Add("May");
            ss.Add("June");
            ss.Add("July");
            ss.Add("August");
            ss.Add("September");
            ss.Add("October");
            ss.Add("November");
            ss.Add("December");

            return ss.ToArray();
        }
    }
}
