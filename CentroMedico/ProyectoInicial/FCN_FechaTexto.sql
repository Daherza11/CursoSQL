--PRINT dbo.FCN_fechatexto ('20190511')

ALTER FUNCTION FCN_FechaTexto(@fecha datetime)

RETURNS VARCHAR(60)

AS
BEGIN

DECLARE @dia varchar(20)
DECLARE @mes varchar(20)
DECLARE @fechatexto varchar (50)

SET @dia =(CASE WHEN DATEPART(DW,@fecha)=1 THEN 'Domingo' +' '+CONVERT(char(2),DATEPART(DD,@fecha))
				WHEN DATEPART(DW,@fecha)=2 THEN 'Lunes' +' '+  CONVERT(char(2),DATEPART(DD,@fecha))
				WHEN DATEPART(DW,@fecha)=3 THEN 'Martes' +' '+  CONVERT(char(2),DATEPART(DD,@fecha))
				WHEN DATEPART(DW,@fecha)=4 THEN 'Mi�rcoles' +' '+  CONVERT(char(2),DATEPART(DD,@fecha))
				WHEN DATEPART(DW,@fecha)=5 THEN 'Jueves' +' '+  CONVERT(char(2),DATEPART(DD,@fecha))
				WHEN DATEPART(DW,@fecha)=6 THEN 'Viernes' +' '+  CONVERT(char(2),DATEPART(DD,@fecha))
				WHEN DATEPART(DW,@fecha)=7 THEN 'S�bado' +' '+  CONVERT(char(2),DATEPART(DD,@fecha))
			END)

SET @mes = (CASE WHEN DATEPART(MM,@fecha) = 1 THEN 'Enero'
				WHEN DATEPART(MM,@fecha) = 2 THEN 'Febrero'
				WHEN DATEPART(MM,@fecha) = 3 THEN 'Marzo'
				WHEN DATEPART(MM,@fecha) = 4 THEN 'Abril'
				WHEN DATEPART(MM,@fecha) = 5 THEN 'Mayo'
				WHEN DATEPART(MM,@fecha) = 6 THEN 'Junio'
				WHEN DATEPART(MM,@fecha) = 7 THEN 'Julio'
				WHEN DATEPART(MM,@fecha) = 8 THEN 'Agosto'
				WHEN DATEPART(MM,@fecha) = 9 THEN 'Septiembre'
				WHEN DATEPART(MM,@fecha) = 10 THEN 'Octubre'
				WHEN DATEPART(MM,@fecha) = 11 THEN 'Noviembre'
				WHEN DATEPART(MM,@fecha) = 12 THEN 'Diciembre'
			END)

SET @fechatexto = @dia +' de '+  @mes
RETURN @fechatexto

END