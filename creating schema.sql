CREATE DATABASE supermarket_db;
USE supermarket_db;

CREATE TABLE supermarket_sales (
    invoice_id VARCHAR(20) PRIMARY KEY,
    branch CHAR(1),
    city VARCHAR(50),
    customer_type VARCHAR(10),
    gender VARCHAR(10),
    product_line VARCHAR(50),
    unit_price DECIMAL(10,2),
    quantity INT,
    tax_5 DECIMAL(10,2),
    total DECIMAL(10,2),
    date DATE,
    time TIME,
    payment VARCHAR(20),
    cogs DECIMAL(10,2),
    gross_margin_percent DECIMAL(10,2),
    gross_income DECIMAL(10,2),
    rating DECIMAL(3,1)
);


BULK INSERT supermarket_sales 
FROM 'D:\p1 excel\supermarket_sales - Sheet1.csv' 
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK
);
