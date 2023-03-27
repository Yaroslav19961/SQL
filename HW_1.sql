--Таблица employees
----1)Создать таблицу employees
----id. serial,  primary key,
----employee_name. Varchar(50), not null

CREATE TABLE employees (
	id serial PRIMARY KEY,
	employee_name Varchar(50) NOT NULL
);

----2)Наполнить таблицу employee 70 строками

INSERT INTO employees (employee_name)
values ('Maria_Anders'),('Ana_Trujillo'),('Antonio Moreno'),('Thomas Hardy'),('Christina Berglund'),('Hanna Moos'),('Frédérique Citeaux'),('Martín Sommer'),					
('Laurence Lebihans'),('Elizabeth Lincoln'),('Victoria Ashworth'),('Patricio Simpson'),('Francisco Chang'),('Yang Wang'),('Pedro Afonso'),('Elizabeth Brown'),('Sven Ottlieb'),	
('Janine Labrune'),('Ann Devon'),('Roland Mendel'),('Aria Cruz'),('Diego Roel'),('Martine Rancé'),('Maria Larsson'),('Peter Franken'),('Carine Schmitt'),('Paolo Accorti'),		
('Lino Rodriguez'),('Eduardo Saavedra'),('José Pedro Freyre'),('André Fonseca'),('Howard Snyder'),('Manuel Pereira'),('Mario Pontes'),('Carlos Hernández'),('Yoshi Latimer'),
('Patricia McKenna'),('Helen Bennett'),('Philip Cramer'),('Daniel Tonini'),('Annette Roulet'),('Yoshi Tannamuri'),('John Steel'),('Renate Messner'),('Jaime Yorres'),
('Carlos González'),('Felipe Izquierdo'),('Fran Wilson'),('Giovanni Rovelli'),('Catherine Dewey'),('Jean Fresnière'),('Alexander Feuer'),('Simon Crowther'),('Yvonne Moncada'),	
('Rene Phillips'),('Henriette Pfalzheim'),('Marie Bertrand'),('Guillermo Fernández'),('Georg Pipps'),('Isabel de Castro'),('Bernardo Batista'),('Lúcia Carvalho'),	
('Horst Kloss'),('Sergio Gutiérrez'),('Paula Wilson'),('Maurizio Moroni'),('Janete Limeira'),('Michael Holz'),('Alejandra Camino'),('Jonas Bergulfsen');			


--Таблица salary
----3)Создать таблицу salary
----id. Serial  primary key,
----monthly_salary. Int, not null

CREATE TABLE salary (
	id serial PRIMARY KEY,
	monthly_salary int NOT NULL
);

----4)Наполнить таблицу salary 15 строками:
-- 1000
-- 1100
-- 1200
-- 1300
-- 1400
-- 1500
-- 1600
-- 1700
-- 1800
-- 1900
-- 2000
-- 2100
-- 2200
-- 2300
-- 2400
-- 2500

INSERT INTO salary (monthly_salary)
VALUES ('1000'),('1100'),('1200'),('1300'),('1400'),('1500'),('1600'),('1700'),('1800'),('1900'),('2000'),('2100'),('2200'),('2300'),('2400'),('2500');	

--Таблица employee_salary
----5)Создать таблицу employee_salary
-----id. Serial  primary key,
-----employee_id. Int, not null, unique
-----salary_id. Int, not null

CREATE TABLE employee_salary(
	id serial PRIMARY KEY,
	employee_id int NOT NULL unique,
	salary_id int NOT NULL
);

----Наполнить таблицу employee_salary 40 строками:
----в 10 строк из 40 вставить несуществующие employee_id

insert into employee_salary (employee_id, salary_id) 
VALUES (3,7),(1,4),(5,9),(40,13),(23,4),(11,2),(52,10),(15,13),(26,4),(16,1),(33,7),(80,14),(25,15),(56,7),(38,8),(28,19),(222,111),(13,43),(12,10),(8,4),(90,10),
(61,7),(66,8),(93,22),(27,10),(53,111),(43,10),(44,8),(10,6),(4,8),(6,1),(62,5),(30,3),(72,8),(73,9),(74,11),(75,6),(76,9),(77,7),(78,6);

--Таблица roles
----Создать таблицу roles
----id. Serial  primary key,
----role_name. int, not null, unique

CREATE TABLE roles (
id serial PRIMARY KEY,
role_name int NOT NULL UNIQUE
);

----Поменять тип столба role_name с int на varchar(30)
ALTER TABLE roles
ALTER COLUMN role_name TYPE varchar(30);

----Наполнить таблицу roles 20 строками:
INSERT INTO roles (role_name)
VALUES ('Junior Python developer'), ('Middle Python developer'),('Senior Python developer'),('Junior Java developer'),('Middle Java developer'),	
('Senior Java developer'),('Junior JavaScript developer'),('Middle JavaScript developer'),('Senior JavaScript developer'),
('Junior Manual QA engineer'),('Middle Manual QA engineer'),('Senior Manual QA engineer'),('Project Manager'),('Designer'),	
('HR'),('CEO'),('Sales manager'),('Junior Automation QA engineer'),('Middle Automation QA engineer'),('Senior Automation QA engineer');	


--Таблица roles_employee
----Создать таблицу roles_employee
----id. Serial  primary key,
----employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
----role_id. Int, not null (внешний ключ для таблицы roles, поле id)

CREATE TABLE roles_employee (
id serial PRIMARY KEY,
employee_id int NOT NULL UNIQUE,
	foreign key (employee_id)
		references employees(id),
	role_id Int not null,
		foreign key (role_id)
				references roles(id)
);

----Наполнить таблицу roles_employee 40 строками:
INSERT INTO roles_employee (employee_id, role_id)
VALUES (7,2),(20,4),(3,9),(5,13),(23,4),(11,2),(4,9),(22,13),(21,3),(34,4),(1,7),(8,15),(9,16),(6,10),(24,11),(25,12),(26,7),(27,8),(28,9),(29,10),(30,14),(31,15),(32,7),
(33,8),(35,9),(36,12),(37,13),(38,15),(39,14),(40,10),(19,7),(18,10),(17,12),(16,13),(15,11),(14,10),(13,8),(12,6),(2,8),(10,1);

select * from salary;

select * from employees;

select * from employee_salary;

select * from roles;

select * from roles_employee;

