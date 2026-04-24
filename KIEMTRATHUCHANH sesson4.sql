CREATE DATABASE ShopManager;
USE ShopManager;

CREATE TABLE Categories(
	category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(255) NOT NULL
);

CREATE TABLE Products(
	product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(255) NOT NULL,
    price DECIMAL(10,2),
    stock INT,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);

INSERT INTO Categories (category_name)
VALUES ('DIEN TU'),
		('THOI TRANG');

INSERT INTO Products (product_name, price, stock, category_id)
VALUES ('IPhone 15', 25000000, 10, 1),
('SamSung S23', 20000000, 5, 1),
('AO SO MI NAM', 500000, 50, 2),
('GIAY THE THAO', 1200000, 20, 2);

SET SQL_SAFE_UPDATES = 0;-- CAU HINH CHO PHEP SUA NHIEU COT CX LUC
UPDATE Products
SET price = 26000000
WHERE product_name ='IPhone 15';

UPDATE Products
SET stock = stock +10
WHERE category_name ='DIEN TU';

DELETE FROM Products 
WHERE product_id = 4;

DELETE FROM Products
WHERE price < 1000000;

SELECT * FROM Products;

SELECT * FROM Products
WHERE stock > 15;




