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


/* --- Removing duplicates --- */

/* The DISTINCT statement */
SELECT DISTINCT Continent FROM Country;

-- Examples:

-- Changing to test.db 
DROP TABLE IF EXISTS test;
CREATE TABLE test (a int, b int);
INSERT INTO test VALUES (1, 1);
INSERT INTO test VALUES (2, 1);
INSERT INTO test VALUES (3, 1);
INSERT INTO test VALUES (4, 1);
INSERT INTO test VALUES (5, 1);
INSERT INTO test VALUES (1, 2);
INSERT INTO test VALUES (1, 2);
INSERT INTO test VALUES (1, 2);
INSERT INTO test VALUES (1, 2);
SELECT * FROM test;

SELECT DISTINCT a FROM test;
SELECT DISTINCT b FROM test;
SELECT DISTINCT a, b FROM test;

/* ORDER BY examples */

SELECT Name FROM Country;
SELECT Name FROM Country ORDER BY Name;
SELECT Name FROM Country ORDER BY Name DESC;
SELECT Name FROM Country ORDER BY Name ASC;
SELECT Name, Continent FROM Country ORDER BY Continent, Name;
SELECT Name, Continent, Region FROM Country ORDER BY Continent DESC, Region, Name;


/* --- Conditional expressions --- */
DROP TABLE IF EXISTS booltest;
CREATE TABLE booltest (a INTEGER, b INTEGER);
INSERT INTO booltest VALUES (1, 0);
SELECT * FROM booltest;

-- The CASE statement --
-- Syn: CASE <column> WHEN <condition> THEN <result>  ELSE <else result> END
SELECT
    CASE WHEN a THEN 'true' ELSE 'false' END AS boolA,
    CASE WHEN b THEN 'true' ELSE 'false' END AS boolB
    FROM booltest;

SELECT
    CASE a WHEN 0 THEN 'true' ELSE 'false' END AS boolA,
    CASE b WHEN 1 THEN 'true' ELSE 'false' END AS boolB
    FROM booltest;