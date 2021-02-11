/* The Database used in this example is: test.db */

/* Creating a table */
/* The CREATE TABLE statement
    Syn: 
        CREATE TABLE <table_name> (<column_name> <column_type>)
    Examples:
*/
CREATE TABLE test (
    One INTEGER,
    Two TEXT,
    Three TEXT
    );

INSERT INTO test VALUES (1, 'A', 'a');
INSERT INTO test VALUES (2, 'B', 'b');
INSERT INTO test VALUES (3, 'C', 'c');

SELECT * FROM test;


/* Deleting a table */
/* The DROP TABLE statement
    Syn: 
        DROP TABLE <table_name>
    Examples:
*/

DROP TABLE test;

DROP TABLE IF EXISTS test;


/* Inserting rows */
/* The INSERT INTO statement
    Syn: 
        INSERT INTO <table name> (<colums name to insert>) VALUES (<rows values to insert>)
    Examples:
*/
INSERT INTO test (Two, Three) VALUES ('D', 'd');

/* We can add values to all the columns */
INSERT INTO test VALUES (5, 'E', 'e');

/* We can add a row with no data at all */
INSERT INTO test DEFAULT VALUES;

/* We can add rows from the result of another query */
INSERT INTO test (One, Two, Three) SELECT id, name, description FROM item;