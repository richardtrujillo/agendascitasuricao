using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Uricao.Entidades.EPresupuestoFacturas
{
    public class Factura
    {
        private int nro_factura;
        private List<Detalle_Presupuesto_Factura> listado_factura;
        private float total_factura;


        public Factura(int nro_factura, float total_Factura)
        {
            this.nro_factura = nro_factura;
            this.total_factura = total_Factura;
            this.listado_factura = new List<Detalle_Presupuesto_Factura>();
        }

        public int getNro_Factura()
        {
            return this.nro_factura;
        }
        public List<Detalle_Presupuesto_Factura> getListado_Factura()
        {
            return this.listado_factura;
        }
        public float getTotal_Factura()
        {
            return total_factura;
        }
        public void setNro_Factura(int nro_factura)
        {
            this.nro_factura = nro_factura;
        }
        public void setTotal_Factura(float total_factura)
        {
            this.total_factura = total_factura;
        }
        public void addDetalle(Detalle_Presupuesto_Factura elDetalle)
        {
            listado_factura.Add(elDetalle);
        }
        public Detalle_Presupuesto_Factura getDetalle_Factura(int i)
        {
            Detalle_Presupuesto_Factura regreso = null;

            Object[] directorio = listado_factura.ToArray();

            regreso = (Detalle_Presupuesto_Factura)directorio[i];

            return regreso;

        }
        public int getTamano_Lista()
        {
            Object[] directorio = listado_factura.ToArray();
            return directorio.Length;

        }
    }
}
