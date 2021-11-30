/*
SELECT * FROM Paciente
SELECT * FROM PacienteLog
*/

CREATE TRIGGER PacientesCreado ON Paciente
AFTER INSERT 
AS

IF (SELECT idpais FROM inserted) = 'MEX'
	INSERT INTO PacienteLog (idpaciente, idpais, fechaAlta)
		SELECT i.idpaciente, i.idpais, getdate() FROM Inserted i