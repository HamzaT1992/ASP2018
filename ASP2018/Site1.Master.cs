using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ASP2018.Models;

namespace ASP2018
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        public Label userName { get { return Label1;} }
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["user"] != null ? Session["user"].ToString() : "";
        }
    }
}