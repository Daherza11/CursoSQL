--TABLA TEMPORAL EN MEMORIA

DECLARE @mitabla TABLE (id int IDENTITY (1,1), pais varchar(50))

INSERT INTO @mitabla VALUES ('MEXICO')
INSERT INTO @mitabla VALUES ('PERU')
INSERT INTO @mitabla VALUES ('COLOMBIA')
INSERT INTO @mitabla VALUES ('ECUADOR')
INSERT INTO @mitabla VALUES ('BRASIL')

SELECT * FROM @mitabla


--TABLA TEMPORAL FÍSICA

CREATE TABLE #mitabla(id int IDENTITY(1,1),nombre varchar(50), apellido varchar(50))

INSERT INTO #mitabla values('Alejandro','Lopez')
INSERT INTO #mitabla values('Rafael','Castillo')
INSERT INTO #mitabla values('Fernando','Arriaga')

SELECT * FROM #mitabla

DROP TABLE #mitabla

--SCRIPT
DECLARE @turnos TABLE (id int iDENTITY (1,1), idturno turno, idpaciente paciente)
DECLARE @idpaciente paciente
set @idpaciente = 9
INSERT INTO @turnos (idturno, idpaciente)
SELECT TP.idTurno,TP.idPaciente FROM Paciente P
	INNER JOIN TurnoPaciente TP
	ON TP.idPaciente=P.idPaciente

DECLARE @i int, @total int
SET @i=1
SET @total=(SELECT COUNT (*) FROM @turnos)

WHILE @i<=@total
BEGIN
	if (SELECT idpaciente FROM @turnos WHERE id = @i) <> 9
		DELETE FROM @turnos WHERE id = @i
	SET @i = @i +1
END	

SELECT * FROM Paciente P
	INNER JOIN @turnos T
	ON T.idpaciente=P.idPaciente