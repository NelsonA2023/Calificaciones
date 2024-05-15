using System;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Calificaciones
{
    public partial class Estudiantes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Registrar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(nombreI.Text))
            {
                this.Label6.Text = "Ingrese el nombre";
            }
            else if (string.IsNullOrEmpty(apellidoI.Text))
            {
                this.Label6.Text = "Ingrese el apellido";
            }
            else
            {
                this.SqlDataSource1.InsertParameters["nombre"].DefaultValue = this.nombreI.Text;
                this.SqlDataSource1.InsertParameters["apellido"].DefaultValue = this.apellidoI.Text;
                this.SqlDataSource1.Insert();
                this.Label6.Text = "Estudiante registrado";
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
                this.SqlDataSourceBuscar.SelectParameters["id"].DefaultValue = this.nombreI1.Text;
                this.SqlDataSourceBuscar.DataSourceMode = SqlDataSourceMode.DataReader;
                SqlDataReader datos;
                datos = (SqlDataReader)this.SqlDataSourceBuscar.Select(DataSourceSelectArguments.Empty);
                if (datos.Read())
                {
                    nombreI0.Text = datos.GetString(1);
                    apellidoI0.Text = datos.GetString(2);
                }
                else
                {
                    this.Label7.Text = "No existe un estudiante con ese ID";
                }
                GridView1.DataBind();
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
                this.SqlDataSourceBorrar.DeleteParameters["id"].DefaultValue = this.nombreI1.Text;
                int cant;
                cant = this.SqlDataSourceBorrar.Delete();
                if (cant == 1)
                { this.Label7.Text = "Se borró el estudiante";
                  GridView1.DataBind();
                  nombreI0.Text = "";
                  apellidoI0.Text = "";
                  nombreI1.Text = "";

                }
                else
                { this.Label7.Text = "No existe dicho estudiante"; }
            }
        }

        protected void Modificar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(nombreI1.Text))
            {
                this.Label7.Text = "Ingrese el id";
            }
            else
            {   //this.nombreI1.Text
                //int id = Convert.ToInt32(nombreI1);
                //int id = Int32.Parse(nombreI1.Text);
                this.SqlDataSourceUp.UpdateParameters["id"].DefaultValue = nombreI1.Text;
                this.SqlDataSourceUp.UpdateParameters["nombre"].DefaultValue = this.nombreI0.Text;
                this.SqlDataSourceUp.UpdateParameters["apellido"].DefaultValue = this.apellidoI0.Text;
                int cant;
                cant = this.SqlDataSourceUp.Update();
                if (cant == 1)
                {
                    this.Label7.Text = "Estudiante actualizado";
                    GridView1.DataBind();
                }
                else
                    this.Label7.Text = "No se actualizo";
            }
        }
    }
}