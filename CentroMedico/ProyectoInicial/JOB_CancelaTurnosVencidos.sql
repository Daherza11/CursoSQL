--SELECT * FROM Turno

USE CentroMedico
GO
UPDATE Turno SET estado = 2 WHERE CONVERT(char(8),fechaTurno,112) < CONVERT(char(8),GETDATE(),112) AND estado=0