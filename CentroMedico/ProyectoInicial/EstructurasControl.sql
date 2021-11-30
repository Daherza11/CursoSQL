

/*
DECLARE @valor int
declare @resultado char(10)=''
set @valor = 10

set @resultado= (CASE WHEN @valor=10 THEN 'ROJO'
						when @valor=20 THEN 'VERDE'
						WHEN @valor=30 THEN 'AZUL'
						ELSE 'GRIS'
					end)
print @resultado

SELECT *, (CASE WHEN estado=1 THEN 'VERDE'
				WHEN estado=2 THEN 'ROJO'
				WHEN estado=0 THEN 'AZUL' end)as ColorTurno FROM Turno


DECLARE @idPaciente int
DECLARE @idturno int

SET @idPaciente = 7

IF @idPaciente = 7
BEGIN
	set @idturno = 20
	SELECT * FROM Paciente WHERE idPaciente = @idPaciente
	print @idturno

	IF EXISTS(SELECT * FROM Paciente WHERE idPaciente=7)
	PRINT 'Existe'
END

*/

DECLARE @contador int=0
WHILE @contador <=10
BEGIN
	print @contador
	set @contador = @contador+1
	if @contador= 3
		BREAK
END
PRINT 'Sigue ejecutando'



BEGIN TRY
	SET @contador = 'Texto'
END TRY

BEGIN CATCH
	PRINT 'No es posible asignar un texto a la variable @contador'
END CATCH
