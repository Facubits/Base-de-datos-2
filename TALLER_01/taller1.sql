-- Crear la base de datos
CREATE DATABASE IF NOT EXISTS tienda;
USE tienda;

-- Crear tabla Category
CREATE TABLE Category (
    name VARCHAR(50) PRIMARY KEY
);

-- Crear tabla Product
CREATE TABLE Product (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    category_name VARCHAR(50),
    FOREIGN KEY (category_name) REFERENCES Category(name)
);

-- Crear tabla Food (hereda de Product)
CREATE TABLE Food (
    product_id INT PRIMARY KEY,
    expiration_date DATE,
    FOREIGN KEY (product_id) REFERENCES Product(product_id)
);

-- Crear tabla Furniture 
CREATE TABLE Furniture (
    product_id INT PRIMARY KEY,
    manufacture_date DATE,
    FOREIGN KEY (product_id) REFERENCES Product(product_id)
);

-- Crear tabla Order
CREATE TABLE `Order` (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATE NOT NULL
);

-- Crear tabla Order_line
CREATE TABLE Order_line (
    order_id INT,
    product_id INT,
    quantity INT NOT NULL,
    PRIMARY KEY (order_id, product_id),
    FOREIGN KEY (order_id) REFERENCES `Order`(order_id),
    FOREIGN KEY (product_id) REFERENCES Product(product_id)
);

--Ingreso de datos
INSERT INTO Category (name) VALUES 
('Comida'),
('Muebles');

INSERT INTO Product (name, price, category_name) VALUES
('Manzana', 0.50, 'Comida'),
('Silla', 25.00, 'Muebles'),
('Mesa', 75.00, 'Muebles'),
('Leche', 1.20, 'Comida');

INSERT INTO Food (product_id, expiration_date) VALUES
(1, '2025-06-15'),
(4, '2025-05-10');

INSERT INTO Furniture (product_id, manufacture_date) VALUES
(2, '2024-10-01'),
(3, '2024-09-15');

INSERT INTO `Order` (order_date) VALUES
('2025-04-25'),
('2025-04-26');

INSERT INTO Order_line (order_id, product_id, quantity) VALUES
(1, 1, 10), -- 10 Manzanas
(1, 2, 1),  -- 1 Silla
(2, 3, 2),  -- 2 Mesas
(2, 4, 5);  -- 5 Leches

--ver datos
SELECT * FROM category;
SELECT * FROM food;
SELECT * FROM furniture;