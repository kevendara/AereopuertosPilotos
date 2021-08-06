using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LocalServicesAirlines
{
    public class Airline2
    {
        public int id_airline { get; set; }
        public string descripcion { get; set; }
        public string ciudad { get; set; }
        public int numero_aviones { get; set; }
        public string rutas { get; set; }
    }

    public class Pilots2
    {
        public int id_pilot { get; set; }
        public string nombres { get; set; }
        public decimal salario { get; set; }
        public decimal comision { get; set; }
        public string fecha_ingreso { get; set; }
        public string cargo { get; set; }
        public int horas_vuelo { get; set; }
        public int id_airline { get; set; }
    }
}
