using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaEntidades;
using Inventory_Bussines;

namespace WebAppInventario
{
    public partial class IngresoElemento : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
               
            }
        }
        private Ingreso_Elemento GetEntity()
        {
            Ingreso_Elemento objElemento = new Ingreso_Elemento();
            objElemento.Id_Elemento = 0;
            objElemento.N_Placa = TxtPlaca.Text;
            objElemento.N_Serial = TxtSerial.Text;
            objElemento.Marca = TxtMarca.Text;
            objElemento.Modelo = TxtModelo.Text;
            objElemento.Categoria_Id_Categoria = 0;
            objElemento.Fecha_Ingreso = Convert.ToDateTime(TxtFecha.Text);
            objElemento.Estado_Id_Estado = Convert.ToInt32(ddlEstado.Text);
            objElemento.Nombre_Elemento = TxtNombre.Text;
            objElemento.Fk_Id_Empleado = 0;

            return objElemento;
        }

        protected void BtnGuardar_Click(object sender, EventArgs e)
        {
            Ingreso_Elemento objElemento = GetEntity();
            bool response = ElementoLN.getInstance().RegistrarElemento(objElemento);
            if (response == true)
            {
                Response.Write("<script>alert('USUARIO CORRECTO')</script>");
            }
            else
            {
                Response.Write("<script>alert('USUARIO INCORRECTO')</script>");
            }
        }

        protected void ddlCategoria_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}