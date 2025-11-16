-- Question 1: Total payment amount for each payment date (latest 5 dates)
SELECT paymentDate, SUM(amount) AS totalAmount
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;

-- Question 2: Average credit limit for each customer
SELECT customerName, country, AVG(creditLimit) AS averageCreditLimit
FROM customers
GROUP BY customerName, country;

-- Question 3: Total price of products ordered
SELECT productCode,
       quantityOrdered,
       (quantityOrdered * priceEach) AS totalPrice
FROM orderdetails
GROUP BY productCode, quantityOrdered, priceEach;

-- Question 4: Highest payment amount for each check number
SELECT checkNumber, MAX(amount) AS highestAmount
FROM payments
GROUP BY checkNumber;
