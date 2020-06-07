using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace webVeri2
{
    public partial class UniversiteSilme : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnAraman(object sender, EventArgs e)
        {
            int Id = Convert.ToInt32(Textbox1.Text);
            SqlConnection sqlConnection = new SqlConnection("Data Source=.\\SQLEXPRESS;Integrated Security=True;Initial Catalog=Universite");
            SqlCommand cmd = new SqlCommand("Select * From UniversitelerYeni where UniversiteID = " + Id + "", sqlConnection);
            sqlConnection.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                txtAd.Text = dr["UniversiteAdi"].ToString();
                txtSoyad.Text = dr["UniversiteSehir"].ToString();
                kampustxt.Text = dr["UniversiteKampus"].ToString();
                telefontxt.Text = dr["UniversiteTelefon"].ToString();
                kapasitetxt.Text = dr["UniversiteKapasite"].ToString();
            }

            sqlConnection.Close();
        }
        
            protected void btnSil(object sender , EventArgs e)
            {
                string ID = Textbox1.Text.ToString();
                services webService = new services();
                DataSet dt = webService.UniSilme(Convert.ToInt32(ID));
                Label1.Text = "Silme İşlemi Tamamlandı.";
                
                
            }
    }
}