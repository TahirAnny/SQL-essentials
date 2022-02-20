--Compare with only YEAR
SELECT YEAR(getdate());
SELECT DATEPART(YEAR,GETDATE());

SELECT * FROM TableName WHERE YEAR(EntryDate) = '2022' 
SELECT * FROM TableName WHERE DATEPART(YEAR,EntryDate) = '2022' 
