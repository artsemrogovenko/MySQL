create database if not exists lesson2_hw;
use lesson2_hw;
-- Используя операторы языка SQL,
-- создайте таблицу “sales”. Заполните ее данными.
create TABLE sales (
id int unsigned primary key not null auto_increment,
order_date DATETIME DEFAULT CURRENT_TIMESTAMP,
count_product int unsigned not null
);

select * from sales;

INSERT INTO sales (order_date, count_product) VALUES
('2022-01-01', 156),
('2022-01-02', 180),
('2022-01-03', 21),
('2022-01-04', 124),
('2022-01-05', 341);

select * from sales;
-- Для данных таблицы “sales” укажите тип
-- заказа в зависимости от кол-ва 
SELECT id,
CASE
	WHEN count_product < 100 THEN "маленький заказ"
    WHEN count_product BETWEEN 100 AND 300 then  "Средний заказ"
    WHEN count_product > 300 THEN "большой заказ"
END AS 'Тип заказа'
FROM sales;

-- Создайте таблицу “orders”, заполните ее значениями
create TABLE orders (
id int unsigned primary key not null auto_increment,
employee_id varchar(10) not null,
amount FLOAT(10) not null,
order_status TINYTEXT
);

INSERT INTO orders (employee_id, amount,order_status) VALUES
('e03', 15.00, 'OPEN'),
('e01', 25.50, 'OPEN'),
('e05', 100.70, 'CLOSED'),
('e02', 22.18, 'OPEN'),
('e04', 9.50, 'CANCELLED');

select * from orders;
-- Выберите все заказы. В зависимости от поля order_status выведите столбец full_order_status:
-- OPEN – «Order is in open state» ; CLOSED - «Order is closed»; CANCELLED - «Order is cancelled»
SELECT *,
CASE
	WHEN order_status = 'OPEN' THEN "Order is in open state"
    WHEN order_status = 'CLOSED' THEN  "Order is closed"
    WHEN order_status = 'CANCELLED' THEN "Order is cancelled"
END AS 'full_order_status'
FROM orders;
