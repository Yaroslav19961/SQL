-- Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select employees.employee_name, salary.monthly_salary from
employees inner join employee_salary on employee_salary.employee_id = employees.id 
inner join salary on salary.id = employee_salary.salary_id 
order by monthly_salary ;

-- Вывести всех работников у которых ЗП меньше 2000.
select e.employee_name, s.monthly_salary from 
employees e join employee_salary es on es.employee_id = e.id
join salary s on s.id = es.salary_id
where s.monthly_salary < 2000
order by monthly_salary ;

--Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select e.employee_name, s.monthly_salary from 
employees e join employee_salary es on es.employee_id = e.id
right join salary s on s.id = es.salary_id
where employee_name is null 
order by monthly_salary ;

--Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select e.employee_name, s.monthly_salary from 
employees e join employee_salary es on es.employee_id = e.id
right join salary s on s.id = es.salary_id
where employee_name is null and monthly_salary < 2000
order by monthly_salary ;

--Найти всех работников кому не начислена ЗП
select e.employee_name, s.monthly_salary from 
employee_salary es right join employees e on es.employee_id = e.id
left join salary s on s.id = es.salary_id
where s.monthly_salary  is null 
order by employee_name;

--Вывести всех работников с названиями их должности.
select e.employee_name, r.role_name from
employees e join roles_employee re on  e.id = re.role_id
join roles r on re.role_id = r.id
order by role_name ;

-- Вывести имена и должность только Java разработчиков
select e.employee_name, r.role_name from
employees e join roles_employee re on  e.id = re.role_id
join roles r on re.role_id = r.id
where role_name like '%Java %'
order by role_name ;

--Вывести имена и должность только Python разработчиков.
select e.employee_name, r.role_name from
employees e join roles_employee re on  e.id = re.role_id
join roles r on re.role_id = r.id
where role_name like '%Python%'
order by role_name ;

--Вывести имена и должность всех QA инженеров.
select e.employee_name, r.role_name from
employees e join roles_employee re on  e.id = re.role_id
join roles r on re.role_id = r.id
where role_name like '%QA%'
order by role_name ;

--Вывести имена и должность ручных QA инженеров.
select e.employee_name, r.role_name from
employees e join roles_employee re on  e.id = re.role_id
join roles r on re.role_id = r.id
where role_name like '%Manual QA%'
order by role_name ;

--Вывести имена и должность автоматизаторов QA
select e.employee_name, r.role_name from
employees e join roles_employee re on  e.id = re.role_id
join roles r on re.role_id = r.id
where role_name like '%Automation QA%'
order by role_name ;

--Вывести имена и зарплаты Junior специалистов

select e.employee_name, s.monthly_salary, r.role_name from employee_salary es 
join employees e on es.employee_id = e.id 
join salary s on es.salary_id = s.id 
join roles_employee re on e.id = re.employee_id 
join roles r on r.id = re.role_id  
where role_name like '%Junior%'
order by employee_name;

--Вывести имена и зарплаты Middle специалистов
select e.employee_name, s.monthly_salary, r.role_name from employee_salary es 
join employees e on e.id = es.employee_id 
join salary s on s.id = es.salary_id 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id 
where role_name like '%Middle%'
order by employee_name;

--Вывести имена и зарплаты Senior специалистов
select e.employee_name, s.monthly_salary, r.role_name from employee_salary es 
join employees e on e.id = es.employee_id 
join salary s on s.id = es.salary_id 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id 
where role_name like '%Senior%'
order by employee_name;

--Вывести зарплаты Java разработчиков
select e.employee_name, s.monthly_salary, r.role_name from employee_salary es 
join employees e on e.id = es.employee_id 
join salary s on s.id = es.salary_id 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id 
where role_name like '%Java %'
order by employee_name;

--Вывести зарплаты Python разработчиков
select e.employee_name, s.monthly_salary, r.role_name from employee_salary es 
join employees e on e.id = es.employee_id 
join salary s on s.id = es.salary_id 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id 
where role_name like '%Python%'
order by employee_name;

--Вывести имена и зарплаты Junior Python разработчиков
select e.employee_name, s.monthly_salary, r.role_name from employee_salary es 
join employees e on e.id = es.employee_id 
join salary s on s.id = es.salary_id 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id 
where role_name like '%Junior Python%'
order by employee_name;

--Вывести имена и зарплаты Middle JS разработчиков
select e.employee_name, s.monthly_salary, r.role_name from employee_salary es 
join employees e on e.id = es.employee_id 
join salary s on s.id = es.salary_id 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id 
where role_name like '%Middle JavaScript%'
order by employee_name;

--Вывести имена и зарплаты Senior Java разработчиков
select e.employee_name, s.monthly_salary, r.role_name from employee_salary es 
join employees e on e.id = es.employee_id 
join salary s on s.id = es.salary_id 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id 
where role_name like '%Senior Java %'
order by employee_name;

--Вывести зарплаты Junior QA инженеров
select e.employee_name, s.monthly_salary, r.role_name from employee_salary es 
join employees e on e.id = es.employee_id 
join salary s on s.id = es.salary_id 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id 
where role_name like '%Junior%QA%'
order by employee_name;

--Вывести среднюю зарплату всех Junior специалистов
select avg(s.monthly_salary) as middle_salary  from employee_salary es 
join employees e on e.id = es.employee_id 
join salary s on s.id = es.salary_id 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id 
where role_name like '%Junior%' ;

--Вывести сумму зарплат JS разработчиков
select sum(s.monthly_salary) as sum_salary from employee_salary es 
join employees e on e.id = es.employee_id 
join salary s on s.id = es.salary_id 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id 
where role_name like '%JavaScript%' ;

--Вывести минимальную ЗП QA инженеров
select min(s.monthly_salary) as min_salary from employee_salary es 
join employees e on e.id = es.employee_id 
join salary s on s.id = es.salary_id 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id 
where role_name like '%QA%' ;

--Вывести максимальную ЗП QA инженеров
select max(s.monthly_salary) as max_salary from employee_salary es 
join employees e on e.id = es.employee_id 
join salary s on s.id = es.salary_id 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id 
where role_name like '%QA%' ;

--Вывести количество QA инженеров
select count(role_name) as count_QA from employee_salary es 
join employees e on e.id = es.employee_id 
join salary s on s.id = es.salary_id 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id 
where role_name like '%QA%' ;
--____________________________________________
select count(role_name) from roles
where role_name like '%QA%' ;

--Вывести количество Middle специалистов.
select count(role_name) as count_Middle from employee_salary es 
join employees e on e.id = es.employee_id 
join salary s on s.id = es.salary_id 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id 
where role_name like '%Middle%' ;
--____________________________________________
select count(role_name) from roles
where role_name like '%Middle%' ;

--Вывести количество разработчиков
select count(role_name) as count_developer from employee_salary es 
join employees e on e.id = es.employee_id 
join salary s on s.id = es.salary_id 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id 
where role_name like '%developer%' ;
--______________________________________________
select count(role_name) from roles
where role_name like '%developer%' ;

--Вывести фонд (сумму) зарплаты разработчиков.
select sum(s.monthly_salary)  from employee_salary es 
join employees e on e.id = es.employee_id 
join salary s on s.id = es.salary_id 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id 
where role_name like '%developer%' ;

--Вывести имена, должности и ЗП всех специалистов по возрастанию
select e.employee_name, r.role_name, s.monthly_salary from employee_salary es  
join employees e on e.id = es.employee_id 
join salary s on s.id = es.salary_id 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id 
order by s.monthly_salary;

--Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
select e.employee_name, r.role_name, s.monthly_salary from employee_salary es  
join employees e on e.id = es.employee_id 
join salary s on s.id = es.salary_id 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id 
where s.monthly_salary between 1700 and 2300 
order by s.monthly_salary;

--Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
select e.employee_name, r.role_name, s.monthly_salary from employee_salary es  
join employees e on e.id = es.employee_id 
join salary s on s.id = es.salary_id 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id 
where s.monthly_salary < 2300 
order by s.monthly_salary;

--Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
select e.employee_name, r.role_name, s.monthly_salary from employee_salary es  
join employees e on e.id = es.employee_id 
join salary s on s.id = es.salary_id 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id 
where s.monthly_salary in (1100,1500,2000) 
order by s.monthly_salary;







