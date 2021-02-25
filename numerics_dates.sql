/* On Numeric types */

-- The Database used is: world.db 

-- There is two basic categories of numeric types: Integer and Real
-- And could be represented  as: 
-- INTEGER(precision)
-- DECIMAL(precision, scale)
-- MONEY(precision, scale)

-- TYPEOF function
-- This help us to discover the type of the input given

-- integer
SELECT TYPEOF(1+1);

-- real
SELECT TYPEOF(1+1.0);

-- text
SELECT TYPEOF('string');

-- integer: because the '+' sign is for integer type
SELECT TYPEOF('string'+'1');


-- Another thing to be considered is the way that SQL perform divisions
-- For example:
SELECT 
    '5/2' AS Operation,
    5/2 AS Integer, 
    5.0/2 AS Real, 
    CAST(5 AS REAL)/2 AS Real_CAST, 
    5%2 AS Residue;
-- In the first case, we are taking two integer types and the result is the integer part of the division. 
-- But, if we set the type of one of the values as a real, then the division result is a real. 


-- The ROUND function
-- This functions take a numeric value as first parameter and a number of precision digits as second parameter. 
SELECT 
    2.55556, 
    ROUND(2.55556),
    ROUND(2.55556, 2),
    ROUND(2.55556, 0);


/* Date types */

-- The datetime type is represented by the UTC timezone. 
-- The format is: yyyy-mm-dd hh:mm:ss
SELECT 
    DATETIME('now'),
    DATE('now'),
    TIME('now');

SELECT
    DATETIME('now', '+1 day'),
    DATETIME('now', '-3 days'),
    DATETIME('now', '-1 month'),
    DATETIME('now', '+5 years'),
    DATETIME('now', '+5 hours', '-35 minutes', '-2 days', '+4 years');
    