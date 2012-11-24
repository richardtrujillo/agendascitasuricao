using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Uricao.Entidades.ETratamientos;

namespace Uricao.Entidades.EPresupuestoFacturas
{
    public class Detalle_Presupuesto_Factura
    {
        private Tratamiento el_Tratamiento;
        private float total_pago_tratamiento;

        public Detalle_Presupuesto_Factura(Tratamiento el_Tratamiento, float total_pago_tratamiento)
        {
            this.el_Tratamiento = el_Tratamiento;
            this.total_pago_tratamiento = total_pago_tratamiento;
        }
        public void setTratamiento(Tratamiento el_Tratamiento)
        {
            this.el_Tratamiento = el_Tratamiento;
        }
        public void setTotal_Pago_Tratamiento(float total_pago_tratamiento)
        {
            this.total_pago_tratamiento = total_pago_tratamiento;
        }
        public Tratamiento getTratamiento()
        {
            return el_Tratamiento;
        }
        public float getPago()
        {
            return total_pago_tratamiento;
        }


    }
}
