ALTER PROC S_paciente (
			@idpaciente int
)
AS


SELECT apellido,nombre,idPais,observacion,
	(SELECT Ps.nombrePais FROM Pais Ps WHERE Ps.idPais = Pa.idPais) descPais
FROM Paciente Pa WHERE idPaciente = @idpaciente

GO