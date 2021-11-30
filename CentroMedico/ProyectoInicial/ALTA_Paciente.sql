--EXEC ALTA_Paciente '4452197', 'Alejandra', 'Villalobos', '19951130', 'Callejón Nuevo', 'MEX', '','crlkas8@gmail.com',''

ALTER PROC ALTA_Paciente(
			@dni varchar(20),
			@nombre varchar(50),
			@apellido varchar(50),
			@fNacimiento varchar(8),
			@domicilio varchar(50),
			@idPais char(3),
			@tel varchar(20)='',
			@email varchar (30),
			@observacion varchar (1000)=''
			)

AS
SET NOCOUNT ON

DECLARE @a bigint=0
WHILE @a <= 15000000
	SET @a=@a+1

IF NOT EXISTS(SELECT * FROM Paciente WHERE dni=@dni)
BEGIN
	INSERT INTO Paciente (dni,nombre,apellido,fNacimiento, domicilio,idPais,telefono,email,observacion)
	VALUES (@dni,@nombre,@apellido,@fNacimiento,@domicilio,@idPais,@tel,@email,@observacion)
	print 'El paciente se agregó correctamente'
	return
END
ELSE
BEGIN
	print 'El paciente ya existe'
	return
END