using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Uricao.Entidades.ECuentasPorPagar
{
    public class CuentaPorPagar
    {
        private string idCuentaPorPagar;

        /* 
         
         * La lista de empleados es de la super clase
         * de usuario
         private List<Proveedor> listaProveedor;
         private List<Usuario> listaEmpleado;
         
         */

        //atributos banco
        private string banco;
        private string idCuentaBancaria;
        private string numeroCuentaBancaria;
        private string tipoCuentaBancaria;

        //atributos de prueba
        private int numeroGridView;
        private string mensaje;

        //atributos cuentas por pagar
        private string fechaEmision;
        private string fechaVencimiento;
        private string tipoPago;
        private string estatus;
        private string tipoDeuda;
        private string detalle;
        private double montoInicialDeuda;
        private double montoActualDeuda;

        #region constructores

        public CuentaPorPagar()
        {

        }

        public CuentaPorPagar(string nuevoBanco, string nuevoIdCuentaBancaria, string nuevoNumeroCuentaBancaria, string nuevoTipoCuentaBancaria,
            string nuevoFechaEmision, string nuevoFechaVencimiento, string nuevoTipoPago, string nuevoEstatus, string nuevoTipoDeuda,
            double nuevoMontoInicialDeuda, double nuevoMontoActualDeuda)
        {

        }

        public CuentaPorPagar(int nuevoNumeroGridView, string nuevoMensaje)
        {
            this.numeroGridView = nuevoNumeroGridView;
            this.mensaje = nuevoMensaje;
        }

       


        #endregion

        #region Encapsulamiento de Atributos

        /// <summary>
        /// Metodos Getters y Setters.
        /// </summary>
        
        public int NumeroGridView
        {
            get { return numeroGridView; }
            set { numeroGridView = value; }
        }

        public String Mensaje
        {
            get { return mensaje; }
            set { mensaje = value; }
        }

       
        #endregion

    }
}