-- Ecommerce product inventory management 60 tasks 
-- Name -Janvi Shingade 

-- PART A - database and table creation 
-- TASK1
CREATE DATABASE ecommerce_db;
-- TASK2 
USE ecommerce_db;
-- TASK3
CREATE TABLE product (
product_id INT PRIMARY KEY ,
product_name VARCHAR (100) ,
Category VARCHAR (50),
brand VARCHAR (50),
Price DECIMAL (10,2),
quantity INT ,
city VARCHAR (50),
status VARCHAR (20)
);

-- TASK4
DESC products;

-- TASK5
SHOW TABLES;

-- PART B - INSERT OPERATIONS 

-- TASK6
INSERT INTO products VALUES (201, 'Galaxy M55', 'Mobile', 'Samsung', 32000, 15, 'Pune', 'Available');

-- TASK7
INSERT INTO products VALUES (202, 'iPhone 15', 'Mobile', 'Apple', 65000, 8, 'Mumbai', 'Available');
 
-- TASK8
INSERT INTO products VALUES (203, 'Moto Edge 50', 'Mobile', 'Motorola', 28000, 20, 'Pune', 'Available');

-- TASK9
INSERT INTO products VALUES (204, 'Inspiron 15', 'Laptop', 'Dell', 58000, 6, 'Nashik', 'Available');

-- TASK10
INSERT INTO products VALUES (205, 'IdeaPad Slim 3', 'Laptop', 'Lenovo', 45000, 12, 'Mumbai', 'Available');

-- TASK11
INSERT INTO products VALUES (206, 'Galaxy Watch 6', 'Watch', 'Samsung', 22000, 4, 'Pune', 'Out of Stock');

-- TASK12
INSERT INTO products VALUES (207, 'Apple Watch SE', 'Watch', 'Apple', 30000, 10, 'Mumbai', 'Available');

-- TASK13
INSERT INTO products VALUES (208, 'Redmi Pad', 'Tablet', 'Xiaomi', 24000, 18, 'Pune', 'Available');

-- TASK14
INSERT INTO products VALUES (209, 'OnePlus Pad', 'Tablet', 'OnePlus', 35000, 5, 'Nashik', 'Available');

-- TASK15
INSERT INTO products VALUES (210, 'Bluetooth Speaker', 'Accessories', 'JBL', 7000, 25, 'Mumbai', 'Available');

-- PARTC - Basic SELECT & Operator Practice 
-- TASK16
SELECT * FROM products;

-- TASK17
SELECT product_name FROM products;

-- TASK18
SELECT product_name , price FROM products;

-- TASK19
SELECT product_name ,category,brand,price FROM products;

-- TASK20
SELECT * FROM productS WHERE city = 'pune';

-- TASK21
SELECT * FROM productS WHERE city = 'Mumbai';

-- TASK22
SELECT * FROM product WHERE category = 'MObile';

-- TASK23
SELECT * FROM product WHERE category = 'Laptop';

-- TASK24
SELECT * FROM product WHERE price > 30000;

-- TASK25
SELECT * FROM product WHERE price < 30000;

-- TASK26
SELECT * FROM product WHERE price = 35000;

-- TASK27
SELECT * FROM product WHERE price  >= 45000;

-- TASK28
SELECT * FROM product WHERE price  <= 30000;

-- TASK29
SELECT * FROM product WHERE quantity >10;

-- TASK30
SELECT * FROM product WHERE quantity <10;

-- PARTD -LOGICAL OPERATIONS

-- TASK31 
SELECT * FROM products WHERE city='pune' AND category ='mobile';

-- TASK32
SELECT * FROM products WHERE city='Mumbai' AND status ='Available ';

-- TASK33
SELECT * FROM products WHERE price > 30000 AND quantity >5;

-- TASK34
SELECT * FROM products WHERE price >=30000 AND price<=60000;

-- TASK35
SELECT * FROM products WHERE city ='pune' OR city='mumbai';

-- TASK36
SELECT * FROM products WHERE category = 'Mobile' OR category = 'Laptop';

-- TASK37
SELECT * FROM products WHERE quantity < 10 OR price > 50000;

-- TASK38
SELECT * FROM products WHERE category = 'Mobile' AND price > 30000;

-- TASK39
SELECT * FROM products WHERE brand = 'Samsung' OR brand = 'Apple';

-- TASK40
SELECT * FROM products WHERE city = 'Pune' AND status = 'Available' AND quantity > 10;

-- PARTE-SLIGHTLY HIGHER OPERATOR LOGIC 
-- TASK41
SELECT * FROM products WHERE price BETWEEN 25000 AND 50000;

-- TASK42
SELECT * FROM products WHERE quantity BETWEEN 5 AND 15;

-- TASK43
SELECT * FROM products WHERE category IN ('Mobile', 'Laptop', 'Tablet');

-- TASK44
SELECT * FROM products WHERE city IN ('Pune', 'Mumbai');

-- TASK45
SELECT * FROM products WHERE brand NOT IN ('Samsung');

-- TASK46
SELECT * FROM products WHERE status NOT IN ('Out of Stock');

-- TASK47
SELECT * FROM products WHERE price <> 30000;

-- TASK48
SELECT * FROM products WHERE product_name LIKE 'Galaxy%';

-- TASK49
SELECT * FROM products WHERE product_name LIKE '%Pad%';

-- TASK50
SELECT * FROM products WHERE category = 'Mobile' AND (price > 30000 OR quantity > 15);

-- PARTE-F UPDATE OPERATIONS 
-- TASK51
UPDATE products SET price = 34000 WHERE product_name = 'Galaxy M55';

-- TASK52
UPDATE products SET quantity = 12 WHERE product_name = 'iPhone 15';

-- TASK53
UPDATE products SET status = 'Available' WHERE product_name = 'Galaxy Watch 6';

-- TASK54
UPDATE products SET price = price + 2000 WHERE category = 'Mobile';

-- TASK55
UPDATE products SET quantity = quantity + 5 WHERE city = 'Pune';

-- TASK56
UPDATE products SET status = 'Out of Stock' WHERE quantity < 5;

-- PARTG-DELETE OPERATIONS
-- TASK57
DELETE FROM products WHERE product_id = 210;

-- TASK58
DELETE FROM products WHERE price < 8000;

-- TASK59
DELETE FROM products WHERE status = 'Out of Stock' AND quantity < 5;

-- TASK60
DELETE FROM products WHERE category = 'Tablet' AND price > 30000;















