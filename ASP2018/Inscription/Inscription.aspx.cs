using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ASP2018.Models;

namespace ASP2018
{
    public partial class Inscription : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (var db = new db2018Entities())
            {
                db.Clients.Add(new Client
                {
                    idClt = int.Parse(TextBox1.Text),
                    nomClient = TextBox2.Text,
                    prenomClient = TextBox3.Text,
                    emailClient = TextBox4.Text,
                    mdpClient = TextBox5.Text
                });
                db.SaveChanges();
                Response.Redirect(@"~/Connexion.aspx");
            }
        }
    }
}