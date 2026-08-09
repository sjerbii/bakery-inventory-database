-- Bakery Inventory Management Database
-- Analytical queries
-- Run schema.sql and sample_data.sql first

USE bakery_db;

-- Query 1: List all products and their prices
SELECT Name, Price
FROM Product;

-- Query 2: Show ingredients that are below their reorder level
SELECT Name, QuantityInStock, ReorderLevel
FROM Ingredient
WHERE QuantityInStock < ReorderLevel;

-- Query 3: Total quantity sold per product
SELECT p.Name, SUM(sp.QuantitySold) AS total_sold
FROM Product p
JOIN Sale_Product sp ON p.ProductID = sp.ProductID
GROUP BY p.Name;

-- Query 4: Total sales revenue by date
SELECT SaleDate, SUM(TotalAmount) AS daily_revenue
FROM Sale
GROUP BY SaleDate;

-- Query 5: Suppliers and the ingredients they provide
SELECT s.Name AS supplier_name, i.Name AS ingredient_name
FROM Supplier s
JOIN Ingredient i ON s.SupplierID = i.SupplierID;
