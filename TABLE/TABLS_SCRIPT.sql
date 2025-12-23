-- DATABASE_TABLE 

CREATE DATABASE IF NOT EXISTS ecommerce;
USE ecommerce;

-- CUSTOMERS_TABLE

CREATE TABLE IF NOT EXISTS Customers (
customer_id INT AUTO_INCREMENT PRIMARY KEY,
email VARCHAR(225) UNIQUE,
name VARCHAR(255),
signup_date DATE,
country VARCHAR(100),
gender VARCHAR(10)
);

-- PRODUCTS_TABLE

CREATE TABLE IF NOT EXISTS Products (
product_id INT AUTO_INCREMENT PRIMARY KEY,
sku VARCHAR(225),
name VARCHAR(255),
category VARCHAR(50),
price DECIMAL(10, 2),
cost DECIMAL(10, 2)
);

-- ORDERS_TABLE

CREATE TABLE IF NOT EXISTS orders (
  order_id INT AUTO_INCREMENT PRIMARY KEY,
  customer_id INT,
  order_date DATETIME,
  order_status VARCHAR(50),
  total_amount DECIMAL(12,2),
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- ORDER_ITEMS_TABLE

CREATE TABLE IF NOT EXISTS Order_items(
item_id INT AUTO_INCREMENT PRIMARY KEY,
order_id INT,
product_id INT,
quantity INT,
unit_price DECIMAL (10, 2),
FOREIGN KEY (order_id) REFERENCES orders(order_id),
FOREIGN KEY (product_id) REFERENCES Products(product_id)
);
