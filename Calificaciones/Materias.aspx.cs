using System;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Calificaciones
{
    public partial class Materias : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Modificar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(nombreI1.Text))
            {
                this.Label7.Text = "Ingrese el id";
            }
            else
            {
                this.SqlDataSourceUpM.UpdateParameters["id"].DefaultValue = nombreI1.Text;
                this.SqlDataSourceUpM.UpdateParameters["nombre"].DefaultValue = apellidoI0.Text;
                int cant;
                cant = this.SqlDataSourceUpM.Update();
                if (cant == 1)
                    this.Label7.Text = "Materia actualizado";
                else
                    this.Label7.Text = "No se actualizo";
            }
            GridView1.DataBind();
        }

        protected void Registrar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(apellidoI.Text))
            {
                this.Label6.Text = "Ingrese el nombre";
            }
            else
            {

                this.SqlDataSourceIM.InsertParameters["nombre"].DefaultValue = this.apellidoI.Text;
                this.SqlDataSourceIM.Insert();
                this.Label6.Text = "Materia registrada";
            }
            GridView1.DataBind();
        }

        protected void Buscar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(nombreI1.Text))
            {
                this.Label7.Text = "Ingrese el id";
            }
            else
            {
                this.SqlDataSourceBuscarM.SelectParameters["id"].DefaultValue = this.nombreI1.Text;
                this.SqlDataSourceBuscarM.DataSourceMode = SqlDataSourceMode.DataReader;
                SqlDataReader datos;
                datos = (SqlDataReader)this.SqlDataSourceBuscarM.Select(DataSourceSelectArguments.Empty);
                if (datos.Read())
                {
                    apellidoI0.Text = datos.GetString(1);
                }
                else
                {
                    this.Label7.Text = "No existe una materia con ese ID";
                }
            }
        }

        protected void Borrar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(nombreI1.Text))
            {
                this.Label7.Text = "Ingrese el id";
            }
            else
            {
                this.SqlDataSourceDelM.DeleteParameters["id"].DefaultValue = this.nombreI1.Text;
                int cant;
                cant = this.SqlDataSourceDelM.Delete();
                if (cant == 1)
                { this.Label7.Text = "Se borró la materia";
                    nombreI1.Text = "";
                    apellidoI0.Text = "";
                }
                else
                { this.Label7.Text = "No existe dicha materia"; }
            }
            GridView1.DataBind();
        }
    }
}