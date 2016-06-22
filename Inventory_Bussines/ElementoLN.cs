using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaEntidades;
using DataInventory;

namespace Inventory_Bussines
{
   public class ElementoLN
    {
        #region "PATRON SINGLETON"
        private static ElementoLN objElemento = null;
        private ElementoLN() { }
        public static ElementoLN getInstance()
        {
            if (objElemento == null)
            {
                objElemento = new ElementoLN();
            }
            return objElemento;
        }

        #endregion

        public bool RegistrarElemento(Ingreso_Elemento objElemento)
        {
            try
            {
                return ElementoDao.getInstance().RegistrarElemento(objElemento);
            }
            catch (Exception ex)
            {
                throw ex;
            }
           
        }
    }
}
