------------------------------------------------------
--Compare with only YEAR
------------------------------------------------------

SELECT YEAR(getdate());
SELECT DATEPART(YEAR,GETDATE());

SELECT * FROM TableName WHERE YEAR(EntryDate) = '2022' 
SELECT * FROM TableName WHERE DATEPART(YEAR,EntryDate) = '2022' 

------------------------------------------------------
--Extract the date value only and hide the time value
------------------------------------------------------

--1. Use CONVERT to VARCHAR:

/*
    CONVERT syntax:
    CONVERT ( data_type [ ( length ) ] , expression [ , style ] )
*/

SELECT CONVERT(VARCHAR(10), getdate(), 111);

/*
The style used just now is 111, which is yyyy/mm/dd. There are many other style to choose from. Here are some common types:

Style     	How it’s displayed
 101         	  mm/dd/yyyy
 102         	  yyyy.mm.dd
 103	          dd/mm/yyyy
 104	          dd.mm.yyyy
 105	          dd-mm-yyyy
 110         	  mm-dd-yyyy
 111	          yyyy/mm/dd
 106	          dd mon yyyy
 107         	  Mon dd, yyyy
 */
 
 
-- 2. Convert to Date

SELECT CONVERT(date, getdate());

-- For older version than SQL Server 2008, use this instead:

SELECT DATEADD(dd, 0, DATEDIFF(dd, 0, GETDATE()));


-- 3. Use CAST

-- CAST syntax:
-- CAST ( expression AS data_type [ ( length ) ] )  

SELECT CAST(getdate() AS date);

--Or cast it to varchar:

SELECT CAST(getdate() AS varchar(10));
