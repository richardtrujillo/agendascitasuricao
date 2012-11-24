using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

namespace Uricao.AccesoDeDatos.Conexion.InterfazConexion
{
    public class ConexionSqlServer : IConexionSqlServer
    {
        private static String cadenaConexion = ConfigurationManager.ConnectionStrings["ConnUricao"].ToString();
        SqlConnection objetoConexion = null;
        private static SqlConnection conexion = new SqlConnection(cadenaConexion);

        public static SqlConnection AccederAconexion
        {

            get { return conexion; }

            set { conexion = value; }

        }

        //Metodo para abrir la conexion
        public void AbrirConexion()
        {

            if (!String.IsNullOrEmpty(cadenaConexion))
            {
                objetoConexion = new SqlConnection(cadenaConexion);
                objetoConexion.Open();

                if (objetoConexion.State.ToString() != "Open")
                {
                    while (objetoConexion.State.ToString() != "Open")
                    {

                    }
                }
            }
        }

        //Metodo para cerrar la conexion
        public void CerrarConexion()
        {
            if (objetoConexion != null)
            {
                if (objetoConexion.State.ToString() == "Open")
                {
                    objetoConexion.Close();
                    objetoConexion.Dispose();
                }
            }
        }


        public SqlConnection ObjetoConexion()
        {
            return (objetoConexion);

        }
    }
}