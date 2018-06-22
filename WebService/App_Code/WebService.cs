using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Summary description for WebService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class WebService : System.Web.Services.WebService
{

    public WebService()
    {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public double MtTotal(int idEmp)
    {
        double mt;
        using (var con = new SqlConnection(@"Data Source=(localdb)\fact;Initial Catalog=db2018;Integrated Security=True"))
        {
            con.Open();
            var cmd = new SqlCommand("select montantTotal from Emprunter where idEmp = @idEmp",con);
            cmd.Parameters.AddWithValue("@idEmp", idEmp);
            var dr = cmd.ExecuteReader();
            dr.Read();
            mt = double.Parse(dr[0].ToString());
        }
        return mt;
    }

}
