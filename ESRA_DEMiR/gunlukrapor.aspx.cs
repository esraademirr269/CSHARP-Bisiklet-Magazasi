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
    public partial class gunlukrapor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection Baglanti = new SqlConnection("Server=.;Database=BikeStores; Integrated Security=True");
            Baglanti.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = Baglanti;
               cmd.CommandText = "SELECT *FROM sales_stores_gunluk";
           // cmd.CommandText = "production_products_arama";
            
            GridView1.DataSource = cmd.ExecuteReader();
            GridView1.DataBind();

            Baglanti.Close();
        }
    }
}