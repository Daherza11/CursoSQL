--SELECT * FROM Paciente
EXEC UPD_Paciente 8, 131342, 'Daniel', 'Hernandez', '19971106', 'Tulipan #15', 'MEX', 444, 'daherza@gmail.com', ''

ALTER PROC UPD_Paciente(
				@idPaciente paciente,
				@dni varchar(20),
				@nombre varchar(50),
				@apellido varchar(50),
				@fNacimiento date,
				@domicilio varchar(50),
				@idPais pais,
				@telefono varchar(20),
				@email varchar (30),
				@observacion observacion
				)

AS
SET NOCOUNT ON

IF EXISTS(SELECT * FROM Paciente WHERE idPaciente = @idPaciente)
	UPDATE Paciente SET dni = @dni,
						nombre = @nombre,
						apellido = @apellido,
						fNacimiento = @fNacimiento,
						domicilio = @domicilio,
						idPais = @idPais,
						telefono = @telefono,
						email = @email,
						observacion = @observacion
	WHERE idPaciente=@idPaciente
ELSE
	SELECT 0 AS Resultado