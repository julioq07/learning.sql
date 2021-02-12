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


/* Deleting rows */
/* The DELETE statement
    Syn: 
        DELETE FROM <table name> WHERE <condition>
    Examples:
*/
DELETE FROM test WHERE One = 2;


/* NULL values */
/* Examples:*/

/* We see that this query doesn't return anything. */
SELECT * FROM test WHERE One = NULL; 
/* This is because NULL is no a value */

/* Now, for this case, we need to use the IS statement */
SELECT * FROM test WHERE One IS NULL;

SELECT * FROM test WHERE One IS NOT NULL;

/* Another use is to specify the type of data allowed for a column */
CREATE TABLE null_test (
    a INTEGER NOT NULL,
    b TEXT NOT NULL,
    c TEXT
);
/* We add not null values */
INSERT INTO null_test VALUES (1, 'one', '1');

/* We can't add null values. We get an error */
INSERT INTO null_test (b, c) VALUES ('two', '2');

INSERT INTO null_test (a, b) VALUES (2, 'two');
DROP TABLE IF EXISTS null_test;

/* --- Constrains columns --- */

/* The DEFAULT statement */
DROP TABLE IF EXISTS test;
CREATE TABLE test (
    id INTEGER,
    name TEXT NOT NULL,
    value INTEGER DEFAULT 0
);
/* In this example, we constrain the values for column 'name' and 'valu'
    to be a not null value and a default value as 0, respectively */
/* So, this  query doesnt' work */
INSERT INTO test (id, value) VALUES (1, 1);
/* But the following does */
INSERT INTO test (name) VALUES ('Python');

/* The UNIQUE statement */
DROP TABLE IF EXISTS test;
CREATE TABLE test (
    id INTEGER UNIQUE,
    name TEXT NOT NULL,
    value INTEGER DEFAULT 0
);
INSERT INTO test (id, name, value) VALUES (1, 'one', 1);

/* So, this  query will fail */
INSERT INTO test (id, name, value) VALUES (1, 'two', 2);
/* But the following doesn't */
INSERT INTO test (id, name, value) VALUES (2, 'two', 2);

/* Interestingly, we can check that with NULL the query works */
INSERT INTO test (name) VALUES ('null');
INSERT INTO test (name) VALUES ('null');
/* This is because NULL is not a value, so UNIQUE only works with values */

DROP TABLE IF EXISTS test;
CREATE TABLE test (
    id INTEGER,
    name TEXT,
    value INTEGER
);
INSERT INTO test (id, name, value) VALUES (1, 'one', 1);
INSERT INTO test (id, name, value) VALUES (2, 'two', 2);
INSERT INTO test (id, name, value) VALUES (3, 'three', 3);


/* The ALTER statement */

/* We can add columns */
ALTER TABLE test ADD another_value INTEGER;

/* We can add contrain columns */
ALTER TABLE test ADD another_name TEXT DEFAULT 'another name';


/* --- ID columns --- */

/* The PRIMARY KEY condition */
/* IMPORTANT: This sintax only works on SQLite databases */
DROP TABLE IF EXISTS test;
CREATE TABLE test (
    id INTEGER PRIMARY KEY,
    name TEXT,
    value INTEGER
);
INSERT INTO test (name, value) VALUES ('one', 1);
INSERT INTO test (name, value) VALUES ('two', 2);
INSERT INTO test (name, value) VALUES ('three', 3);