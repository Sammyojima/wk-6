-- Get firstName, lastName, email, and officeCode of all employees.
-- Use INNER JOIN between employees and offices on officeCode.
-- Q1: Employees with their office information
SELECT e.firstName, 
       e.lastName, 
       e.email, 
       o.officeCode
FROM employees e
INNER JOIN offices o 
    ON e.officeCode = o.officeCode;


-- Get productName, productVendor, and productLine.
-- Use LEFT JOIN between products and productlines.
-- Q2: Products with their product line details
SELECT p.productName, 
       p.productVendor, 
       pl.productLine
FROM products p
LEFT JOIN productlines pl 
    ON p.productLine = pl.productLine;


-- Get orderDate, shippedDate, status, and customerNumber for the first 10 orders.
-- Use RIGHT JOIN between customers and orders.
-- Q3: First 10 orders with customer information
SELECT o.orderDate, 
       o.shippedDate, 
       o.status, 
       o.customerNumber
FROM customers c
RIGHT JOIN orders o 
    ON c.customerNumber = o.customerNumber
LIMIT 10;
