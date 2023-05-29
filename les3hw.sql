create database if not exists lesson3_hw;
use lesson3_hw;

CREATE TABLE IF NOT EXISTS SALESPEOPLE (
    snum INT UNSIGNED,
    sname VARCHAR(20),
    city VARCHAR(20),
    comm DECIMAL(2 , 2 )
);

insert into SALESPEOPLE (snum,  sname,  city,  comm) values
(1001,  'Peel',  'London',  .12),
(1002,  'Serres',  'San Jose',  .13),
(1004, 'Motika',  'London',  .11),
(1007, 'Rifkin',  'Barcelona',  .15),
(1003, 'Axelrod',  'New York',  .10);

CREATE TABLE IF NOT EXISTS CUSTOMERS (
    cnum INT,
    cname VARCHAR(20),
    city VARCHAR(20),
    rating INT UNSIGNED,
    snum INT UNSIGNED
);


insert into CUSTOMERS (cnum,  cname,  city,  rating,  snum) values
(2001,  'Hoffman',  'London',  100,  1001),
(2002,  'Giovanni',  'Rome',  200,  1003),
(2003,  'Liu',  'San Jose',  200,  1002),
(2004,  'Grass',  'Berlin',  300,  1002),
(2006,  'Clemens',  'London',  100,  1001),
(2008,  'Cisneros',  'San Jose',  300,  1007),
(2007,  'Pereira',  'Rome',  100,  1004);


CREATE TABLE IF NOT EXISTS ORDERS (
    onum INT,
    amt DECIMAL(6 , 2 ),
    odate DATE,
    cnum INT UNSIGNED,
    snum INT UNSIGNED
);

insert into ORDERS (onum,  amt, odate,  cnum, snum) VALUES
(3001,  18.69,  STR_TO_DATE('10/03/1990','%d/%m/%Y'),  2008,  1007),
(3003,  767.19,  STR_TO_DATE('10/03/1990','%d/%m/%Y'),  2001,  1001),
(3002,  1900.10,  STR_TO_DATE('10/03/1990','%d/%m/%Y'),  2007,  1004),
(3005,  5160.45,  STR_TO_DATE('10/03/1990','%d/%m/%Y'),  2003,  1002),
(3006,  1098.16,  STR_TO_DATE('10/03/1990','%d/%m/%Y'),  2008,  1007),
(3009,  1713.23,  STR_TO_DATE('10/04/1990','%d/%m/%Y'),  2002,  1003),
(3007,  75.75,  STR_TO_DATE('10/04/1990','%d/%m/%Y'),  2004,  1002),
(3008,  4723.00,  STR_TO_DATE('10/05/1990','%d/%m/%Y'),  2006,  1001),
(3010,  1309.95,  STR_TO_DATE('10/06/1990','%d/%m/%Y'),  2004,  1002),
(3011,  9891.88,  STR_TO_DATE('10/06/1990','%d/%m/%Y'),  2006,  1001);

-- Напишите запрос, который вывел бы таблицу со столбцами в следующем порядке: city, sname,
-- snum, comm. (к первой или второй таблице, используя SELECT)
SELECT 
    SALESPEOPLE.city,
    SALESPEOPLE.sname,
    SALESPEOPLE.snum,
    SALESPEOPLE.comm
FROM
    CUSTOMERS, SALESPEOPLE
WHERE
    CUSTOMERS.city = SALESPEOPLE.city;

-- Напишите команду SELECT, которая вывела бы оценку(rating), сопровождаемую именем
-- каждого заказчика в городе San Jose. (“заказчики”)
select * from CUSTOMERS 
where city = 'San Jose';

-- Напишите запрос, который вывел бы значения snum всех продавцов из таблицы заказов без
-- каких бы то ни было повторений. (уникальные значения в “snum“ “Продавцы”)
select DISTINCT snum from ORDERS ;

-- Напишите запрос, который бы выбирал заказчиков, чьи имена начинаются с буквы G.
-- Используется оператор "LIKE": (“заказчики”)
select *  from CUSTOMERS 
where cname like 'G%';

-- Напишите запрос, который может дать вам все заказы со значениями суммы выше чем $1,000.
-- (“Заказы”, “amt” - сумма)
select * from ORDERS
where amt > 1000;

-- Напишите запрос который выбрал бы наименьшую сумму заказа.
-- (Из поля “amt” - сумма в таблице “Заказы” выбрать наименьшее значение)
select * from ORDERS
where amt = (select MIN(amt) from ORDERS);

-- Напишите запрос к таблице “Заказчики”, который может показать всех заказчиков, у которых
-- рейтинг больше 100 и они находятся не в Риме.
select * from CUSTOMERS
where rating > 100 AND city != 'Rome';


CREATE TABLE IF NOT EXISTS staff (
  id INT AUTO_INCREMENT PRIMARY KEY, 
  first_name VARCHAR(45) , 
  last_name VARCHAR(45) , 
  post VARCHAR(45) , 
  seniority INT , 
  -- DECIMAL(общее количество знаков, количество знаков после запятой)
  -- DECIMAL(5,2) будут числа от -999.99 до 999.99
  salary DECIMAL(8, 2) , 
  -- это числа от -999999.99 до 999999.99
  age INT 
);

# Заполнение данными
INSERT staff (first_name, last_name, post, seniority, salary, age)
VALUES
	 ('Вася', 'Петров', 'Начальник', 40, 100000, 60),
	 ('Петр', 'Власов', 'Начальник', 8, 70000, 30),
	 ('Катя', 'Катина', 'Инженер', 2, 70000, 25),
	 ('Саша', 'Сасин', 'Инженер', 12, 50000, 35),
	 ('Иван', 'Петров', 'Рабочий', 40, 30000, 59),
	 ('Петр', 'Петров', 'Рабочий', 20, 55000, 60),
	 ('Сидр', 'Сидоров', 'Рабочий', 10, 20000, 35),
	 ('Антон', 'Антонов', 'Рабочий', 8, 19000, 28),
	 ('Юрий', 'Юрков', 'Рабочий', 5, 15000, 25),
	 ('Максим', 'Петров', 'Рабочий', 2, 11000, 19),
	 ('Юрий', 'Петров', 'Рабочий', 3, 12000, 24),
	 ('Людмила', 'Маркина', 'Уборщик', 10, 10000, 49);

-- Отсортируйте поле “зарплата” в порядке убывания 
SELECT * FROM staff
order by salary DESC;

-- и возрастания
SELECT * FROM staff
order by salary ASC;

-- ** Отсортируйте по возрастанию поле “Зарплата” и выведите 5 строк с
-- наибольшей заработной платой (возможен подзапрос)
/*SET @line_end = (select count(*) from staff) - 5;
SELECT @line_end;

SELECT salary
from staff
order by salary 
limit 5 offset line_end;*/

-- Выполните группировку всех сотрудников по специальности ,
-- суммарная зарплата которых превышает 100000
SELECT post as posts ,
count(*) as peoples,
sum(salary) as salarys_sum
from staff
group by post
having sum(salary) > 100000

