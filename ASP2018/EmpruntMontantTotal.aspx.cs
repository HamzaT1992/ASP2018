using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ASP2018.ServiceReference1;

namespace ASP2018
{
    public partial class EmpruntMontantTotal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var ws = new WebServiceSoapClient();
            int id = int.Parse(DropDownList1.SelectedValue);
            Label2.Text = "le montant total de l'emprunt" + id + " = " + ws.MtTotal(id).ToString();
        }
    }
}