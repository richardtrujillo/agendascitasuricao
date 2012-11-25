using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Uricao.Entidades.EAgendaCitas
{
    public class Cita
    {
        private DateTime _horaInicio;
        private DateTime _horaFin;
        private Boolean _confirmacion;
        private Boolean _status;
        private List<Cita> _listaCita;


        public Boolean _Status
        {
            get { return _status; }
            set { _status = value; }
        }


        public Cita()
        {
        }
    }
}