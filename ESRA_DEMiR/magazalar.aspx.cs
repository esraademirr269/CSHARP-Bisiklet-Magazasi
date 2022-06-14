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
    public partial class magazalar : System.Web.UI.Page
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
            cmd.CommandText = "sales_stores_arama";
            cmd.Parameters.Add("magaza_adı", SqlDbType.NVarChar, 250).Value = TextBox3.Text;

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
            cmd.CommandText = "sales_stores_silme";
            cmd.Parameters.Add("magaza_ad", SqlDbType.VarChar, 255).Value = TextBox1.Text;
            cmd.Parameters.Add("cadde_ad", SqlDbType.VarChar, 255).Value = TextBox2.Text;
            cmd.Parameters.Add("sehir_ad", SqlDbType.VarChar, 255).Value = TextBox4.Text;

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
            cmd.CommandText = "sales_stores_ekleme";
            cmd.Parameters.Add("magaza_ad", SqlDbType.VarChar, 255).Value = TextBox6.Text;
            cmd.Parameters.Add("telefon", SqlDbType.VarChar, 255).Value = TextBox5.Text;
            cmd.Parameters.Add("mail", SqlDbType.VarChar, 255).Value = TextBox7.Text;
            cmd.Parameters.Add("cadde", SqlDbType.VarChar, 255).Value = TextBox8.Text;
            cmd.Parameters.Add("sehir", SqlDbType.VarChar, 255).Value = TextBox9.Text;
            cmd.Parameters.Add("devlet", SqlDbType.VarChar, 255).Value = TextBox10.Text;
            cmd.Parameters.Add("posta_kodu", SqlDbType.VarChar, 255).Value = TextBox11.Text;

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
            cmd.CommandText = "sales_stores_duzenleme";
            cmd.Parameters.Add("magaza_ad", SqlDbType.VarChar, 255).Value = TextBox6.Text;
            cmd.Parameters.Add("telefon", SqlDbType.VarChar, 255).Value = TextBox5.Text;
            cmd.Parameters.Add("mail", SqlDbType.VarChar, 255).Value = TextBox7.Text;
            cmd.Parameters.Add("cadde", SqlDbType.VarChar, 255).Value = TextBox8.Text;
            cmd.Parameters.Add("sehir", SqlDbType.VarChar, 255).Value = TextBox9.Text;
            cmd.Parameters.Add("devlet", SqlDbType.VarChar, 255).Value = TextBox10.Text;
            cmd.Parameters.Add("posta_kodu", SqlDbType.VarChar, 255).Value = TextBox11.Text;

            cmd.ExecuteNonQuery();

            Baglanti.Close();
        }
    }
}