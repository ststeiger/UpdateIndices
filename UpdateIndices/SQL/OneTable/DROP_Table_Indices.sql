
DECLARE @mytable sysname = N'T_ZO_SYS_Metadatenrechte_Benutzergruppe'


DECLARE @SchemaName VARCHAR(256)DECLARE @TableName VARCHAR(256)
DECLARE @IndexName VARCHAR(256)
DECLARE @TSQLDropIndex VARCHAR(MAX)

DECLARE CursorIndexes CURSOR FOR 
(
	SELECT 
		 schema_name(t.schema_id)
		,t.name
		,i.name 
		--,*
	FROM sys.indexes AS i
	INNER JOIN sys.tables AS t 
		ON t.object_id = i.object_id 
	WHERE i.type> 0 
	AND t.is_ms_shipped = 0 
	AND t.name <> 'sysdiagrams'
	AND 
	(
		is_primary_key = 0 
		AND 
		is_unique_constraint = 0
	) 
	AND t.name = @mytable 
)
OPEN CursorIndexes
FETCH NEXT FROM CursorIndexes INTO @SchemaName,@TableName,@IndexName

WHILE @@fetch_status = 0
BEGIN
 SET @TSQLDropIndex = 'DROP INDEX ' + QUOTENAME(@SchemaName)+ '.' + QUOTENAME(@TableName) + '.' + QUOTENAME(@IndexName)
 PRINT @TSQLDropIndex
 FETCH NEXT FROM CursorIndexes INTO @SchemaName,@TableName,@IndexName
END

CLOSE CursorIndexes
DEALLOCATE CursorIndexes 
