using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Uricao.LogicaDeNegocios.Clases.LNProductosInventario;

namespace Uricao.LogicaDeNegocios.Clases.LNTratamientos
{
    public class LogicaTratamiento
    {
        private String _Nombre;
        private String _Duracion;
        private Int16 _Costo;
        private String _Imagen;
        private String _Descripcion;
        private String _Explicacion;
        private List<LogicaTratamiento> _TratamientoAsociado;
        private List<LogicaProducto> _ProductoAsociado;

        public LogicaTratamiento() { }

        public LogicaTratamiento(String Nombre, String Duracion, Int16 Costo, String Descripcion, String Explicacion, List<LogicaTratamiento> TratamientoAsociado,
                            List<LogicaProducto> ProductoAsociado)
        {	
            this._Nombre = Nombre;
            this._Duracion = Duracion;
            this._Costo = Costo;
            this._Descripcion = Descripcion;
            this._Explicacion = Explicacion;
            this._TratamientoAsociado = TratamientoAsociado;
            this._ProductoAsociado = ProductoAsociado;
        }
        public String Nombre { get { return _Nombre; } set { this._Nombre = value; } }

        public String Duracion { get { return _Duracion; } set { this._Duracion = value; } }

        public Int16 Costo { get { return _Costo; } set { this._Costo = value; } }

        public String Imagen { get { return _Imagen; } set { this._Imagen = value; } }

        public String Descripcion { get { return _Descripcion; } set { this._Descripcion = value; } }

        public String Explicacion { get { return _Explicacion; } set { this._Explicacion = value; } }

    }
}