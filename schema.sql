-- Bakery Inventory Management Database
-- Schema: table definitions

DROP DATABASE IF EXISTS bakery_db;

CREATE DATABASE bakery_db;
USE bakery_db;

-- Supplier Table
CREATE TABLE Supplier (
    SupplierID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    ContactInfo VARCHAR(200),
    Address VARCHAR(200)
);

-- Ingredient Table
CREATE TABLE Ingredient (
    IngredientID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    QuantityInStock DECIMAL(10,2) NOT NULL,
    Unit VARCHAR(20) NOT NULL,
    SupplierID INT NOT NULL,
    ReorderLevel DECIMAL(10,2),

    FOREIGN KEY (SupplierID) REFERENCES Supplier(SupplierID)
);

-- Product Table
CREATE TABLE Product (
    ProductID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Category VARCHAR(50),
    Price DECIMAL(6,2) NOT NULL
);

-- Sale Table
CREATE TABLE Sale (
    SaleID INT PRIMARY KEY AUTO_INCREMENT,
    SaleDate DATE NOT NULL,
    TotalAmount DECIMAL(10,2)
);

-- Junction Table: Product_Ingredient
-- Many-to-Many between Product and Ingredient
CREATE TABLE Product_Ingredient (
    ProductID INT NOT NULL,
    IngredientID INT NOT NULL,
    QuantityUsed DECIMAL(10,2) NOT NULL,

    PRIMARY KEY (ProductID, IngredientID),

    FOREIGN KEY (ProductID) REFERENCES Product(ProductID),
    FOREIGN KEY (IngredientID) REFERENCES Ingredient(IngredientID)
);

-- Junction Table: Sale_Product
-- Many-to-Many between Sale and Product
CREATE TABLE Sale_Product (
    SaleID INT NOT NULL,
    ProductID INT NOT NULL,
    QuantitySold INT NOT NULL,

    PRIMARY KEY (SaleID, ProductID),

    FOREIGN KEY (SaleID) REFERENCES Sale(SaleID),
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);
