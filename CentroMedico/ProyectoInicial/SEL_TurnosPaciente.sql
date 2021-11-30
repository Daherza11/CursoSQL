--exec SELECT_turnospaciente 7

ALTER PROC SELECT_TurnosPaciente(
				@idpaciente paciente
				)

AS
set nocount on

IF exists(SELECT * from Paciente P
				INNER JOIN TurnoPaciente TP
				ON TP.idPaciente = P.idPaciente
				INNER JOIN Turno T
				ON T.idTurno = TP.idTurno
				INNER JOIN MedicoEspecialidad M
				ON M.idMedico = TP.idMedico
				WHERE P.idpaciente = @idpaciente
				)
	SELECT * from Paciente P
	INNER JOIN TurnoPaciente TP
	ON TP.idPaciente = P.idPaciente
	INNER JOIN Turno T
	ON T.idTurno = TP.idTurno
	INNER JOIN MedicoEspecialidad M
	ON M.idMedico = TP.idMedico
	WHERE P.idpaciente = @idpaciente
else
	select 0 as resultado