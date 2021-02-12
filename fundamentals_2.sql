/* The Database used is: world.db */

/* --- Filtering data --- */

/* Using WHERE */
SELECT Name, Continent, Population FROM Country
    WHERE (Population < 100000 OR Population IS NULL) 
    ORDER BY Population DESC;

SELECT Name, Continent, Population FROM Country
    WHERE Population < 100000 AND Continent = 'Oceania' 
    ORDER BY Population DESC;


/* Using LIKE */
/* The  '%<caracters>' means 'take strings with caracters before <caracters>' */
SELECT Name, Continent, Population FROM Country
    WHERE Name LIKE '%island';

/* The  '<caracters>%' means 'take strings with caracters after <caracters>' */
SELECT Name, Continent, Population FROM Country
    WHERE Name LIKE 'island%';

/* The joining is */
SELECT Name, Continent, Population FROM Country
    WHERE Name LIKE '%island%';


/* Using IN */
SELECT Name, Continent, Population FROM Country
    WHERE Continent IN ('Europe', 'Asia') ORDER BY Name;