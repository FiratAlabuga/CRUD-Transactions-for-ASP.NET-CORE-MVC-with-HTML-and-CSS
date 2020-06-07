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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                tablo();
                

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string ID = TextBox1.Text.ToString();
            services webService = new services();
            DataSet dt = webService.UniversiteDondur(ID);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            services webService = new services();
            DataSet dt = webService.Univdondur();
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        public void tablo()
        {
            services webService = new services();
            DataSet dt = webService.Univdondur();
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }


        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            tablo();
        }
    }
}