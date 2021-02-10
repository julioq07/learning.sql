/* The Database used in this example is: world.db */

/* The SELECT statement 
    Syn: SELECT <columns_name> FROM <table>
    Examples:
*/
SELECT Name FROM Country;
SELECT Name, LifeExpectancy FROM Country;

/* All columns */
SELECT * FROM Country;

/* The ORDERED BY statement 
    Syn: ORDERED BY <column_name>
    Examples:
*/
SELECT Name, LifeExpectancy FROM Country ORDER BY Name;

/* The AS statement 
    Syn: AS <new_column_name>
    Examples:
*/
SELECT Name AS 'Country name' FROM Country; /*compare with the first query*/

/*Example with all the statements*/
SELECT Name, LifeExpectancy as 'Main Factor' FROM Country ORDER BY Name;