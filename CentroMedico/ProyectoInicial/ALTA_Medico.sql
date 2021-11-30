/*
SELECT * FROM Medico
SELECT * FROM MedicoEspecialidad
INSERT INTO Medico Values('Pablo','Ramirez')
*/

--EXEC ALTA_Medico 'Gerardo', 'Martinez',1,'Medico residente'

ALTER PROC ALTA_Medico(
			@nombre varchar(50),
			@apellido varchar(50),
			@idEspecialidad int,
			@descripcion varchar(50)
			)

AS

SET NOCOUNT ON

IF NOT EXISTS(SELECT TOP 1 idMedico FROM Medico WHERE nombre=@nombre and apellido=@apellido)
BEGIN
	INSERT INTO Medico(nombre, apellido)
	VALUES (@nombre,@apellido)

	DECLARE @auxIdmedico int
	SET @auxIdmedico=@@IDENTITY

	INSERT INTO MedicoEspecialidad(idMedico,idEspecialidad,descripcion)
	VALUES(@auxIdmedico,@idEspecialidad,@descripcion)

	print 'El Medico se agregó correctamente'
	return
END
ELSE
BEGIN
	print 'El Medico ya existe'
	return
END