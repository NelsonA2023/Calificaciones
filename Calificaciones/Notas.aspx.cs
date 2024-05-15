using System;

namespace Calificaciones
{
    public partial class Notas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(TextBox1.Text))
            {
                this.Label3.Text = "Ingrese la nota";
            }
            else
            {
                this.SqlDataSourceRegistrar.InsertParameters["idEstudiante"].DefaultValue = DropDownList1.SelectedValue;
                this.SqlDataSourceRegistrar.InsertParameters["idMateria"].DefaultValue = DropDownList2.SelectedValue;
                this.SqlDataSourceRegistrar.InsertParameters["nota"].DefaultValue = this.TextBox1.Text;
                this.SqlDataSourceRegistrar.Insert();
                this.Label3.Text = "Calificacion registrada";
                GridView1.DataBind();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox2.Text = GridView1.SelectedRow.Cells[2].Text;
            TextBox3.Text = GridView1.SelectedRow.Cells[3].Text;
            TextBox4.Text = GridView1.SelectedRow.Cells[4].Text;
            TextBox5.Text = GridView1.SelectedRow.Cells[1].Text;
            TextBox6.Text = GridView1.SelectedRow.Cells[0].Text;
            int Nota = Convert.ToInt32(GridView1.SelectedRow.Cells[4].Text);
            if (Nota > 6)
            {
                Label9.Text = "Aprobado";
            }
            else
            {
                Label9.Text = "No Aprobado";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlBorrarCalif.DeleteParameters["id"].DefaultValue = TextBox6.Text;
            SqlBorrarCalif.Delete();
            Label9.Text = "";
            Label10.Text = "Regisro borrado";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            GridView1.DataBind();
        }

        protected void BuscarCalif_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(TextBox6.Text))
            {
                this.Label7.Text = "Seleccione un registro";
            }
            else
            {
                this.SqlUpNota.UpdateParameters["id"].DefaultValue = TextBox6.Text;
                int cant;
                cant = this.SqlUpNota.Update();
                if (cant == 1)
                    this.Label10.Text = "Calificacion actualizada";
                else
                    this.Label10.Text = "No se actualizo";
            }
            int Nota = Convert.ToInt32(TextBox4.Text);
            if (Nota > 6)
            {
                Label9.Text = "Aprobado";
            }
            else
            {
                Label9.Text = "No Aprobado";
            }
            GridView1.DataBind();
        }
    }
}