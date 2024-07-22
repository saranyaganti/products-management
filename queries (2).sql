CREATE TABLE Product (
    Product_id INT AUTO_INCREMENT PRIMARY KEY,
    Product_name VARCHAR(50),
    Price INT,
    Quantity INT,
    DOP DATE,
    Profit INT,
    Discount INT
);

INSERT INTO Product (Product_name, Price, Quantity, DOP, Profit, Discount)
VALUES ("Keyboard", 730, 15, "2020-07-19", 20, 10),
("Mouse", 550, 20, "2019-06-20", 15, 5),
("RAM", 2250, 11, "2017-05-14", 10, 5),
("Monitor", 4500, 25, "2018-05-03", 18, 8),
("CPU", 5000, 10, "2019-06-06", NULL, 10);

SELECT * from Product;

-- 1. Display details of all products
SELECT * from Product;

-- 2. Display Product id, Product name, and DOP of all products.
SELECT Product_id, Product_name, DOP from Product;

-- 3. Display details of all products whose Price is less than 3000.
SELECT * from Product 
WHERE Price < 3000;

-- 4. Display details of all products whose DOP(Date of Purchase) is before 2019-01-01.
SELECT * from Product
WHERE DOP < "2019-01-01";

-- 5. Display the Profit and Discount of products whose DOP is after 2018-06-25.
SELECT Product_name, Profit, Discount from Product
WHERE DOP > 2018-06-25;

-- 6. Display the detail of all products whose Profit is NULL.
SELECT * from Product 
WHERE Profit is NULL;

-- 7. Display the Product id and Product Name of all products whose Profit is not NULL
SELECT Product_id, Product_name from Product
WHERE Profit is not NULL;

-- 8. Display the price of various products. A price should appear only once.
SELECT Product_name, Price from Product;

-- 9. Display the detail of all products whose Profit is more than 10 
-- and Discount is less than 15

SELECT * from product
WHERE Profit > 10 
AND Discount < 15;

