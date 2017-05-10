using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;

namespace WaterMark
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [WebMethod]
        public static string[] GetCompletionList(string prefixText)
        {
            int count = 0;
            List<string> items;
            if (count == 0)
            {
                count = 10;
            }
            if (prefixText.Equals("xyz"))
            {
                items = new List<string>(1);
                items.Add("No matching record found");
                return items.ToArray();
            }

            Random random = new Random();
            items = new List<string>(count);
            for (int i = 0; i < count; i++)
            {
                char c1 = (char)random.Next(65, 90);
                char c2 = (char)random.Next(97, 122);
                char c3 = (char)random.Next(97, 122);
                items.Add(prefixText + c1 + c2 + c3);
            }
            return items.ToArray();
        }
    }
}
