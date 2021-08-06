using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LocalServicesAirlines
{
    public class AirlanesPilots
    {
        public Airline2[] airline_list()
        {
            using (var ctx = new airlinesEntities())
            {
                var lst = from d in ctx.airline select d;
                Airline2[] r = new Airline2[lst.Count()];
                int i = 0;

                foreach (var d in lst)
                {
                    r[i++] = new Airline2
                    {
                        id_airline=d.id_airline,
                        descripcion=d.descripcion,
                        ciudad=d.ciudad,
                        numero_aviones=d.numero_aviones,
                        rutas=d.rutas
                    };
                }
                return r;
            }
        }

        public int create_airline_sp(string descripcion, string ciudad, 
            int numero_aviones, string rutas )
        {
            using (var ctx = new airlinesEntities())
            {
                ctx.CREATE_AIRLINE( descripcion,  ciudad, 
                    numero_aviones,  rutas);
                return 0;
            }

        }

        public int update_airline_sp(int id_airline, string descripcion, string ciudad,
            int numero_aviones, string rutas)
        {
            using (var ctx = new airlinesEntities())
            {
                ctx.UPDATE_AIRLINE(id_airline, descripcion, ciudad,
                    numero_aviones, rutas);
                return 0;
            }

        }


        public int delete_airline_sp(int id_airline)
        {
            using (var ctx = new airlinesEntities())
            {
                ctx.DELETE_AIRLINE(id_airline);
                return 0;
            }

        }


        //******************************************* PILOTOS ***************************************************

        public Pilots2[] pilots_list()
        {
            using (var ctx = new airlinesEntities())
            {
                var lst = from d in ctx.pilots select d;
                Pilots2[] r = new Pilots2[lst.Count()];
                int i = 0;

                foreach (var d in lst)
                {
                    r[i++] = new Pilots2
                    {
                        id_pilot=d.id_pilot,
                        nombres=d.nombres,
                        salario=d.salario,
                        comision=d.comision,
                        fecha_ingreso=d.fecha_ingreso,
                        cargo=d.cargo,
                        horas_vuelo=d.horas_vuelo,
                        id_airline=d.id_airline
                    };
                }
                return r;
            }
        }

        public int create_pilot_sp(string nombres, decimal salario, decimal comision,
            string fecha_ingreso, string cargo, int horas_vuelo, int id_airline)
        {
            using (var ctx = new airlinesEntities())
            {
                ctx.CREATE_PILOT( nombres,  salario,  comision,
             fecha_ingreso,  cargo,  horas_vuelo,  id_airline);
                return 0;
            }

        }

        public int update_pilot_sp(int id_pilot, string nombres, decimal salario, decimal comision,
            string fecha_ingreso, string cargo, int horas_vuelo, int id_airline)
        {
            using (var ctx = new airlinesEntities())
            {
                ctx.UPDATE_PILOT( id_pilot,  nombres,  salario,  comision,
             fecha_ingreso,  cargo,  horas_vuelo,  id_airline);
                return 0;
            }

        }


        public int delete_pilot_sp(int id_pilot)
        {
            using (var ctx = new airlinesEntities())
            {
                ctx.DELETE_PILOT(id_pilot);
                return 0;
            }

        }
    }
}
