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
    public partial class UniversiteGuncelleme : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnArama(object sender, EventArgs e)
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
        protected void btnGnclleme(object sender, EventArgs e)
        {
            SqlConnection sqlConnection = new SqlConnection("Data Source=.\\SQLEXPRESS;Integrated Security=True;Initial Catalog=Universite");
            string kayit = "update UniversitelerYeni set UniversiteAdi=@UniversiteAdi,UniversiteSehir=@UniversiteSehir,UniversiteKampus=@UniversiteKampus,UniversiteTelefon=@UniversiteTelefon,UniversiteKapasite=@UniversiteKapasite where UniversiteID=@UniversiteID";
            SqlCommand komut = new SqlCommand(kayit, sqlConnection);
            sqlConnection.Open();
            komut.Parameters.AddWithValue("@UniversiteAdi", txtAd.Text);
            komut.Parameters.AddWithValue("@UniversiteSehir", txtSoyad.Text);
            komut.Parameters.AddWithValue("@UniversiteKampus", kampustxt.Text);
            komut.Parameters.AddWithValue("@UniversiteTelefon", telefontxt.Text);
            komut.Parameters.AddWithValue("@UniversiteKapasite", kapasitetxt.Text);
            komut.Parameters.AddWithValue("@UniversiteID", Textbox1.Text);
            komut.ExecuteNonQuery();
            sqlConnection.Close();
            Label1.Text = "Güncelleme Tamamlandı";
        }
    }
}