EXEC SEL_EspecialidadesMedicas

CREATE PROC SEL_EspecialidadesMedicas

AS
SET NOCOUNT ON

--SELECT * FROM Especialidad

IF EXISTS(SELECT * FROM Especialidad)
	SELECT * FROM Especialidad
ELSE
	SELECT 0 AS Resultado