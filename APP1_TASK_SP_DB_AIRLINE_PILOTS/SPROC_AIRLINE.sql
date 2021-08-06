
USE airlines
go
-- CRUD OVER DB airlines WITH STORAGE PROCEDURE
--OVER AIRLINES TABLE
------------------------CREATE--------------------------
CREATE PROCEDURE CREATE_AIRLINE(
	@descripcion      varchar(100),
	@ciudad           varchar(50) ,
	@numero_aviones   int ,
	@rutas			VARCHAR(100) 
)  as  begin 
	BEGIN TRY 
		BEGIN TRANSACTION 
			insert into airline(--id_airline
							descripcion, ciudad, numero_aviones, rutas	)
						VALUES (--@id_airline,
								@descripcion, @ciudad,@numero_aviones, @rutas )
		COMMIT TRANSACTION 
	END TRY 
	BEGIN CATCH 
		ROLLBACK TRANSACTION
	END CATCH 
	END

--------------------------READ--------------------------------
CREATE PROCEDURE  SELECT_AIRLINES
AS BEGIN 
	SELECT  * FROM airline
END

CREATE PROCEDURE  SELECT_AIRLINE
	@id_airline int 
	AS BEGIN 
		SELECT * FROM airline 
		WHERE id_airline=@id_airline
	END

-----------------------UPDATE------------------------
CREATE PROCEDURE UPDATE_AIRLINE(
	@id_airline int ,
	@descripcion    varchar(100), 
	@ciudad         varchar (50),
	@numero_aviones   int null,
	@rutas			VARCHAR(50) NULL
	)
	AS BEGIN 
		BEGIN TRY
			BEGIN TRAN
				UPDATE airline 
					SET descripcion=@descripcion,
					ciudad=@ciudad,
					numero_aviones=@numero_aviones,
					rutas=@rutas
				WHERE id_airline=@id_airline
			COMMIT TRANSACTION 
		END TRY 
		BEGIN CATCH 
			ROLLBACK TRANSACTION
		END CATCH 
END

-------------------------DELETE--------------------
CREATE PROCEDURE DELETE_AIRLINE
	@id_airline int 
	AS BEGIN 
		BEGIN TRY
			BEGIN TRAN
				DELETE FROM  airline 
				WHERE id_airline=@id_airline
			COMMIT TRANSACTION 
		END TRY 
		BEGIN CATCH 
			ROLLBACK TRANSACTION
		END CATCH 
	END








