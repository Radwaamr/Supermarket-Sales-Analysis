--Data Entry in SQL
--Add the 5 new rows
INSERT INTO supermarket_sales(
invoice_id,branch,city,customer_type,gender,product_line,unit_price,quantity,tax_5,total,date,time,payment,cogs,gross_margin_percent,gross_income,rating
)
VALUES
('101-11-0001','A','Yangon','Member','Male','Health & Beauty',12.50,3,1.88,39.38,'2025-02-02','10:30','Credit Card',37.50,4.76,1.88,8.2),
('101-11-0002', 'B', 'Mandalay', 'Normal', 'Female', 'Electronic Access.', 99.99, 1, 5.00, 104.99, '2025-02-02', '15:15', 'Cash', 99.99, 4.76, 5.00, 9.0),
('101-11-0003', 'C', 'Naypyitaw', 'Normal', 'Male', 'Food & Beverages', 5.50, 10, 2.75, 57.75, '2025-02-03', '12:00', 'Ewallet', 55.00, 4.76, 2.75, 7.5),
('101-11-0004', 'A', 'Yangon', 'Member', 'Female', 'Fashion Accessories', 22.75, 2, 2.28, 47.78, '2025-02-03', '09:45', 'Cash', 45.50, 4.76, 2.28, 8.8),
('101-11-0005', 'B', 'Mandalay', 'Normal', 'Male', 'Sports & Travel', 49.99, 5, 12.50, 262.45, '2025-02-04', '18:30', 'Ewallet', 249.95, 4.76, 12.50, 9.3);



--Data Cleaning in SQL
--Check for missing values
SELECT * 
FROM supermarket_sales
WHERE invoice_id IS NULL OR total IS NULL;

--Find duplicate records
SELECT invoice_id ,COUNT(*)
FROM supermarket_sales
GROUP BY invoice_id
HAVING COUNT(*)>1;




--SQL Data Analysis Tasks
--Total revenue per city
SELECT city , SUM(total) AS Total_Revenue
FROM supermarket_sales
GROUP BY city
ORDER BY Total_Revenue DESC;


--Average rating per product line
SELECT product_line,AVG(rating) AS Avg_Rating
FROM supermarket_sales 
GROUP BY product_line
ORDER BY Avg_Rating DESC;


--The best selling product line
SELECT TOP 1 product_line, SUM(quantity) AS Total_Sold
FROM supermarket_sales
GROUP BY product_line
ORDER BY Total_Sold DESC



--Total sales by payment method
SELECT payment ,SUM(total) AS Total_Sold
FROM supermarket_sales
GROUP BY payment
ORDER BY Total_Sold DESC;