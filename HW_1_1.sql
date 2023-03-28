CREATE TABLE public.students (
	id serial4 NOT NULL,
	"name" varchar(50) NOT NULL,
	email varchar(50) NOT NULL,
	"password" varchar(50) NOT NULL,
	created_on timestamp NOT NULL,
	CONSTRAINT students_email_key UNIQUE (email),
	CONSTRAINT students_pkey PRIMARY KEY (id)
);

-- 1. Вывести все поля и все строки.
select * from students;

--Вывести всех студентов в таблице
select students from students;

--Вывести только Id пользователей
select id from students;

--Вывести только имя пользователей
select name from students;

--Вывести только email пользователей
select email from students;

--Вывести имя и email пользователей
select name, email from students;

--Вывести id, имя, email и дату создания пользователей
select  id, name, email, created_on from students;

--Вывести пользователей где password 12333
select * from students 
where password = '12333';

--Вывести пользователей которые были созданы 2021-03-26 00:00:00
select * from students 
where created_on = '2021-03-26 00:00:00';

--Вывести пользователей где в имени есть слово Анна
select * from students
where name like '%Anna%';

--Вывести пользователей где в имени в конце есть 8
select * from students
where name like '%8'

--Вывести пользователей где в имени в есть буква а
select * from students
where name like '%a%';

-- Вывести пользователей которые были созданы 2021-07-12 00:00:00
select * from students 
where created_on = '2021-07-12 00:00:00';

--Вывести пользователей которые были созданы 2021-07-12 00:00:00 и имеют пароль 1m313
select * from students
where created_on = '2021-07-12 00:00:00' and password = '1m313';

--Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть слово Andrey
select * from students
where created_on = '2021-07-12 00:00:00' and name like '%Andrey%';

--Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть цифра 8
select * from students





