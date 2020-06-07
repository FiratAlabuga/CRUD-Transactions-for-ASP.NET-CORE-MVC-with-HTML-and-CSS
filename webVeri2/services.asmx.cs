using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data.SqlClient;
using System.Data;

namespace webVeri2
{
    /// <summary>
    /// Summary description for services
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class services : System.Web.Services.WebService
    {


        [WebMethod]
        public DataSet Unidondur(string query)//bunu yazmamamızın sebebi return perdondur(sting) gelir.
        {
            SqlConnection sqlconnection = new SqlConnection("Data Source=.\\SQLEXPRESS;Integrated Security=True;Initial Catalog=Universite");
            SqlCommand command = new SqlCommand();
            sqlconnection.Open();
            //command.Connection = sqlconnection;
            //command.CommandText = "Select * From Universiteler where UniversiteID=@uni";
            SqlDataAdapter da = new SqlDataAdapter(query, sqlconnection);
            da.SelectCommand.ExecuteNonQuery();
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
        [WebMethod]
        public DataSet UniversiteDondur(string ID)
        {
            string sorgu = String.Format("Select UniversiteAdi,UniversiteSehir,UniversiteKampus,UniversiteTelefon,UniversiteKapasite From UniversitelerYeni where  UniversiteID='{0}'", ID);
            return Unidondur(sorgu);
        }

        [WebMethod]
        public DataSet Univdondur()
        {
            SqlConnection sqlconnection = new SqlConnection("Data Source=.\\SQLEXPRESS;Integrated Security=True;Initial Catalog=Universite");
            SqlDataAdapter da = new SqlDataAdapter("select * from UniversitelerYeni", sqlconnection);

            DataSet ds = new DataSet();

            da.Fill(ds);

            return ds;
        }
        [WebMethod]
        public DataSet UniKaydet(string UniversiteAdi, string UniversiteSehir, string UniversiteKampus, string UniversiteTelefon, string UniversiteKapasite)
        {
            string query = String.Format("Insert into UniversitelerYeni ( UniversiteAdi,UniversiteSehir,UniversiteKampus,UniversiteTelefon,UniversiteKapasite) values ('{0}','{1}','{2}','{3}','{4}')", UniversiteAdi, UniversiteSehir, UniversiteKampus, UniversiteTelefon, UniversiteKapasite);
            return Unidondur(query);
        }
        [WebMethod]
        public DataSet UniSilme(int UniversiteID)
        {
            string query = String.Format("Delete from UniversitelerYeni where UniversiteID='{0}'", UniversiteID);
            return Unidondur(query);
        }
        [WebMethod]
        public DataSet UniGuncelle(int UniversiteID, string UniversiteAdi, string UniversiteSehir, string UniversiteKampus, string UniversiteTelefon, string UniversiteKapasite)
        {
            string query = String.Format("Update   UniversitelerYeni set UniversiteAdi='{0}',UniversiteSehir='{1}',UniversiteKampus='{2}',UniversiteTelefon='{3}',UniversiteKapasite='{4}' where UniversiteID='{5}'", UniversiteAdi, UniversiteSehir, UniversiteKampus, UniversiteTelefon, UniversiteKapasite, UniversiteID);
            return Unidondur(query);
        }
    }
}


