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
    public partial class kategori : System.Web.UI.Page
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
            cmd.CommandText = "production_categories_arama";
            cmd.Parameters.Add("KATEGORI_ADI", SqlDbType.NVarChar, 250).Value = TextBox3.Text;

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
            cmd.CommandText = "production_categories_silme";
            cmd.Parameters.Add("kategori_ad", SqlDbType.VarChar, 255).Value = TextBox1.Text;

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
            cmd.CommandText = "production_categories_ekleme";
            cmd.Parameters.Add("kategori_ad", SqlDbType.VarChar, 255).Value = TextBox6.Text;

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
            cmd.CommandText = "production_categories_duzenleme";
            cmd.Parameters.Add("kategori_ad", SqlDbType.VarChar, 255).Value = TextBox6.Text;
            cmd.Parameters.Add("yeni_ad", SqlDbType.VarChar, 255).Value = TextBox4.Text;

            cmd.ExecuteNonQuery();

            Baglanti.Close();
        }
    }
}