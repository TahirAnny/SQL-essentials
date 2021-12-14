-- =============================================

-- CHARINDEX() - searches for a substring in a string, and returns the position.
-- If the substring is not found, this function returns 0.
-- Syntax : CHARINDEX(substring, string, start)

-- SUBSTRING() - extracts some characters from a string.
-- Syntax : SUBSTRING(string, start, length)

-- STRING_SPLIT - table-valued function that splits a string into a table that consists of rows of substrings based on a specified separator.
-- syntax : STRING_SPLIT ( input_string , separator )  

-- =============================================

SELECT SUBSTRING('GitHub', 1, 3) AS ExtractString;
SELECT Value FROM STRING_SPLIT('apple, banana, pine apple',',');

-- =============================================
-- Split Column Name  
-- =============================================

declare @Student table (
	id int, 
	FirstName  varchar(50),
	LastName varchar(50)
)

insert into @Student (id,FirstName) values( 1, 'Giff')
insert into @Student (id,FirstName) values( 2, 'Batel Tow')
insert into @Student (id,FirstName) values( 3, 'Hairey Style')
insert into @Student (id,FirstName) values( 4, 'Tailor Swift')
insert into @Student (id,FirstName) values( 5, 'Ariana Grande')

select 
    case when CHARINDEX(' ',FirstName) > 0 
         then SUBSTRING(FirstName, 1, CHARINDEX(' ',FirstName)-1) 
         else FirstName end Firstname, 
    CASE WHEN CHARINDEX(' ',FirstName) > 0 
         THEN SUBSTRING(FirstName, CHARINDEX(' ',FirstName)+1, len(FirstName))  
         ELSE LastName END as Lastname
from @Student

-- =============================================
-- Split Column Name and Update Column Value
-- =============================================
-- Uncomment for USE

--Update Student set 
--	FirstName = 
--		case when CHARINDEX(' ',FirstName)>0 
--			 then SUBSTRING(FirstName,1,CHARINDEX(' ',FirstName)-1) 
--			 else FirstName end, 
--	LastName =  
--		CASE WHEN CHARINDEX(' ',FirstName)>0 
--			 THEN SUBSTRING(FirstName,CHARINDEX(' ',FirstName)+1,len(FirstName))  
--			 ELSE NULL END 
--from Student