/*	+
	-
	/
	*
	%
*/

--DECLARE @num1 decimal(9,2)=20
--DECLARE @num2 decimal(9,2)=30
DECLARE @texto1 varchar(50)='Hola me llamo Mariano'
DECLARE @texto2 varchar(50)='Hola me llamo Mariano 12'

if @texto1 <> @texto2
	PRINT 'Sí'