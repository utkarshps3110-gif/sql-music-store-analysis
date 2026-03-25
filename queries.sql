-- 1. Customer List
SELECT firstname, lastname, country
FROM customer;

-- 2. Customers from USA
SELECT firstname, lastname
FROM customer
WHERE country = 'USA';

-- 3. Total Sales by Country
SELECT billingcountry,
SUM(total) AS total_sales
FROM invoice
GROUP BY billingcountry
ORDER BY total_sales DESC;

-- 4. Order Categories
SELECT invoiceid,
total,
CASE
WHEN total >= 15 THEN 'High Value'
WHEN total >= 5 THEN 'Medium Value'
ELSE 'Low Value'
END AS order_category
FROM invoice;
