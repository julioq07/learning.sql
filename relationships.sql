/* Understanding JOIN */

-- The Database used is: test.db 

/* Some overview of join statement here */

-- join example tables, left and right
CREATE TABLE left ( id INTEGER, description TEXT );
CREATE TABLE right ( id INTEGER, description TEXT );

INSERT INTO left VALUES ( 1, 'left 01' );
INSERT INTO left VALUES ( 2, 'left 02' );
INSERT INTO left VALUES ( 3, 'left 03' );
INSERT INTO left VALUES ( 4, 'left 04' );
INSERT INTO left VALUES ( 5, 'left 05' );
INSERT INTO left VALUES ( 6, 'left 06' );
INSERT INTO left VALUES ( 7, 'left 07' );
INSERT INTO left VALUES ( 8, 'left 08' );
INSERT INTO left VALUES ( 9, 'left 09' );

INSERT INTO right VALUES ( 6, 'right 06' );
INSERT INTO right VALUES ( 7, 'right 07' );
INSERT INTO right VALUES ( 8, 'right 08' );
INSERT INTO right VALUES ( 9, 'right 09' );
INSERT INTO right VALUES ( 10, 'right 10' );
INSERT INTO right VALUES ( 11, 'right 11' );
INSERT INTO right VALUES ( 11, 'right 12' );
INSERT INTO right VALUES ( 11, 'right 13' );
INSERT INTO right VALUES ( 11, 'right 14' );

SELECT * FROM left;
SELECT * FROM right;

-- What does the code do?
-- Take the description column from the left table and joined with the 
-- description column from the right table by the column id on both tables

-- Trick: We select the column description from the left table using the 
-- syntaxis: <table>.<column>
SELECT l.description AS left, r.description AS right 
    FROM left AS l
    JOIN right AS r ON l.id = r.id;

-- Using LEFT JOIN 
SELECT l.description AS left, r.description AS right
    FROM left AS l
    LEFT JOIN right AS r on l.id = r.id;

-- We can change the differences of taking the right table as the main 
-- table of the joining
SELECT l.description AS left, r.description AS right
    FROM right AS r
    LEFT JOIN left AS l on l.id = r.id;

-- More than that, we can change the order of the columns in the result table
-- without change the logic statement of the join clause
SELECT r.description AS right, l.description AS left
    FROM right AS r
    LEFT JOIN left AS l on l.id = r.id;


-- Another example
SELECT s.id AS sale, i.name, s.price 
    FROM sale AS s
    JOIN item AS i ON s.item_id = i.id;

SELECT s.id AS sale, s.date, i.name, i.description, s.price 
    FROM sale AS s
    JOIN item AS i ON s.item_id = i.id;


-- Junction Table

-- Searching for customer with sales
SELECT c.name AS Cust, c.zip, i.name AS Item, i.description, s.quantity AS Quan, s.price AS Price
    FROM sale AS s
    JOIN item AS i ON s.item_id = i.id
    JOIN customer AS c ON s.customer_id = c.id
    ORDER BY Cust, Item;

-- Adding a customer without sales
INSERT INTO customer ( name ) VALUES ( 'Jane Smith' );
SELECT * FROM customer;

-- Left join for searching customer without sales
SELECT c.name AS Cust, c.zip, i.name AS Item, i.description, s.quantity AS Quan, s.price AS Price
    FROM customer AS c
    LEFT JOIN sale AS s ON s.customer_id = c.id
    LEFT JOIN item AS i ON s.item_id = i.id
    ORDER BY Cust, Item;