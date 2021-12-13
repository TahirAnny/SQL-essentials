DECLARE @Search varchar(255)='Student'
DECLARE @ObjType varchar(255)=''



SELECT DISTINCT o.name AS Object_Name,o.type_desc,m.definition 
FROM sys.sql_modules        m 
INNER JOIN sys.objects  o ON m.object_id=o.object_id
WHERE m.definition Like '%'+@Search+'%'
	AND ( @ObjType='' OR o.type_desc=@ObjType)
ORDER BY 2,1