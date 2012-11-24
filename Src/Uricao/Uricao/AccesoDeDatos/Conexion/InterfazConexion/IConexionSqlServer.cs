using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;

namespace Uricao.AccesoDeDatos.Conexion.InterfazConexion
{
    public interface IConexionSqlServer
    {
        void AbrirConexion();

        void CerrarConexion();

        SqlConnection ObjetoConexion();
    }
}
