```
CREATE PROCEDURE ExecuteMyHugeQuery
    @SQL VARCHAR(MAX) -- 2GB size limit as stated by Martin Smith
AS
BEGIN
    -- Now, if the length is greater than some arbitrary value
    -- Let's say 2000 for this example
    -- Let's chunk it
    -- Let's also assume we won't allow anything larger than 8000 total
    DECLARE @len INT
    SELECT @len = LEN(@SQL)

    IF (@len > 8000)
    BEGIN
        RAISERROR ('The query cannot be larger than 8000 characters total.',
                   16,
                   1);
    END

    -- Let's declare our possible chunks
    DECLARE @Chunk1 VARCHAR(2000),
            @Chunk2 VARCHAR(2000),
            @Chunk3 VARCHAR(2000),
            @Chunk4 VARCHAR(2000)

    SELECT @Chunk1 = '',
           @Chunk2 = '',
           @Chunk3 = '',
           @Chunk4 = ''

    IF (@len > 2000)
    BEGIN
        -- Let's set the right chunks
        -- We already know we need two chunks so let's set the first
        SELECT @Chunk1 = SUBSTRING(@SQL, 1, 2000)

        -- Let's see if we need three chunks
        IF (@len > 4000)
        BEGIN
            SELECT @Chunk2 = SUBSTRING(@SQL, 2001, 2000)

            -- Let's see if we need four chunks
            IF (@len > 6000)
            BEGIN
                SELECT @Chunk3 = SUBSTRING(@SQL, 4001, 2000)
                SELECT @Chunk4 = SUBSTRING(@SQL, 6001, (@len - 6001))
            END
              ELSE
            BEGIN
                SELECT @Chunk3 = SUBSTRING(@SQL, 4001, (@len - 4001))
            END
        END
          ELSE
        BEGIN
            SELECT @Chunk2 = SUBSTRING(@SQL, 2001, (@len - 2001))
        END
    END

    -- Alright, now that we've broken it down, let's execute it
    --EXEC (@Chunk1 + @Chunk2 + @Chunk3 + @Chunk4)
	print @Chunk1;
	print @Chunk2;
	print @Chunk3;

END
```

![Ref:](https://stackoverflow.com/questions/12639948/sql-nvarchar-and-varchar-limits)