-- Bakery Inventory Management Database
-- Sample data (fictitious, for demonstration purposes)
-- Run schema.sql first to create the tables

USE bakery_db;

INSERT INTO Supplier (Name, ContactInfo, Address)
VALUES
('Local Flour Co', '555-1234', '123 Grain St'),
('Sweet Dairy', '555-5678', '456 Milk Ave');

INSERT INTO Ingredient (Name, QuantityInStock, Unit, ReorderLevel, SupplierID)
VALUES
('Flour', 100.00, 'kg', 20.00, 1),
('Butter', 50.00, 'kg', 10.00, 2),
('Blueberries', 25.00, 'kg', 5.00, 2);

INSERT INTO Product (Name, Category, Price)
VALUES
('Chocolate Croissant', 'Pastry', 4.50),
('Blueberry Muffin', 'Muffin', 3.75);

INSERT INTO Product_Ingredient (ProductID, IngredientID, QuantityUsed)
VALUES
(1, 1, 0.20),
(1, 2, 0.10),
(2, 1, 0.15),
(2, 3, 0.05);

INSERT INTO Sale (SaleDate, TotalAmount)
VALUES
('2025-04-01', 18.00),
('2025-04-02', 7.50);

INSERT INTO Sale_Product (SaleID, ProductID, QuantitySold)
VALUES
(1, 1, 4),
(2, 2, 2);
