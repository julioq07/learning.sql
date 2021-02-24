/* On Strings */

-- The Database used is: world.db 

-- In SQL, a string is represented as a series of characters onclosed in single quote marks
-- Example: 'this is a string in SQL'
-- There is some functions that help us to extract information from the string.Continent

/* LENGTH function */
SELECT LENGTH('string');

-- We can use it in a query like this:
SELECT Name, LENGTH(Name) AS Len FROM City ORDER BY Len DESC, Name;


-- The Database change to: album.db

/* SUBSTR function */
-- This function takes as first argument a string, as second argument an integer which 
-- fix the starting position for the substraction and as third argument another integer
-- whose function is to delimited the lenght of the string substracted. By default is setting
-- the lenght of the string given.
SELECT SUBSTR('this string', 6);
SELECT SUBSTR('this string', 6, 3);

-- We can use it in a query as following.
-- In the case of realesed column fro album table, we have data about the date of the album realesed. 
-- The format is: 'yyyy-mm-dd'
SELECT
    released,
    SUBSTR(released, 1, 4) AS year,
    SUBSTR(released, 6, 2) AS month,
    SUBSTR(released, 9, 2) AS day
    FROM album
    ORDER BY released;


/* TRIM function family */
-- If we are interested in removing spaces from a string, we can use the TRIM functions family 
-- Example: Note the asymetric of '    string   ', i.e. 4 rigth spaces and 3 left spaces
SELECT 
    TRIM('    string   '), LENGTH(TRIM('    string   ')),
    LTRIM(TRIM('    string   ')), LENGTH(LTRIM('    string   ')),
    RTRIM(TRIM('    string   ')), LENGTH(RTRIM('    string   '));

-- The first one remove all the spaces in the string given, however the second and third funtcions 
-- removes only spaces in the left of the string and the right of the string, respectively.
-- The length column is just to check the functions.

-- Moreover, this family could work with removing specific characters from the string given. 
-- Example: 
--   We want to withdraw all the dots ('.') from the right of the input string, so
SELECT RTRIM('...string...', '.');

-- But, we need to be careful, because only remove the character given if this is at the ends of the strings 
-- Work:
SELECT RTRIM('...string..,', ',');
-- Do not work:
SELECT RTRIM('...string..,.', ',');
-- What happend here?
SELECT TRIM('The test was a treat', 't');
SELECT TRIM('the test was a treat', 't');

/* Folding Case function family */
-- This is another family that help us to deal with upper and lower cases in the strings given
-- For example:
SELECT
    LOWER('StRiNg'),
    UPPER('StRiNg');

-- In a query could be as:
SELECT 
    title,
    LOWER(title),
    UPPER(title)
    FROM album;