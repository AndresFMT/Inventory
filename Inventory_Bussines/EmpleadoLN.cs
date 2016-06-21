using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using CapaEntidades;
using DataInventory;

namespace Inventory_Bussines
{
    public class EmpleadoLN
    {
        #region "PATRON SINGLETON"
        private static EmpleadoLN objEmpleado = null;
        private EmpleadoLN() { }
        public static EmpleadoLN getInstance()
        {
            if (objEmpleado == null)
            {
                objEmpleado = new EmpleadoLN();
            }
            return objEmpleado;
        }

        #endregion
        public Empleado AccesoSistema(string user, string password)
        {
            try
            {
                return EmpleadoDao.getInstance().AccesoSistema(user, password);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}