#### Cause:

This happens when DataLength is shorter than field length. 

For example, We have a table like below: 

      CREATE TABLE dbo.CoolPeople(PersonName VARCHAR(20), PrimaryCar VARCHAR(20));
      GO
      INSERT INTO dbo.CoolPeople(PersonName, PrimaryCar)
      VALUES ('Baby', '2006 Subaru Impreza WRX GD');
      GO
      
Baby’s car is longer than 20 characters, so when the insert statement runs, we get an error:

      Transact-SQL
      Msg 8152, Level 16, State 30, Line 5
      String or binary data would be truncated.
      The statement has been terminated.
      
#### Solution:
 
If you’re on **SQL Server 2019+**, here’s how to fix it.

Run this in the database where you want specific truncation warnings, and it takes effect right away:

    ALTER DATABASE SCOPED CONFIGURATION 
    SET VERBOSE_TRUNCATION_WARNINGS = ON;
    
Another way you could fix it is to upgrade your database’s compatibility level to 2019+ (150+), 
but that causes a whole bunch of other things to take effect too, like adaptive memory grants, 
and it’s going to require a whole lot more testing with your code. 
Just keep it simple for now and run the above if all you’re trying to do is know which column & row is being truncated.

If you’re on **SQL Server 2016-2017:**
to fix it, turn on trace flag 460.

    INSERT INTO dbo.CoolPeople(PersonName, PrimaryCar)
    VALUES ('Baby', '2006 Subaru Impreza WRX GD')
    OPTION (QUERYTRACEON 460);
    GO
    
And now when the query runs, it shows you which column is getting clipped, and which row, too. 
In our case, we’ve only got one row – but in your real-life data, you’ll be much happier knowing which row’s triggering the error:

    Transact-SQL
    Msg 2628, Level 16, State 1, Line 9
    String or binary data would be truncated in 
    table 'StackOverflow2013.dbo.CoolPeople', column 'PrimaryCar'. 
    Truncated value: '2006 Subaru Impreza '.
    
Reference: [How to fix the error “String or binary data would be truncated”](https://www.brentozar.com/archive/2019/03/how-to-fix-the-error-string-or-binary-data-would-be-truncated/)
