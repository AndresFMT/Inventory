using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaEntidades
{
   public class Ingreso_Elemento
    {
        public Int32 Id_Elemento { get; set; }
        public string N_Placa { get; set; }
        public String N_Serial { get; set; }
        public String Marca { get; set; }
        public String Modelo { get; set; }
        public Int32 Categoria_Id_Categoria { get; set; }
        public DateTime Fecha_Ingreso { get; set; }
        public Int32 Estado_Id_Estado { get; set; }
        public string Nombre_Elemento { get; set; }
        public Int32 Fk_Id_Empleado { get; set; }

        public Ingreso_Elemento() { }

    }
}
