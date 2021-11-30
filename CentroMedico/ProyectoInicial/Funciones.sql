--SELECT dbo.nombrefun (256)
--SELECT dbo.concatenar('Lopez','Roberto') AS 'Nombre completo'
--SELECT dbo.obtenerPais(8)


--FUNCIONES ESCALARES--
CREATE FUNCTION nombrefun(@var int)
RETURNS int

AS

BEGIN
	SET @var=@var*5
	return @var
END

CREATE FUNCTION concatenar(
				@apellido varchar(50),
				@nombre varchar(50)
				)

RETURNS varchar(100)

AS
BEGIN
	DECLARE @resultado varchar(100)
	SET @resultado = @apellido+', '+@nombre
	return @resultado
END

CREATE FUNCTION obtenerPais(
				@idpaciente paciente
				)
RETURNS varchar(50)

AS
BEGIN
	DECLARE @pais varchar(50)
	SET @pais = (SELECT PA.nombrePais FROM Paciente P
					INNER JOIN Pais PA
					ON PA.idPais = P.idPais 
					WHERE idPaciente =  @idpaciente)
	RETURN @pais
END

--FUNCIONES DE TIPO TABLA--

SELECT * FROM dbo.listaPaises()

CREATE FUNCTION listaPaises()
RETURNS @paises TABLE (idpais char(3), pais varchar(50))
AS
BEGIN
		INSERT INTO @paises VALUES ('ESP','España')
		INSERT INTO @paises VALUES ('MEX','México')
		INSERT INTO @paises VALUES ('CHI','Chile')
		INSERT INTO @paises VALUES ('PER','Perú')
		INSERT INTO @paises VALUES ('ARG','Argentina')

		RETURN
END