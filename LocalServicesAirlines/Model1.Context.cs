//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace LocalServicesAirlines
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Objects;
    using System.Data.Objects.DataClasses;
    using System.Linq;
    
    public partial class airlinesEntities : DbContext
    {
        public airlinesEntities()
            : base("name=airlinesEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<airline> airline { get; set; }
        public DbSet<pilots> pilots { get; set; }
    
        public virtual int CREATE_AIRLINE(string descripcion, string ciudad, Nullable<int> numero_aviones, string rutas)
        {
            var descripcionParameter = descripcion != null ?
                new ObjectParameter("descripcion", descripcion) :
                new ObjectParameter("descripcion", typeof(string));
    
            var ciudadParameter = ciudad != null ?
                new ObjectParameter("ciudad", ciudad) :
                new ObjectParameter("ciudad", typeof(string));
    
            var numero_avionesParameter = numero_aviones.HasValue ?
                new ObjectParameter("numero_aviones", numero_aviones) :
                new ObjectParameter("numero_aviones", typeof(int));
    
            var rutasParameter = rutas != null ?
                new ObjectParameter("rutas", rutas) :
                new ObjectParameter("rutas", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("CREATE_AIRLINE", descripcionParameter, ciudadParameter, numero_avionesParameter, rutasParameter);
        }
    
        public virtual int CREATE_PILOT(string nombres, Nullable<decimal> salario, Nullable<decimal> comision, string fecha_ingreso, string cargo, Nullable<int> horas_vuelo, Nullable<int> id_airline)
        {
            var nombresParameter = nombres != null ?
                new ObjectParameter("nombres", nombres) :
                new ObjectParameter("nombres", typeof(string));
    
            var salarioParameter = salario.HasValue ?
                new ObjectParameter("salario", salario) :
                new ObjectParameter("salario", typeof(decimal));
    
            var comisionParameter = comision.HasValue ?
                new ObjectParameter("comision", comision) :
                new ObjectParameter("comision", typeof(decimal));
    
            var fecha_ingresoParameter = fecha_ingreso != null ?
                new ObjectParameter("fecha_ingreso", fecha_ingreso) :
                new ObjectParameter("fecha_ingreso", typeof(string));
    
            var cargoParameter = cargo != null ?
                new ObjectParameter("cargo", cargo) :
                new ObjectParameter("cargo", typeof(string));
    
            var horas_vueloParameter = horas_vuelo.HasValue ?
                new ObjectParameter("horas_vuelo", horas_vuelo) :
                new ObjectParameter("horas_vuelo", typeof(int));
    
            var id_airlineParameter = id_airline.HasValue ?
                new ObjectParameter("id_airline", id_airline) :
                new ObjectParameter("id_airline", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("CREATE_PILOT", nombresParameter, salarioParameter, comisionParameter, fecha_ingresoParameter, cargoParameter, horas_vueloParameter, id_airlineParameter);
        }
    
        public virtual int DELETE_AIRLINE(Nullable<int> id_airline)
        {
            var id_airlineParameter = id_airline.HasValue ?
                new ObjectParameter("id_airline", id_airline) :
                new ObjectParameter("id_airline", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("DELETE_AIRLINE", id_airlineParameter);
        }
    
        public virtual int DELETE_PILOT(Nullable<int> id_pilot)
        {
            var id_pilotParameter = id_pilot.HasValue ?
                new ObjectParameter("id_pilot", id_pilot) :
                new ObjectParameter("id_pilot", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("DELETE_PILOT", id_pilotParameter);
        }
    
        public virtual ObjectResult<SELECT_AIRLINE_Result> SELECT_AIRLINE(Nullable<int> id_airline)
        {
            var id_airlineParameter = id_airline.HasValue ?
                new ObjectParameter("id_airline", id_airline) :
                new ObjectParameter("id_airline", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<SELECT_AIRLINE_Result>("SELECT_AIRLINE", id_airlineParameter);
        }
    
        public virtual ObjectResult<SELECT_AIRLINES_Result> SELECT_AIRLINES()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<SELECT_AIRLINES_Result>("SELECT_AIRLINES");
        }
    
        public virtual ObjectResult<SELECT_PILOT_Result> SELECT_PILOT(Nullable<int> id_pilot)
        {
            var id_pilotParameter = id_pilot.HasValue ?
                new ObjectParameter("id_pilot", id_pilot) :
                new ObjectParameter("id_pilot", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<SELECT_PILOT_Result>("SELECT_PILOT", id_pilotParameter);
        }
    
        public virtual ObjectResult<SELECT_PILOTS_Result> SELECT_PILOTS()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<SELECT_PILOTS_Result>("SELECT_PILOTS");
        }
    
        public virtual int UPDATE_AIRLINE(Nullable<int> id_airline, string descripcion, string ciudad, Nullable<int> numero_aviones, string rutas)
        {
            var id_airlineParameter = id_airline.HasValue ?
                new ObjectParameter("id_airline", id_airline) :
                new ObjectParameter("id_airline", typeof(int));
    
            var descripcionParameter = descripcion != null ?
                new ObjectParameter("descripcion", descripcion) :
                new ObjectParameter("descripcion", typeof(string));
    
            var ciudadParameter = ciudad != null ?
                new ObjectParameter("ciudad", ciudad) :
                new ObjectParameter("ciudad", typeof(string));
    
            var numero_avionesParameter = numero_aviones.HasValue ?
                new ObjectParameter("numero_aviones", numero_aviones) :
                new ObjectParameter("numero_aviones", typeof(int));
    
            var rutasParameter = rutas != null ?
                new ObjectParameter("rutas", rutas) :
                new ObjectParameter("rutas", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("UPDATE_AIRLINE", id_airlineParameter, descripcionParameter, ciudadParameter, numero_avionesParameter, rutasParameter);
        }
    
        public virtual int UPDATE_PILOT(Nullable<int> id_pilot, string nombres, Nullable<decimal> salario, Nullable<decimal> comision, string fecha_ingreso, string cargo, Nullable<int> horas_vuelo, Nullable<int> id_airline)
        {
            var id_pilotParameter = id_pilot.HasValue ?
                new ObjectParameter("id_pilot", id_pilot) :
                new ObjectParameter("id_pilot", typeof(int));
    
            var nombresParameter = nombres != null ?
                new ObjectParameter("nombres", nombres) :
                new ObjectParameter("nombres", typeof(string));
    
            var salarioParameter = salario.HasValue ?
                new ObjectParameter("salario", salario) :
                new ObjectParameter("salario", typeof(decimal));
    
            var comisionParameter = comision.HasValue ?
                new ObjectParameter("comision", comision) :
                new ObjectParameter("comision", typeof(decimal));
    
            var fecha_ingresoParameter = fecha_ingreso != null ?
                new ObjectParameter("fecha_ingreso", fecha_ingreso) :
                new ObjectParameter("fecha_ingreso", typeof(string));
    
            var cargoParameter = cargo != null ?
                new ObjectParameter("cargo", cargo) :
                new ObjectParameter("cargo", typeof(string));
    
            var horas_vueloParameter = horas_vuelo.HasValue ?
                new ObjectParameter("horas_vuelo", horas_vuelo) :
                new ObjectParameter("horas_vuelo", typeof(int));
    
            var id_airlineParameter = id_airline.HasValue ?
                new ObjectParameter("id_airline", id_airline) :
                new ObjectParameter("id_airline", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("UPDATE_PILOT", id_pilotParameter, nombresParameter, salarioParameter, comisionParameter, fecha_ingresoParameter, cargoParameter, horas_vueloParameter, id_airlineParameter);
        }
    }
}
