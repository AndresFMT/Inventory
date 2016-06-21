using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using CapaEntidades;
using Inventory_Bussines;

namespace WebAppInventario
{
    public partial class Ingreso : System.Web.UI.Page
    {
       // Inventory_Bussines.EmpleadoLN oLB = new Inventory_Bussines.EmpleadoLN();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIngreso_Click(object sender, EventArgs e)
        {
            Empleado objEmpleado = EmpleadoLN.getInstance().AccesoSistema(txtUsuario.Text, txtContraseña.Text);
            if (objEmpleado != null)
            {
                Response.Write("<script>alert('USUARIO CORRECTO')</script>");
                Response.Redirect("Home.aspx");
            }
            else
            {
                Response.Write("<script>alert('USUARIO INCORRECTO')</script>");
            }
            
        }
        }
    }
