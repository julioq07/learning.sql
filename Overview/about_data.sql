/* The Database used in this example is: test.db */

SELECT * FROM customer;

/* Inserting Data */
/* The INSERT INTO statement
    Syn: INSERT INTO <table name> (<colums name to insert>) VALUES (<rows values to insert>)
    Examples:
*/
INSERT INTO customer (name, address, city, state, zip)
    VALUES ('Fred F', '123 Street', 'Sim City', 'CA', '09876');
/* Check for insert */
SELECT * FROM customer;

INSERT INTO customer (name, address, city, state, zip)
    VALUES ('Jim F', '456 Street', 'Sim City', 'CA', '09776');
/* Check for insert */
SELECT * FROM customer;

/* We can insert non-complete row data */
INSERT INTO customer (name, city, zip)
    VALUES ('Ben F', 'Sim City', '12098');
/* Check for insert */
SELECT * FROM customer;


/* Updating Data */
/* The UPDATE statement
    Syn: UPDATE <table_name> SET <columns_name> = <new_values> WHERE <id_column> = <id_value>
    Examples:
*/
UPDATE customer SET address = '456 Street EDITED', zip = '00000' WHERE id = 5;
SELECT * FROM customer;

UPDATE customer SET address = NULL, zip = NULL WHERE id = 6;
SELECT * FROM customer;


/* Deleting Data */
/* The DELETE statement
    Syn: DELETE FROM <table_name> WHERE <id_column> = <id_value>
    Examples:
*/

DELETE FROM customer WHERE id = 1;
SELECT * FROM customer;

/* If we want more than one row, we can use the IN statement given
    a row range to delete */
DELETE FROM customer WHERE id IN (4,6);
SELECT * FROM customer;
