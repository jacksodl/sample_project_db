CREATE DATABASE djack_database;
USE djack_database;

## This is a single line comment. Comments are ignored by the code.
/*This is how you do a multi line comment

Remember comments are ignored and used for documenting purposes 

*/
####################************************************###################
## Create salesman table 
CREATE TABLE salesman (
	salesman_id INT,
	name VARCHAR(50),
	city VARCHAR(50),
	commission DECIMAL(5,3),
	PRIMARY KEY(salesman_id)
);

## Insert information into the salesman table
INSERT INTO salesman 
	VALUES (5001, "James Hoog", "New York", 0.15);
INSERT INTO salesman 
	VALUES (5002, "Nail Knite", "Paris", 0.13);
INSERT INTO salesman 
	VALUES (5005, "Pit Alex", "London", 0.11);
INSERT INTO salesman 
	VALUES (5006, "Mc Lyon", "Paris", 0.14);
INSERT INTO salesman 
	VALUES (5007, "Paul Adam", "Rome", 0.13);
INSERT INTO salesman 
	VALUES (5003, "Lauson Hen", "San Jose", 0.12);

## Show current tables
SHOW TABLES;

## Describe the salesman table
DESCRIBE salesman;

## Select everything from the salesman table and order it by salesman id in descending order (High-Low)
SELECT * FROM salesman
ORDER BY salesman_id DESC
;

## ** ## ** ## ** ## ** ## ** ## ** ## ** ## ** ## ** ## ** ## ** ## ** ## ** ## ** ## **
SELECT "This is SQL Exercise, Practice and Solution";

SELECT 5,10,15;

SELECT 10 + 15;

SELECT 2 * (5+10) - 25; ## Should equal 5

SELECT name, commission
FROM djack_database.salesman;


## Create orders table
CREATE TABLE orders (
ord_no INT,
purch_amount DECIMAL (10,2),
ord_date DATE,
customer_id INT,
salesman_id INT,
PRIMARY KEY (ord_no),
## These foreign keys also link to a primary key in another table
FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
FOREIGN KEY (salesman_id) REFERENCES salesman(salesman_id)
);

INSERT INTO orders
	VALUES (70001, 150.5, "2012-10-05", 3005, 5002);
INSERT INTO orders
	VALUES (70009, 270.65, "2012-09-10", 3001, 5005);
INSERT INTO orders
	VALUES (70002, 65.26, "2012-10-05", 3002, 5001);
INSERT INTO orders
	VALUES (70004, 110.5, "2012-08-17", 3009, 5003);
INSERT INTO orders
	VALUES (70007, 948.5, "2012-09-10", 3005, 5002);
INSERT INTO orders
	VALUES (70005, 2400.6, "2012-07-27", 3007, 5001);
INSERT INTO orders
	VALUES (70010, 1983.43, "2012-10-10", 3004, 5006);
INSERT INTO orders
	VALUES (70003, 2480.4, "2012-10-10", 3009, 5003);
INSERT INTO orders
	VALUES (70012, 250.45, "2012-06-27", 3008, 5002);
INSERT INTO orders
	VALUES (70011, 75.29, "2012-08-17", 3003, 5007);
INSERT INTO orders
	VALUES (70013, 3045.6, "2012-04-25", 3002, 5001);
    
SELECT * FROM orders;



CREATE TABLE customer (
customer_id INT,
cust_name VARCHAR(50),
city VARCHAR(50),
grade INT,
salesman_id INT,
PRIMARY KEY (customer_id),
FOREIGN KEY (salesman_id) REFERENCES salesman(salesman_id)
);

INSERT INTO customer
	VALUES (3002, "Nick Rimando", "New York", 100, 5001);
INSERT INTO customer
	VALUES (3007, "Brad Davis", "New York", 200, 5002);
INSERT INTO customer
	VALUES (3005, "Graham Zusi", "California", 200, 5002);
INSERT INTO customer
	VALUES (3008, "Julian Green", "London", 300, 5002);
INSERT INTO customer
	VALUES (3004, "Fabian Johnson", "Paris", 300, 5006);
INSERT INTO customer
	VALUES (3009, "Geoff Cameron", "Berlin", 100, 5003);
INSERT INTO customer
	VALUES (3003, "Jozy Altidor", "Moscow", 200, 5007);
INSERT INTO customer
	VALUES (3001, "Brad Guzan", "London", 100, 5005);
    
SELECT * FROM customer;




## Select only the distinct values
SELECT DISTINCT salesman_id
FROM orders
;

## Select everything where the city is Paris
SELECT *
FROM djack_database.salesman
WHERE city = "Paris"
;

SELECT *
FROM customer
WHERE grade = 200
;

SELECT ord_no, ord_date, purch_amount
FROM orders
WHERE salesman_id = 5001
;



CREATE TABLE nobel_win (
	YEAR YEAR,
    SUBJECT VARCHAR(50),
    WINNER VARCHAR(50),
    COUNTRY VARCHAR(50),
    CATEGORY VARCHAR(50),
    PRIMARY KEY (WINNER)
);

INSERT INTO nobel_win 
	VALUES (1970, "Physics", "Hannes Alfven", "Sweden", "Scientist");
INSERT INTO nobel_win 
	VALUES (1970, "Physics", "Louis Neel", "France", "Scientist");
INSERT INTO nobel_win 
	VALUES (1970, "Chemistry", "Luis Federico Leloir", "France", "Scientist");
INSERT INTO nobel_win 
	VALUES (1970, "Physiology", "Ulf von Euler", "Sweden", "Scientist");
INSERT INTO nobel_win 
	VALUES (1970, "Physiology", "Bernard Katz", "Germany", "Scientist");
INSERT INTO nobel_win 
	VALUES (1970, "Literature", "Aleksandr Solzhenitsyn", "Russia", "Linguist");
INSERT INTO nobel_win 
	VALUES (1970, "Economics", "Paul Samuelson", "USA", "Economist");
INSERT INTO nobel_win 
	VALUES (1970, "Physiology", "Julius Axelrod", "USA", "Scientist");
INSERT INTO nobel_win 
	VALUES (1971, "Physics", "Dennis Gabor", "Hungary", "Scientist");
INSERT INTO nobel_win 
	VALUES (1971, "Chemistry", "Gerhard Herzberg", "Germany", "Scientist");
INSERT INTO nobel_win 
	VALUES (1971, "Peace", "Willy Brandt", "Germany", "Chancellor");
INSERT INTO nobel_win 
	VALUES (1971, "Literature", "Pablo Neruda", "Chile", "Linguist");
INSERT INTO nobel_win 
	VALUES (1971, "Economics", "Simon Kuznets", "Russia", "Economist");
INSERT INTO nobel_win 
	VALUES (1978, "Peace", "Anwar al-Sadat", "Egypt", "President");
INSERT INTO nobel_win 
	VALUES (1978, "Peace", "Menachem Begin", "Israel", "Prime Minister");
INSERT INTO nobel_win 
	VALUES (1987, "Chemistry", "Donald J. Cram", "USA", "Scientist");
INSERT INTO nobel_win 
	VALUES (1987, "Chemistry", "Jean-Marie Lehn", "France", "Scientist");
INSERT INTO nobel_win 
	VALUES (1987, "Physiology", "Susumu Tonegawa", "Japan", "Scientist");
INSERT INTO nobel_win 
	VALUES (1994, "Economics", "Reinhard Selten", "Germany", "Economist");
INSERT INTO nobel_win 
	VALUES (1994, "Peace", "Yitzhak Rabin", "Israel", "Prime Minister");
INSERT INTO nobel_win 
	VALUES (1987, "Physics", "Johannes Georg Bednorz", "Germany", "Scientist");
INSERT INTO nobel_win 
	VALUES (1987, "Literature", "Joseph Brodsky", "Russia", "Linguist");
INSERT INTO nobel_win 
	VALUES (1987, "Economics", "Robert Solow", "USA", "Economist");
INSERT INTO nobel_win 
	VALUES (1994, "Literature", "Kenzaburo Oe", "Japan", "Linguist");

SELECT * FROM nobel_win;

SELECT YEAR, SUBJECT, WINNER
FROM nobel_win 
WHERE YEAR = 1970
;

## Select WINNER column where the subject is Literature AND the year is 1971
SELECT WINNER
FROM nobel_win 
WHERE SUBJECT = "Literature"
AND YEAR = 1971
;

SELECT YEAR
FROM nobel_win 
WHERE WINNER = "Dennis Gabor"
;

## Select WINNER where subject is Physics AND the year is after than 1950
SELECT WINNER
FROM nobel_win 
WHERE SUBJECT = "Physics"
AND YEAR > 1950
;

## Select columns where subject is Chemistry AND the year is BETWEEN 1965 AND 1975
SELECT YEAR, SUBJECT, WINNER, COUNTRY
FROM nobel_win 
WHERE SUBJECT = "Chemistry"
AND YEAR BETWEEN 1965 AND 1975
;

## Select everything where the year is after 1972 and the winner is something in the ( )
SELECT *
FROM nobel_win 
WHERE YEAR > 1972
AND WINNER IN ("Menachem Begin", "Yitzhak Rabin")
;

## Select everything where the winner has "Louis" somewhere in the WINNER column
SELECT YEAR, SUBJECT, WINNER, COUNTRY, CATEGORY
FROM nobel_win 
WHERE WINNER LIKE "%Louis%"
;

### Stacking two tables with matching columns
SELECT YEAR, SUBJECT, WINNER, COUNTRY, CATEGORY
FROM nobel_win 
WHERE (SUBJECT = "Physics" AND YEAR = 1970)
UNION
SELECT YEAR, SUBJECT, WINNER, COUNTRY, CATEGORY
FROM nobel_win 
WHERE (SUBJECT = "Economics" AND YEAR = 1971)
;

## Select everything where the year is 1970 and the subject is not what is in ( )
SELECT YEAR, SUBJECT, WINNER, COUNTRY, CATEGORY
FROM nobel_win 
WHERE YEAR = 1970
AND SUBJECT NOT IN ("Physiology", "Economics")
;

SELECT YEAR, SUBJECT, WINNER, COUNTRY, CATEGORY
FROM nobel_win 
WHERE (SUBJECT = "Physiology" AND YEAR < 1971)
UNION
SELECT YEAR, SUBJECT, WINNER, COUNTRY, CATEGORY
FROM nobel_win 
WHERE (SUBJECT = "Peace" AND YEAR > 1974)
;

SELECT YEAR, SUBJECT, WINNER, COUNTRY, CATEGORY
FROM nobel_win 
WHERE WINNER = "Johannes Georg Bednorz"
;

### Select everything where the subject does not start with P
SELECT YEAR, SUBJECT, WINNER, COUNTRY, CATEGORY
FROM nobel_win 
WHERE SUBJECT NOT LIKE "P%"
;

/* Select everything where the year is 1970 and order it by whats in the ( ) 2nd
and then order everything else before that *
 */
SELECT YEAR, SUBJECT, WINNER, COUNTRY, CATEGORY
FROM nobel_win 
WHERE YEAR = 1970
ORDER BY
	CASE
		WHEN SUBJECT IN ("Economics", "Chemistry") THEN 1
        ELSE 0
    END ASC, SUBJECT, WINNER
;



CREATE TABLE item_mast (
	PRO_ID INT,
    PRO_NAME VARCHAR(50),
    PRO_PRICE DECIMAL(8,2),
    PRO_COM INT,
    PRIMARY KEY (PRO_ID)
)
;

INSERT INTO item_mast 
	VALUES (101, "Mother Board", 3200.00, 15);
INSERT INTO item_mast 
	VALUES (102, "Key Board", 450.00, 16);
INSERT INTO item_mast 
	VALUES (103, "ZIP drive", 250.00, 14);
INSERT INTO item_mast 
	VALUES (104, "Speaker", 550.00, 16);
INSERT INTO item_mast 
	VALUES (105, "Monitor", 5000.00, 11);
INSERT INTO item_mast 
	VALUES (106, "DVD drive", 900.00, 12);
INSERT INTO item_mast 
	VALUES (107, "CD drive", 800.00, 12);
INSERT INTO item_mast 
	VALUES (108, "Printer", 2600.00, 13);
INSERT INTO item_mast 
	VALUES (109, "Refill cartridge", 350.00, 13);
INSERT INTO item_mast 
	VALUES (110, "Mouse", 250.00, 12);
    
SELECT * FROM item_mast;
    
SELECT *
FROM item_mast 
WHERE PRO_PRICE BETWEEN 200 AND 600
;

## Select the average price and round it to 2 decimal places after the decimal
SELECT ROUND(AVG(PRO_PRICE), 2)
FROM item_mast 
WHERE PRO_COM = 16
;


## Select these columns and name them AS what is in " "
SELECT PRO_NAME AS "Item Name", PRO_PRICE AS "Price in Rs"
FROM item_mast 
;

## Select items that have a price of 250 or more and order by what is in order by
SELECT PRO_NAME, PRO_PRICE 
FROM item_mast 
WHERE PRO_PRICE >= 250
ORDER BY PRO_PRICE DESC, PRO_NAME ASC 
;

SELECT ROUND(AVG(PRO_PRICE), 2) AS AVG_PRICE, PRO_COM AS COMPANY
FROM item_mast 
GROUP BY PRO_COM
;

### Select the minimum price and then select items within those results 
SELECT PRO_NAME, PRO_PRICE
FROM item_mast 
WHERE PRO_PRICE = (SELECT MIN(PRO_PRICE) FROM item_mast)
;



CREATE TABLE emp_details (
	EMP_IDNO INT,
    EMP_FNAME VARCHAR(25),
    EMP_LNAME VARCHAR(25),
    EMP_DEPT INT,
    PRIMARY KEY (EMP_IDNO)
)
;

INSERT emp_details 
	VALUES (127323, "Michale", "Robbin", 57);
INSERT emp_details 
	VALUES (526689, "Carlos", "Snares", 63);
INSERT emp_details 
	VALUES (843795, "Enric", "Dosio", 57);
INSERT emp_details 
	VALUES (328717, "Jhon", "Snares", 63);
INSERT emp_details 
	VALUES (444527, "Joseph", "Dosni", 47);
INSERT emp_details 
	VALUES (659831, "Zanifer", "Emily", 47);
INSERT emp_details 
	VALUES (847674, "Kuleswar", "Sitaraman", 57);
INSERT emp_details 
	VALUES (748681, "Henrey", "Gabriel", 47);
INSERT emp_details 
	VALUES (555935, "Alex", "Manuel", 57);
INSERT emp_details 
	VALUES (539569, "George", "Mardy", 27);
INSERT emp_details 
	VALUES (733843, "Mario", "Saule", 63);
INSERT emp_details 
	VALUES (631548, "Alan", "Snappy", 27);
INSERT emp_details 
	VALUES (839139, "Maria", "Foster", 57);
/* We are going to delete this row next.
INSERT emp_details 
	VALUES (10, "Maria", "Foster", 57);
*/

DELETE FROM emp_details WHERE EMP_IDNO = 10;
    
SELECT * 
FROM emp_details
;

## Select employee last names that are distinct. If multiple only select one
SELECT DISTINCT EMP_LNAME
FROM emp_details
;

SELECT EMP_IDNO, EMP_FNAME, EMP_LNAME, EMP_DEPT
FROM emp_details
WHERE EMP_LNAME = "Snares"
;

SELECT EMP_IDNO, EMP_FNAME, EMP_LNAME, EMP_DEPT
FROM emp_details
WHERE EMP_DEPT = 57
;