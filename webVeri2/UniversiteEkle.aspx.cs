using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webVeri2
{
    public partial class PersonelEkle : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEkle(object sender, EventArgs e)
        {
            //SqlConnection sqlconnection = new SqlConnection("Data Source=.\\SQLEXPRESS;Integrated Security=True;Initial Catalog=Universite");


            string uniad =txtAd.Text;
            string unisehir = txtSoyad.Text;
            string unikampus = kampustxt.Text;
            string unitel = telefontxt.Text;
            string unikapasite = kapasitetxt.Text;
            services webservis = new services();
            DataSet dt = webservis.UniKaydet(uniad, unisehir, unikampus, unitel, unikapasite);
            Label1.Text = "Kayıt Tamamlandı.";

            //    SqlCommand komut;
            //    komut = new SqlCommand("INSERT INTO UniversitelerYeni (UniversiteAdi,UniversiteSehir,UniversiteKampus,UniversiteTelefon,UniversiteKapasite) VALUES(@uadi, @Psoyadi,@Maas,@DepartmanNo,@GorevNo)", sqlconnection);
            //    komut.Parameters.AddWithValue("@uadi", txtAd.Text);
            //    komut.Parameters.AddWithValue("@Psoyadi", txtSoyad.Text);
            //    komut.Parameters.AddWithValue("@Maas", kampustxt.Text);
            //    komut.Parameters.AddWithValue("@DepartmanNo", telefontxt.Text);
            //    komut.Parameters.AddWithValue("@GorevNo", kapasitetxt.Text);

            //    sqlconnection.Open();
            //    komut.ExecuteNonQuery();
            //    Label1.Text = "Kayıt Tamamlandı.";


            //sqlconnection.Close();
        }

    }
}