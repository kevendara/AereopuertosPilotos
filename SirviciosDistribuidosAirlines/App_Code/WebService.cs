using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Descripción breve de WebService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
// [System.Web.Script.Services.ScriptService]
public class WebService : System.Web.Services.WebService {

    public WebService () {

        //Elimine la marca de comentario de la línea siguiente si utiliza los componentes diseñados 
        //InitializeComponent(); 
    }

    [WebMethod]
    public string HelloWorld() {
        return "Hola a todos";
    }

    [WebMethod]
    public LocalServicesAirlines.Airline2[] airline_list()
    {
        return new LocalServicesAirlines.AirlanesPilots().airline_list();
    }

    [WebMethod]
    public int create_airline_sp(string descripcion, string ciudad,
            int numero_aviones, string rutas)
    {
        return new LocalServicesAirlines.AirlanesPilots().create_airline_sp(descripcion, ciudad,
                    numero_aviones, rutas);
    }

    [WebMethod]
    public int update_airline_sp(int id_airline, string descripcion, string ciudad,
            int numero_aviones, string rutas)
    {
        return new LocalServicesAirlines.AirlanesPilots().update_airline_sp(id_airline, descripcion, ciudad,
                    numero_aviones, rutas);
    }

    [WebMethod]
    public int delete_airline_sp(int id_airline)
    {
        return new LocalServicesAirlines.AirlanesPilots().delete_airline_sp(id_airline);
    }


    //******************************************* LIBROS ***************************************************

    [WebMethod]
    public LocalServicesAirlines.Pilots2[] pilots_list()
    {
        return new LocalServicesAirlines.AirlanesPilots().pilots_list();
    }

    [WebMethod]
    public int create_pilot_sp(string nombres, decimal salario, decimal comision,
            string fecha_ingreso, string cargo, int horas_vuelo, int id_airline)
    {
        return new LocalServicesAirlines.AirlanesPilots().create_pilot_sp(nombres, salario, comision,
             fecha_ingreso, cargo, horas_vuelo, id_airline);
    }

    [WebMethod]
    public int update_pilot_sp(int id_pilot, string nombres, decimal salario, decimal comision,
            string fecha_ingreso, string cargo, int horas_vuelo, int id_airline)
    {
        return new LocalServicesAirlines.AirlanesPilots().update_pilot_sp(id_pilot, nombres, salario, comision,
             fecha_ingreso, cargo, horas_vuelo, id_airline);
    }

    [WebMethod]
    public int delete_pilot_sp(int id_pilot)
    {
        return new LocalServicesAirlines.AirlanesPilots().delete_pilot_sp(id_pilot);
    }
}
