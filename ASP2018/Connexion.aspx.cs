using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using ASP2018.Models;

namespace ASP2018
{
    public partial class Connexion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (var db = new db2018Entities())
            {
                int id = int.Parse(tboxID.Text);
                Client clt = db.Clients.SingleOrDefault(s => s.idClt == id && s.mdpClient == tboxPass.Text);
                if (clt != null)
                {
                    FormsAuthentication.RedirectFromLoginPage(tboxID.Text, false);
                    Session["user"] = "Bienvenue : " + clt.nomClient;
                    Session["userID"] = id;
                }
                else
                    Label2.Text = "Id ou Mot de passe incorrect";
            }
        }
    }
}