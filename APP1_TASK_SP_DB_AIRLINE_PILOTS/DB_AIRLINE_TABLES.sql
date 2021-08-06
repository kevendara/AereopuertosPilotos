
CREATE DATABASE airlines
--DROP DATABASE airlines
go

USE airlines
go

CREATE TABLE airline (
	id_airline		INT NOT NULL IDENTITY PRIMARY KEY,
	descripcion		VARCHAR(100) NOT NULL,
	ciudad			VARCHAR(50) NOT NULL,
	numero_aviones  int NOT null,
	rutas			VARCHAR(100)  NOT NULL
)
GO

CREATE TABLE pilots(
	id_pilot		int not null identity primary key,
	nombres			varchar(100) not null,
	salario			money NOT null,
	comision		money NOT null,
	fecha_ingreso	varchar(10) not null,
	cargo			varchar(100) not null,
	horas_vuelo     int NOT null,
	id_airline		int not null
)
GO 

alter table pilots
add foreign key (id_airline)
references airline(id_airline)
GO

select * from airline
select * from pilots
