USE ecommerce;

-- CUSTOMER_DATA

INSERT INTO customers (email, name, signup_date, country, gender) VALUES
('alice@example.com','Alice','2024-01-10','India','F'),
('bob@example.com','Bob','2024-01-12','India','M'),
('carol@example.com','Carol','2024-01-20','USA','F'),
('dave@example.com','Dave','2024-02-05','UK','M'),
('emma@example.com','Emma','2024-02-15','Canada','F'),
('farhan@example.com','Farhan','2024-02-25','India','M'),
('geeta@example.com','Geeta','2024-03-01','India','F'),
('hari@example.com','Hari','2024-03-12','India','M'),
('ivan@example.com','Ivan','2024-03-22','Russia','M'),
('julia@example.com','Julia','2024-03-28','USA','F'),
('kiran@example.com','Kiran','2024-04-01','India','M'),
('lisa@example.com','Lisa','2024-04-06','UK','F'),
('mohan@example.com','Mohan','2024-04-15','India','M'),
('nisha@example.com','Nisha','2024-04-20','India','F'),
('omkar@example.com','Omkar','2024-04-25','India','M');

-- PRODUCT_DATA

INSERT INTO products (sku, name, category, price, cost) VALUES
('SKU-001','Classic Tee','Apparel',19.99,10),
('SKU-002','Sneakers','Footwear',79.99,40),
('SKU-003','Cap','Accessories',9.99,3),
('SKU-004','Jeans','Apparel',49.99,25),
('SKU-005','Hoodie','Apparel',39.99,20),
('SKU-006','Backpack','Bags',59.99,30),
('SKU-007','Socks (Pack of 3)','Apparel',12.99,5),
('SKU-008','Sunglasses','Accessories',29.99,15),
('SKU-009','Watch','Accessories',99.99,50),
('SKU-010','Formal Shoes','Footwear',89.99,45),
('SKU-011','Sports Shorts','Apparel',24.99,12),
('SKU-012','Water Bottle','Lifestyle',14.99,5);

-- ORDER_DATA

INSERT INTO orders (customer_id, order_date, order_status, total_amount) VALUES
(1,'2024-01-15 10:15:00','completed',59.97),
(2,'2024-01-16 14:22:00','completed',79.99),
(3,'2024-01-25 18:40:00','completed',29.99),
(4,'2024-02-10 11:00:00','completed',49.99),
(1,'2024-02-20 09:30:00','completed',39.98),
(5,'2024-02-22 16:10:00','completed',99.99),
(6,'2024-03-03 13:45:00','completed',29.99),
(7,'2024-03-10 10:00:00','completed',59.99),
(8,'2024-03-12 12:30:00','completed',24.99),
(9,'2024-03-18 14:15:00','completed',89.99),
(10,'2024-03-28 18:20:00','completed',129.98),
(11,'2024-04-02 11:25:00','completed',49.99),
(12,'2024-04-05 15:45:00','completed',79.99),
(13,'2024-04-12 10:50:00','completed',19.99),
(14,'2024-04-15 09:30:00','completed',69.98),
(15,'2024-04-17 13:22:00','completed',39.99),
(3,'2024-04-20 17:10:00','completed',49.99),
(4,'2024-05-01 12:00:00','completed',149.98),
(6,'2024-05-05 09:10:00','completed',29.99),
(7,'2024-05-09 14:40:00','completed',12.99),
(8,'2024-05-10 16:18:00','completed',59.99),
(9,'2024-05-11 11:33:00','completed',89.99),
(10,'2024-05-15 10:00:00','cancelled',79.99),
(11,'2024-05-18 15:10:00','completed',24.99),
(12,'2024-05-22 19:55:00','completed',99.99);

-- ORDER_ITEM

INSERT INTO order_items (order_id, product_id, quantity, unit_price) VALUES
(1,1,3,19.99),
(2,2,1,79.99),
(3,3,3,9.99),
(4,4,1,49.99),
(5,5,1,39.99),
(6,9,1,99.99),
(7,3,3,9.99),
(8,6,1,59.99),
(9,11,1,24.99),
(10,10,1,89.99),(10,7,1,12.99),(10,12,1,14.99),
(11,4,1,49.99),
(12,2,1,79.99),
(13,1,1,19.99),
(14,5,1,39.99),(14,7,1,12.99),
(15,8,1,29.99),
(16,4,1,49.99),
(17,4,1,49.99),(17,2,1,79.99),
(18,3,3,9.99),
(19,7,1,12.99),
(20,6,1,59.99),
(21,10,1,89.99),
(22,11,1,24.99),
(23,3,2,9.99),(23,9,1,99.99);



