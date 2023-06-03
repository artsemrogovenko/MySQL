DROP DATABASE IF EXISTS lesson4_hw;
CREATE DATABASE lesson4_hw;
USE lesson4_hw;

create table users
(	id  int auto_increment primary key,
    login varchar(255) null,
    pass  varchar(255) null,
    male  tinyint      null
);

create table clients
(	 id    int auto_increment primary key,
    login varchar(255) null,
    pass  varchar(255) null,
    male  tinyint      null
);

INSERT INTO users (login, pass, male) VALUES
('alex', '$2y$10$6SzbBCMENklStIgTqBKIluijJUnbeZ5WqIu4RJgkksnFZon5kH14y', 1),
('Mikle', '$ws$10$6SzbBCMENklStIgTqBKIluijJUnbeZ5WqIu4RJgkksnFZon5kH14y', 1),
('Olia', '$2y$10$88zbBCKLJklStIgTqBKIluijJUnbeZ5WqJI4RJgkksnFZon5kH14y', 2),
('Tom', '$2y$20$6SzbBCNRNklStIgTqBKIluijJUnbeZ5WqIu4RJgkksnFZon5kH20y', 1),
('Margaret', '$2y$20$6SzbBCNRNklStIgTqBKIluijJUnbeZ4wqIu4RJgkksnFZon5kH20y', 2),
('alex', '$2y$10$6SzbBCMENklStIgTqBKIluijJUnbeZ5WqIu4RJgkksnFZon5kH14y', 1);

INSERT INTO clients (login, pass, male) VALUES 
('alexander', '$2y$10$6SzbBCMENklStIgTqBKIluijJUnbeZ5WqIu4RJgkksnFZon5kH14y', 1),
('Mikle', '$ws$10$6SzbBCMENklStIgTqBKIluijJUnbeZ5WqIu4RJgkksnFZon5kH14y', 1),
('Olia', '$2y$10$88zbBCKLJklStIgTqBKIluijJUnbeZ5WqJI4RJgkksnFZon5kH14y', 2),
('Dmitry', '$2y$20$6SzbBCNRNklStIgTqBKIluijJUnbeZ5WqIu4RJgkksnFZon5kH20y', 1),
('Margaret', '$2y$20$6SzbBCNRNklStIgTqBKIluijJUnbeZ4wqIu4RJgkksnFZon5kH20y', 2),
('Leonid', '$2y$10$6SzbBCMENklStIgTqBKIluijJUnbeZ5WqIu4RJgkksnFZon5kH14y', 1),
('Mikle', '$ws$10$6SzbBCMENklStIgTqBKIluijJUnbeZ5WqIu4RJgkksnFZon5kH14y', 1),
('Olga', '$2y$10$88zbBCKLJklStIgTqBKIluijJUnbeZ5WqJI4RJgkksnFZon5kH14y', 2),
('Tom', '$2y$20$6SzbBCNRNklStIgTqBKIluijJUnbeZ5WqIu4RJgkksnFZon5kH20y', 1),
('Masha', '$2y$20$6SzbBCNRNklStIgTqBKIluijJUnbeZ4wqIu4RJgkksnFZon5kH20y', 2),
('alex', '$2y$10$6SzbBCMENklStIgTqBKIluijJUnbeZ5WqIu4RJgkksnFZon5kH14y', 1);


-- Задание на EXISTS
CREATE TABLE Employee (
  Id INT PRIMARY KEY,
  Name VARCHAR(45) NOT NULL,
  Department VARCHAR(45) NOT NULL,
  Salary FLOAT NOT NULL,
  Gender VARCHAR(45) NOT NULL,
  Age INT NOT NULL,
  City VARCHAR(45) NOT NULL
);
INSERT INTO Employee (Id, `Name`, Department, Salary, Gender, Age, City) VALUES 
(1001, 'John Doe', 'IT', 35000, 'Male', 25, 'London'),
(1002, 'Mary Smith', 'HR', 45000, 'Female', 27, 'London'),
(1003, 'James Brown', 'Finance', 50000, 'Male', 28, 'London'),
(1004, 'Mike Walker', 'Finance', 50000, 'Male', 28, 'London'),
(1005, 'Linda Jones', 'HR', 75000, 'Female', 26, 'London'),
(1006, 'Anurag Mohanty', 'IT', 35000, 'Male', 25, 'Mumbai'),
(1007, 'Priyanla Dewangan', 'HR', 45000, 'Female', 27, 'Mumbai'),
(1008, 'Sambit Mohanty', 'IT', 50000, 'Male', 28, 'Mumbai'),
(1009, 'Pranaya Kumar', 'IT', 50000, 'Male', 28, 'Mumbai'),
(1010, 'Hina Sharma', 'HR', 75000, 'Female', 26, 'Mumbai');

CREATE TABLE Projects (
 ProjectId INT PRIMARY KEY AUTO_INCREMENT,
      Title VARCHAR(200) NOT NULL,
     ClientId INT,
 EmployeeId INT,
     StartDate DATETIME,
     EndDate DATETIME
);
INSERT INTO Projects ( Title, ClientId, EmployeeId, StartDate, EndDate) VALUES 
('Develop ecommerse website from scratch', 1, 1003, NOW(), DATE_ADD(NOW(), INTERVAL 30 DAY)),
('WordPress website for our company', 1, 1002, NOW(), DATE_ADD(NOW(), INTERVAL 45 DAY)),
('Manage our company servers', 2, 1007, NOW(), DATE_ADD(NOW(), INTERVAL 45 DAY)),
('Hosting account is not working', 3, 1009, NOW(), DATE_ADD(NOW(), INTERVAL 7 DAY)),
('MySQL database from my desktop application', 4, 1010, NOW(), DATE_ADD(NOW(), INTERVAL 15 DAY)),
('Develop new WordPress plugin for my business website', 2, NULL, NOW(), DATE_ADD(NOW(), INTERVAL 10 DAY)),
('Migrate web application and database to new server', 2, NULL, NOW(), DATE_ADD(NOW(), INTERVAL 5 DAY)),
('Android Application development', 4, 1004, NOW(), DATE_ADD(NOW(), INTERVAL 30 DAY));

-- Собеседования
CREATE TABLE  AUTO 
(  REGNUM VARCHAR(10) PRIMARY KEY, 
	MARK VARCHAR(10), 
	COLOR VARCHAR(15),
	RELEASEDT DATE, 
	PHONENUM VARCHAR(15)
);

CREATE TABLE  CITY 
(	CITYCODE INT PRIMARY KEY,
	CITYNAME VARCHAR(50), 
	PEOPLES INT 
);

CREATE TABLE  MAN 
(	PHONENUM VARCHAR(15) PRIMARY KEY , 
	FIRSTNAME VARCHAR(50),
	LASTNAME VARCHAR(50),  
	CITYCODE INT, 
	YEAROLD INT	 
);


 -- AUTO
INSERT INTO AUTO (REGNUM, MARK,	COLOR, RELEASEDT, PHONENUM )VALUES
(111114,'LADA', 'КРАСНЫЙ', date'2008-01-01', '9152222221'),
(111115,'VOLVO', 'КРАСНЫЙ', date'2013-01-01', '9173333334'),
(111116,'BMW', 'СИНИЙ', date'2015-01-01', '9173333334'),
(111121,'AUDI', 'СИНИЙ', date'2009-01-01', '9173333332'),
(111122,'AUDI', 'СИНИЙ', date'2011-01-01', '9213333336'),
(111113,'BMW', 'ЗЕЛЕНЫЙ', date'2007-01-01', '9214444444'),
(111126,'LADA', 'ЗЕЛЕНЫЙ', date'2005-01-01', null),
(111117,'BMW', 'СИНИЙ', date'2005-01-01', null),
(111119,'LADA', 'СИНИЙ', date'2017-01-01', 9213333331);

 -- CITY
INSERT INTO CITY (CITYCODE,CITYNAME,PEOPLES)
VALUES(1,'Москва', 10000000),
(2,'Владимир', 500000),
(3, 'Орел', 300000),
(4,'Курск', 200000),
(5, 'Казань', 2000000),
(7, 'Котлас', 110000),
(8, 'Мурманск', 400000),
(9, 'Ярославль', 500000);

-- MAN
INSERT INTO MAN (PHONENUM,FIRSTNAME,LASTNAME,CITYCODE,YEAROLD) VALUES
('9152222221','Андрей','Николаев', 1, 22),
('9152222222','Максим','Москитов', 1, 31),
('9153333333','Олег','Денисов', 3, 34),
('9173333334','Алиса','Никина', 4, 31),
('9173333335','Таня','Иванова', 4, 31),
('9213333336','Алексей','Иванов', 7, 25),
('9213333331','Андрей','Некрасов', 2, 27),
('9213333332','Миша','Рогозин', 2, 21),
('9214444444','Алексей','Галкин', 1, 38);

SELECT * FROM employee;
SELECT * FROM projects;

/*Получите из таблицы "сотрудники" только тех сотрудников,
 которые в данный момент работают над любым из активных проектов*/
SELECT id, name, title FROM employee
LEFT JOIN projects
ON projects.EmployeeId = employee.id
WHERE title is not null;

/*
Проверьте, существует ли сотрудник с
идентификатором 1004 в таблице сотрудников или нет*/
SELECT  id, name
FROM employee
WHERE id IN (1004);

# Задание №1.. Вывести на экран сколько машин каждого цвета для машин марок BMW и LADA
SELECT color ,mark FROM auto WHERE mark = 'lada' or mark = 'bmw';
-- считает сколько 
SELECT color,
 COUNT(mark)as 'количество',
 mark 
FROM auto 
WHERE mark = 'bmw' 
GROUP BY color 
UNION 
SELECT color,
 COUNT(mark),
 mark 
FROM auto 
WHERE mark = 'lada' 
GROUP BY color;

# Задание №2.. Вывести на экран марку авто и количество AUTO не этой марки
SELECT mark ,
COUNT(mark) AS 'этой_марки' ,
( SELECT COUNT(mark) FROM auto)-COUNT(mark) AS 'не_этой_марки' ,
( SELECT COUNT(*) FROM auto) AS 'всего_машин' 
FROM auto 
GROUP BY mark;


## Задание №3.
## Даны 2 таблицы, созданные следующим образом:
CREATE TABLE if not exists test_a (id INT, test varchar(10));
CREATE TABLE if not exists test_b (id INT);

INSERT INTO test_a(id, test) values 
(10, 'A'), 
(20, 'A'),
(30, 'F'),
(40, 'D'),
(50, 'C');
INSERT INTO test_b(id) values (10), (30), (50);

# Напишите запрос, который вернет строки из таблицы test_a, id которых нет в таблице test_b,
# НЕ используя ключевого слова NOT.
SELECT * FROM test_a;
SELECT * FROM test_b;
/***********/
SELECT test_a.id FROM test_a
LEFT OUTER JOIN test_b
ON test_a.id = test_b.id
WHERE test_b.id is null;
