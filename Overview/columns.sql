/* The Database used in this example is: world.db */

/* Select all columns */
SELECT * FROM Country;

/* Select some columns */
SELECT Name, Continent, Population FROM Country;

/* Select columns and given it an alis */
SELECT Name AS 'Country', Continent, Population FROM Country;

/* Select columns in a given order */
SELECT Continent, Name AS 'Country', Population FROM Country;