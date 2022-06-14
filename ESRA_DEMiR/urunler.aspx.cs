using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _151213117_ESRA_DEMiR
{
    public partial class urunler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection Baglanti = new SqlConnection("Server=.;Database=BikeStores; Integrated Security=True");
            Baglanti.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = Baglanti;
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            //   cmd.CommandText = "SELECT *FROM production.product";
            cmd.CommandText = "production_products_arama";
            cmd.Parameters.Add("URUN_ADI", SqlDbType.NVarChar, 250).Value = TextBox3.Text;

            GridView1.DataSource = cmd.ExecuteReader();
            GridView1.DataBind();

            Baglanti.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            SqlConnection Baglanti = new SqlConnection("Server=.;Database=BikeStores; Integrated Security=True");
            Baglanti.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = Baglanti;
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            //   cmd.CommandText = "SELECT *FROM production.product";
            cmd.CommandText = "production_products_silme";
            cmd.Parameters.Add("urun_ad", SqlDbType.VarChar, 255).Value = TextBox1.Text;
            cmd.Parameters.Add("marka_ad", SqlDbType.VarChar, 255).Value = TextBox2.Text;
            cmd.Parameters.Add("model_yili", SqlDbType.VarChar, 255).Value = TextBox4.Text;

            cmd.ExecuteNonQuery();

            Baglanti.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            SqlConnection Baglanti = new SqlConnection("Server=.;Database=BikeStores; Integrated Security=True");
            Baglanti.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = Baglanti;
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            //   cmd.CommandText = "SELECT *FROM production.product";
            cmd.CommandText = "production_products_ekleme";
           
            cmd.Parameters.Add("urun_ad", SqlDbType.VarChar, 255).Value = TextBox5.Text;
            cmd.Parameters.Add("marka_ad", SqlDbType.VarChar, 255).Value = TextBox7.Text;
            cmd.Parameters.Add("kategori_ad", SqlDbType.VarChar, 255).Value = TextBox6.Text;
            cmd.Parameters.Add("model_yili", SqlDbType.VarChar, 255).Value = TextBox8.Text;
            cmd.Parameters.Add("liste_fiyatı", SqlDbType.VarChar, 255).Value = TextBox9.Text;

            cmd.ExecuteNonQuery();

            Baglanti.Close();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {

            SqlConnection Baglanti = new SqlConnection("Server=.;Database=BikeStores; Integrated Security=True");
            Baglanti.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = Baglanti;
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            //   cmd.CommandText = "SELECT *FROM production.product";
            cmd.CommandText = "production_products_duzenleme";

            cmd.Parameters.Add("urun_ad", SqlDbType.VarChar, 255).Value = TextBox5.Text;
            cmd.Parameters.Add("marka_ad", SqlDbType.VarChar, 255).Value = TextBox7.Text;
            cmd.Parameters.Add("kategori_ad", SqlDbType.VarChar, 255).Value = TextBox6.Text;
            cmd.Parameters.Add("model_yili", SqlDbType.VarChar, 255).Value = TextBox8.Text;
            cmd.Parameters.Add("liste_fiyatı", SqlDbType.VarChar, 255).Value = TextBox9.Text;

            cmd.ExecuteNonQuery();

            Baglanti.Close();
        }
    }
}