
--SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE = 'BASE TABLE' AND TABLE_NAME LIKE '%rechte%'

SELECT  
 isc.TABLE_NAME 
,isc.COLUMN_NAME 
,isc.ORDINAL_POSITION
FROM INFORMATION_SCHEMA.COLUMNS AS isc 
INNER JOIN INFORMATION_SCHEMA.TABLES AS ist 
      ON ist.TABLE_NAME = isc.TABLE_NAME 
      AND ist.TABLE_SCHEMA = isc.TABLE_SCHEMA 
      AND TABLE_TYPE = 'BASE TABLE'
      AND isc.TABLE_NAME LIKE '%rechte%'
      
AND COLUMN_NAME LIKE '%Grantee[_]ID'
