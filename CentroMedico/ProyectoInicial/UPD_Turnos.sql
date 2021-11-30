/*
SELECT * FROM Turno
SELECT * FROM TurnoPaciente
*/
--EXEC UPD_Turnos 2,0,''

ALTER PROC UPD_Turnos(
				@idturno turno,
				@estado tinyint,
				@observacion observacion
				)

AS
SET NOCOUNT ON

IF EXISTS(SELECT * FROM Turno WHERE idTurno = @idturno)
	UPDATE Turno SET estado = @estado,
					observacion = @observacion
	WHERE idTurno=@idturno
ELSE
	SELECT 0 AS Resultado