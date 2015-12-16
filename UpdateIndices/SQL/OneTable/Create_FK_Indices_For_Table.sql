
DECLARE @tableName sysname = 'T_ALV_Ref_FilterAnzeige'

SELECT 
	'IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N''[dbo].[' + tab.[name] + ']'') AND name = N''IX_' + cols.[name] + ''') '
	+ 'CREATE NONCLUSTERED INDEX [IX_' + cols.[name]+ '] ON [dbo].[' + tab.[name] + ']( ['
	+ cols.[name]
	+ '] ASC ) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]'
	+ ';'
FROM sys.foreign_keys keys

INNER JOIN sys.foreign_key_columns keyCols
	ON keys.object_id = keyCols.constraint_object_id
	
INNER JOIN sys.columns cols
	ON keyCols.parent_object_id = cols.object_id
	AND keyCols.parent_column_id = cols.column_id 
	
INNER JOIN sys.tables tab
	ON keyCols.parent_object_id = tab.object_id 
	
WHERE tab.[name] = @tableName 
	
ORDER BY tab.[name], cols.[name] 
