
USE airlines
go
-- CRUD OVER DB airlines  WITH STORAGE PROCEDURE
--OVER PILOTS TABLE
------------------------CREATE--------------------------
CREATE PROCEDURE CREATE_PILOT(
	@nombres			  varchar(100),
	@salario			  money  ,
	@comision			  money,
	@fecha_ingreso        varchar(10),
	@cargo				  varchar(100) ,
	@horas_vuelo		  int ,
	@id_airline	          int
) as  begin 
	BEGIN TRY 
		BEGIN TRANSACTION 
			INSERT INTO  pilots(--id_pilot, 
					nombres , salario, comision, fecha_ingreso, cargo, horas_vuelo, id_airline
					)	VALUES (--@id_empleado,
								 @nombres , @salario, @comision, @fecha_ingreso, @cargo, @horas_vuelo, @id_airline)
		COMMIT TRANSACTION 
	END TRY 
	BEGIN CATCH 
		ROLLBACK TRANSACTION
	END CATCH 
	END

--------------------------READ--------------------------------
CREATE PROCEDURE  SELECT_PILOTS
	AS BEGIN 
		SELECT  * FROM pilots
	END

CREATE PROCEDURE  SELECT_PILOT
	@id_pilot int 
	AS BEGIN 
		SELECT * FROM  pilots 
		WHERE id_pilot=@id_pilot
	END

-----------------------UPDATE------------------------
CREATE PROCEDURE UPDATE_PILOT(
	@id_pilot			int , 
	@nombres			varchar(100),
	@salario		    money ,
	@comision			money,
	@fecha_ingreso      varchar(10),
	@cargo				varchar(100),
	@horas_vuelo		int ,
	@id_airline			int
	)
	AS BEGIN 
	BEGIN TRY
		BEGIN TRAN
			UPDATE pilots 
				SET nombres=@nombres,	salario=@salario,			  
					comision=@comision,	fecha_ingreso=@fecha_ingreso, 
					cargo=@cargo,  horas_vuelo=@horas_vuelo,		
					id_airline=@id_airline

			WHERE id_pilot=@id_pilot
		COMMIT TRANSACTION 
	END TRY 
	BEGIN CATCH 
		ROLLBACK TRANSACTION
	END CATCH 
	END

-------------------------DELETE--------------------
CREATE PROCEDURE DELETE_PILOT
	@id_pilot int 
	AS BEGIN 
		BEGIN TRY
			BEGIN TRAN
				DELETE FROM  pilots
				WHERE id_pilot=@id_pilot
			COMMIT TRANSACTION 
		END TRY 
		BEGIN CATCH 
			ROLLBACK TRANSACTION
		END CATCH 
	END