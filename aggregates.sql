-- The Database used is: world.db 

/* On Aggregates */

-- The COUNT function
-- This function counts rows by columns 
SELECT COUNT(*) FROM Country;

-- We can use the GROUP BY statement to count only the rows by groups formed in the column given
SELECT Region, Count(*)
    FROM Country
    GROUP BY Region;

-- If we want this result ordered by the number of countries and dealing with ties by region name, we do
SELECT Region, Count(*) AS Country_number
    FROM Country
    GROUP BY Region
    ORDER BY Country_number DESC, Region;


-- The Database used is: album.db 

-- For example: if we want to know how many tracks each album has, dealing with ties by album name, then
SELECT 
    a.title AS Album,
    COUNT(t.track_number) AS Tracks
    FROM track AS t
    JOIN album AS a 
        ON a.id = t.album_id
    GROUP BY a.id
    ORDER BY Tracks DESC, Album;

-- But if we want to count only albums with 10 or more tracks, we have to use the HAVING statement because we've used the GROUP BY aggregate, thus
SELECT 
    a.title AS Album,
    COUNT(t.track_number) AS Tracks
    FROM track AS t
    JOIN album AS a 
        ON a.id = t.album_id
    GROUP BY a.id
    HAVING Tracks >= 10
    ORDER BY Tracks DESC, Album;

-- Now, we can add another condition to our query. Maybe we just wanted count the albums by The Beatles, so we need te WHERE statement, and then
SELECT 
    a.title AS Album,
    COUNT(t.track_number) AS Tracks
    FROM track AS t
    JOIN album AS a 
        ON a.id = t.album_id
    WHERE a.artist = 'The Beatles'
    GROUP BY a.id
    HAVING Tracks >= 10
    ORDER BY Tracks DESC, Album;

-- We must understand from this little exercise that the WHERE statement is for non-aggregated data and the GROUP BY is for aggregated data, is 
-- for this reason that we must to call the WEHERE before the GROUP BY. 


-- The Database used is: world.db

/* Aggregate functions */

-- Some examples using aggregate functions

SELECT COUNT(*) FROM Country;

SELECT COUNT(Population) FROM Country;

SELECT AVG(Population) FROM Country;

SELECT 
    Region, 
    AVG(Population) 
    FROM Country 
    GROUP BY Region;

SELECT 
    Region, 
    MIN(Population), 
    MAX(Population) 
    FROM Country 
    GROUP BY Region;

SELECT 
    Region, 
    SUM(Population) 
    FROM Country 
    GROUP BY Region;

SELECT 
    Region, 
    COUNT(Population) 
    FROM Country 
    GROUP BY Region;

