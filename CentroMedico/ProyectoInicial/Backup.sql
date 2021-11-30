DECLARE @fecha char(12)
DECLARE @path varchar(100)
DECLARE @name varchar(20)

--PRINT convert(char(5),getdate(),108)
SET @fecha=convert(char(8),getdate(),112)+ REPLACE(convert(char(5),getdate(),108),':','')
SET @path= 'C:\Backup_SQL\CentroMedico'+@fecha+'.bak'
SET @name= 'CentroMedico'+@fecha

BACKUP DATABASE CentroMedico
TO DISK = @path
WITH NO_COMPRESSION, NAME=@name

--DE AQUÍ PARA ABAJO ES NORMAL
/*
BACKUP DATABASE CentroMedico
TO DISK = 'C:\Backup_SQL\CentroMedico20211013.bak'
WITH NO_COMPRESSION, NAME='CentroMedico1'
*/