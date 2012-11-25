using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Uricao.Entidades.ECuentasPorPagar;

namespace Uricao.Presentacion.PaginasWeb.PAgendaCitas
{
    public partial class AgregarCita : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                List<CuentaPorPagar> datos = GetData();
                GridView1.DataSource = datos;
                GridView1.DataBind();

            }
        }


        protected List<CuentaPorPagar> GetData()
        {
            List<CuentaPorPagar> datos = new List<CuentaPorPagar>();

            for (int i = 1; i <= 9; i++)
            {
                CuentaPorPagar dato = new CuentaPorPagar(i, "Carlo Magurno" + i);
                datos.Add(dato);
            }
            return datos;
        }


        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

        }


        protected void GridView1_RowCommand(Object sender, GridViewCommandEventArgs e)
        {
            Response.Redirect("HomeCuentasPorPagar.aspx");

        }
        
        


    }
}