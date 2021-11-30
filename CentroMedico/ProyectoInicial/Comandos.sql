SELECT * FROM Turno WHERE estado = 2
UNION
SELECT * FROM Turno WHERE estado = 1

/*
SELECT * FROM Paciente P
RIGHT JOIN TurnoPaciente TP
ON P.idPaciente=TP.idPaciente

BEGIN TRAN
	DELETE FROM Turno WHERE estado=0
IF @@ROWCOUNT=1
	COMMIT TRAN
ELSE
	ROLLBACK TRAN

BEGIN TRAN
	UPDATE Paciente SET telefono=444 WHERE apellido='Perez'
IF @@ROWCOUNT = 1
	COMMIT TRAN
ELSE
	ROLLBACK TRAN

DECLARE @numero money
SET @numero=500.40
PRINT @numero
DECLARE @fecha datetime
SET @fecha = getdate()
PRINT @fecha

SELECT CAST (idPaciente as money) from Paciente
SELECT CAST(@numero as INT) AS numero --Convierte al momento, sólo visualización

print CONVERT(char(20),@fecha,104)


SELECT GETDATE()
SELECT GETUTCDATE()

SELECT DATEADD(mi,3,getdate())

SELECT DATEDIFF(month,'20210101',getdate())

SELECT DATEPART(DW, GETDATE())

IF ISDATE(20210610)=1 --ES BOOLEANO EL RESULTADO
	PRINT 'Es una fecha'
else
	PRINT 'Fecha incorrecta'



DECLARE @var1 varchar(20)
DECLARE @var2 varchar(20)
SET @var1 = '     Ramiro     '
SET @var2 = 'Gonzalez     '

--SELECT LTRIM(RTRIM(@var1)) +' '+ LTRIM(RTRIM(@var2)) +'*'

SELECT CONCAT(LTRIM(RTRIM(@var1)),' ',LTRIM(RTRIM(@var2)))

PRINT REPLICATE('0',5)

SELECT REPLACE(@var1,'"','')
SELECT REPLACE(@var2,'@','')


PRINT UPPER(LEFT(@var1,1))+LOWER(RIGHT(@var1,LEN(@var1)-1)) + ' ' + UPPER(LEFT(@var2,1))+LOWER(RIGHT(@var2,LEN(@var2)-1))

print LOWER (@var1)+' '+UPPER(@var2)

PRINT left (@var1, LEN(@var1)-1)--+ LEFT (@var2,1)
PRINT LEN(@var2) 

EXEC S_paciente 3

SELECT * FROM Paciente
ALTER TABLE Paciente ADD estado smallint
ALTER TABLE Paciente ALTER COLUMN estado bit
ALTER TABLE Paciente DROP COLUMN estado

SELECT * FROM ejemplo
CREATE TABLE ejemplo(campo0 int IDENTITY(1,1), campo1 int, campo2 int)
INSERT INTO ejemplo VALUES(2,3)

TRUNCATE TABLE ejemplo --Eliminar todos los REGISTROS de una tabla

DROP TABLE ejemplo

CREATE TYPE pais FROM CHAR (3)


--SELECT
SELECT TOP 1 * FROM Paciente ORDER BY fNacimiento ASC
SELECT TOP 2 * FROM Paciente WHERE apellido ='Perez'
SELECT * FROM paciente WHERE nombre ='Claudio' and apellido='Lopez'
SELECT * FROM Paciente
SELECT DISTINCT (apellido) FROM Paciente
SELECT apellido FROM Paciente GROUP BY apellido
SELECT apellido, MAX (idPaciente) FROM paciente GROUP BY apellido

SELECT SUM(idpaciente),apellido FROM paciente GROUP BY apellido

SELECT AVG(idpaciente) FROM paciente

SELECT COUNT (idpaciente) FROM paciente WHERE apellido = 'Perez'

SELECT estado FROM turno GROUP BY estado HAVING COUNT (estado) = 1

SELECT * FROM paciente WHERE apellido = 'Perez' or nombre = 'Roberto' or idPaciente = 3

SELECT * FROM turno

SELECT * FROM turno WHERE estado IN (0,1) ORDER BY estado DESC
SELECT * FROM Paciente WHERE apellido IN ('Ramirez', 'Herza')
SELECT * FROM Paciente WHERE apellido NOT IN ('Ramirez', 'Herza')

SELECT * FROM Paciente WHERE nombre LIKE 'rober%'

SELECT * FROM Paciente WHERE nombre NOT LIKE 'rober%'

SELECT * FROM turno WHERE fechaTurno BETWEEN '20160101' and '20200303' ORDER BY fechaTurno
SELECT * FROM turno WHERE idTurno BETWEEN 1 AND 7

SELECT * FROM paciente WHERE apellido='Perez' AND (nombre='Roberto' OR idPaciente=7 
or idPais = 'MEX') AND idPaciente NOT IN (3)


--INSERT
INSERT INTO paciente (nombre, apellido, fNacimiento, domicilio, idPais, telefono, email, observacion)
values('Roberto','Gonzalez','1990-01-03','Loma Bonita 73','COL','','','')

INSERT INTO turno VALUES ('2017-12-23 17:55:00', 2, '')

--DELETE
DELETE FROM paciente WHERE nombre ='Claudio' and apellido='Lopez'

DELETE FROM paciente WHERE nombre = 'Roberto3'

--UPDATE
UPDATE Paciente SET nombre='Carlos' WHERE idPaciente=4

UPDATE turno SET estado = 2 WHERE idTurno = 7

UPDATE turno SET fechaTurno = '2017-12-23 09:42:00.000' WHERE idTurno = 10

*/