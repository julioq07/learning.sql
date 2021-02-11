/* The Database used in this example is: world.db */

/* The WHERE statement
    Syn: (...) WHERE <some logical statement on columns>
    Examples: 
*/
SELECT Name, Continent, Region FROM Country WHERE Continent = 'Europe';

/* We can combine with another statements, like ORDERED BY */
SELECT Name, Continent, Region FROM Country WHERE Continent = 'South America' ORDER BY Region;

/* The LIMIT statement
    Syn: (...) LIMIT <rows number limit>
    Examples:
*/
SELECT Name, Continent, Region FROM Country ORDER BY Name LIMIT 5;

/* The OFFSET statement
    Syn: (...) LIMIT <limit> OFFSET <start limit number>
    Examples:
*/
SELECT Name, Continent, Region FROM Country ORDER BY Name LIMIT 5 OFFSET 2;
/* In this case, we can see that the table start with 'Algeria', the 3rd row
    in the table above
*/

/* The COUNT statement
    Syn: SELECT COUNT (<>) (...)
    Examples:
*/
/* Count all the rows (*) in the table */
SELECT COUNT(*) FROM Country;

/* We can limit the count with a simple WHERE*/
SELECT COUNT(*) FROM Country WHERE Population > 1000000;

/* Or with the AND statement*/
SELECT COUNT(*) FROM Country WHERE (Population > 1000000 AND Continent = 'South America');

/* Now, we can specify the counting fro a given column in the table. 
    Note that in this case, the result is diferent because it count 
    only the rows where is data
*/
SELECT COUNT(LifeExpectancy) FROM Country;