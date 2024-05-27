--CREATE DATABASE mdb

GO
--Ex1

--Create tables

CREATE TABLE mdb.dbo.Categories
(
    CategoryId INT PRIMARY KEY,
    Name NCHAR(20)
)

CREATE TABLE mdb.dbo.Products
(
    ProductId INT PRIMARY KEY,
    Name NCHAR(20),
    Description NCHAR(50) NULL,
)

CREATE TABLE mdb.dbo.ProductCategoty
(
    Id INT PRIMARY KEY,
    ProductId INT FOREIGN KEY REFERENCES mdb.dbo.Products(ProductId) NOT NULL,
    CategoryId INT FOREIGN KEY REFERENCES mdb.dbo.Categories(CategoryId) NULL
)

--Insert data

INSERT INTO mdb.dbo.Categories(CategoryId, Name) 
VALUES
(1, 'Phone'),
(2, 'Laptop'),
(3, 'LTE Support')

INSERT INTO mdb.dbo.Products(ProductId, Name, Description)
VALUES
(1, 'Samsung', 'Samsung Galaxy S23'),
(2, 'Asus', 'Asus TUF Gamaing a15'),
(3, 'D-Link', 'D-Link DIR-615'),
(4, 'IPhone', 'IPhone 7')

INSERT INTO mdb.dbo.ProductCategoty(Id, ProductId, CategoryId)
VALUES
(1, 1, 1),
(2, 1, 3),
(3, 2, 2),
(4, 3, NULL),
(5, 4, 1),
(6, 4, 3)

--Output data

SELECT mdb.dbo.Products.ProductId, mdb.dbo.Products.Name, mdb.dbo.Categories.CategoryId, mdb.dbo.Categories.Name
FROM mdb.dbo.ProductCategoty
JOIN mdb.dbo.Products ON mdb.dbo.ProductCategoty.ProductId = mdb.dbo.Products.ProductId
LEFT JOIN mdb.dbo.Categories ON mdb.dbo.ProductCategoty.CategoryId = mdb.dbo.Categories.CategoryId

--Ex2

--Create tables

CREATE TABLE mdb.dbo.Categories1
(
    CategoryId INT PRIMARY KEY,
    Name NCHAR(20)
)

CREATE TABLE mdb.dbo.Products1
(
    Id INT PRIMARY KEY,
    ProductId INT,
    Name NCHAR(20),
    Description NCHAR(50) NULL,
    CategoryId INT FOREIGN KEY REFERENCES mdb.dbo.Categories1(CategoryId) NULL,
)

--Insert data

INSERT INTO mdb.dbo.Categories1(CategoryId, Name) 
VALUES
(1, 'Phone'),
(2, 'Laptop'),
(3, 'LTE Support')

INSERT INTO mdb.dbo.Products1(Id, ProductId, Name, Description, CategoryId)
VALUES
(1, 1, 'Samsung', 'Samsung Galaxy S23', 1),
(2, 1, 'Samsung', 'Samsung Galaxy S23', 3),
(3, 2, 'Asus', 'Asus TUF Gamaing a15', 2),
(4, 3, 'D-Link', 'D-Link DIR-615', NULL),
(5, 4, 'IPhone', 'IPhone 7', 1),
(6, 4, 'IPhone', 'IPhone 7', 3)

--Output data

SELECT mdb.dbo.Products1.ProductId, mdb.dbo.Products1.Name, mdb.dbo.Categories1.CategoryId, mdb.dbo.Categories1.Name
FROM mdb.dbo.Products1
LEFT JOIN mdb.dbo.Categories1 ON mdb.dbo.Products1.CategoryId = mdb.dbo.Categories1.CategoryId
