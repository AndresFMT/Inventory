using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaEntidades;
using System.Data;
using System.Data.SqlClient;

namespace DataInventory
{
   public class ElementoDao
    {
        #region "PATRON SINGLETON"
        private static ElementoDao daoElemento = null;
        private ElementoDao() { }
        public static ElementoDao getInstance()
        {
            if (daoElemento == null)
            {
                daoElemento = new ElementoDao();
            }
            return daoElemento;
        }

        #endregion
        public bool RegistrarElemento(Ingreso_Elemento objElemento)
        {
            SqlConnection con = null;
            bool response = false;
           
                con = Data_Usuario.getInstance().conexionBD();
              SqlCommand  cmd = new SqlCommand("SPInsertarElemento",con);
                cmd.CommandType = CommandType.StoredProcedure;
            try
            {
                cmd.Parameters.AddWithValue("@N_Placa",objElemento.N_Placa);
                cmd.Parameters.AddWithValue("@N_Serial",objElemento.N_Serial);
                cmd.Parameters.AddWithValue("@Marca", objElemento.Marca);
                cmd.Parameters.AddWithValue("@Modelo", objElemento.Modelo);
                cmd.Parameters.AddWithValue("@Categoria_Id_Categoria", objElemento.Categoria_Id_Categoria);
                cmd.Parameters.AddWithValue("@Fecha_Ingreso ", objElemento.Fecha_Ingreso);
                cmd.Parameters.AddWithValue("@Estado_Id_Estado", objElemento.Estado_Id_Estado);
                cmd.Parameters.AddWithValue("@Nombre_Elemento", objElemento.Nombre_Elemento);
                cmd.Parameters.AddWithValue("@FK_Id_Empleado", objElemento.Fk_Id_Empleado);
                con.Open();
                int filas = cmd.ExecuteNonQuery();
                if (filas > 0) response = true;

            }
            catch (Exception ex)
            {
                response = false;
                throw ex;
            }
            finally
            {
                con.Close();

            }
            return response;
        }

    }
}
