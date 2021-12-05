--1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.

select employer_name,monthly_salary 
from employers
join employer_salary 
on employers.id = employer_salary.employer_id
join salary 
on salary.id = salary_id;

--2. Вывести всех работников у которых ЗП меньше 2000.

select employer_name,monthly_salary
from employers
join employer_salary 
on employers.id = employer_salary.employer_id
join salary 
on salary.id = salary_id
where monthly_salary<2000;

--3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select employer_name,employer_id, salary_id, monthly_salary
from employers
full outer join employer_salary
on employers.id = employer_salary.employer_id
join salary
on employer_salary.salary_id = salary.id
where employers.id is null;

--4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select employer_name,employer_id, salary_id, monthly_salary
from employers
full outer join employer_salary
on employers.id = employer_salary.employer_id
join salary
on employer_salary.salary_id = salary.id
where employers.id is null and monthly_salary<2000;

--5. Найти всех работников кому не начислена ЗП.

select employer_name, monthly_salary from employers
left join employer_salary on employers.id = employer_salary.employer_id
left join salary on employer_salary.salary_id = salary.id
where monthly_salary is null;

--6. Вывести всех работников с названиями их должности.

select employer_name, role_name from roles_employer
join employers on roles_employer.employer_id = employers.id
join roles on roles_employer.role_id = roles.id;

--7. Вывести имена и должность только Java разработчиков:

select employer_name, role_name from roles_employer
join employers on roles_employer.employer_id = employers.id
join roles on roles_employer.role_id = roles.id
where role_name like '%Java developer%';

----  8. Вывести имена и должность только Python разработчиков:
select employee_name, role_name from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where role_name like '%Python developer%';

--  9. Вывести имена и должность всех QA инженеров:
select employer_name, role_name from roles_employer
join employers on roles_employer.employer_id = employers.id
join roles on roles_employer.role_id = roles.id
where role_name like '%QA engineer%';

--  10. Вывести имена и должность ручных QA инженеров:
select employer_name, role_name from roles_employer
join employers on roles_employer.employer_id = employers.id
join roles on roles_employer.role_id = roles.id
where role_name like '%Manual QA engineer%';

--  11. Вывести имена и должность автоматизаторов QA:
select employer_name, role_name from roles_employer
join employers on roles_employer.employer_id = employers.id
join roles on roles_employer.role_id = roles.id
where role_name like '%Automation QA engineer%';

--  12. Вывести имена и зарплаты Junior специалистов:
select employer_name, monthly_salary, role_name from employers
left join employer_salary on employer_salary.employer_id = employers.id
left join salary on employer_salary.salary_id = salary.id
join roles_employer on roles_employer.employer_id = employers.id
join roles on roles_employer.role_id = roles.id
where role_name like '%Junior%';

--  13. Вывести имена и зарплаты Middle специалистов:
select employer_name, monthly_salary, role_name from employers
left join employer_salary on employer_salary.employer_id = employers.id
left join salary on employer_salary.salary_id = salary.id
join roles_employer on roles_employer.employer_id = employers.id
join roles on roles_employer.role_id = roles.id
where role_name like '%Middle%';

--  14. Вывести имена и зарплаты Senior специалистов:
select employer_name, monthly_salary, role_name from employers
left join employer_salary on employer_salary.employer_id = employers.id
left join salary on employer_salary.salary_id = salary.id
join roles_employer on roles_employer.employer_id = employers.id
join roles on roles_employer.role_id = roles.id
where role_name like '%Senior%';

--  15. Вывести зарплаты Java разработчиков:
select employer_name, monthly_salary, role_name from employers
left join employer_salary on employer_salary.employer_id = employers.id
left join salary on employer_salary.salary_id = salary.id
join roles_employer on roles_employer.employer_id = employers.id
join roles on roles_employer.role_id = roles.id
where role_name like '%Java developer%';

--  16. Вывести зарплаты Python разработчиков:
select employer_name, monthly_salary, role_name from employers
left join employer_salary on employer_salary.employer_id = employers.id
left join salary on employer_salary.salary_id = salary.id
join roles_employer on roles_employer.employer_id = employers.id
join roles on roles_employer.role_id = roles.id
where role_name like '%Python developer%';

--  17. Вывести имена и зарплаты Junior Python разработчиков:
select employer_name, monthly_salary, role_name from employers
left join employer_salary on employer_salary.employer_id = employers.id
left join salary on employer_salary.salary_id = salary.id
join roles_employer on roles_employer.employer_id = employers.id
join roles on roles_employer.role_id = roles.id
where role_name like '%Junior Python developer%';

--  18. Вывести имена и зарплаты Middle JS разработчиков:
select employer_name, monthly_salary, role_name from employers
left join employer_salary on employer_salary.employer_id = employers.id
left join salary on employer_salary.salary_id = salary.id
join roles_employer on roles_employer.employer_id = employers.id
join roles on roles_employer.role_id = roles.id
where role_name like '%Middle JavaScript developer%';

--  19. Вывести имена и зарплаты Senior Java разработчиков:
select employer_name, monthly_salary, role_name from employers
left join employer_salary on employer_salary.employer_id = employers.id
left join salary on employer_salary.salary_id = salary.id
join roles_employer on roles_employer.employer_id = employers.id
join roles on roles_employer.role_id = roles.id
where role_name like '%Senior Java developer%';

--  20. Вывести зарплаты Junior QA инженеров:
select employer_name, monthly_salary, role_name from employers
left join employer_salary on employer_salary.employer_id = employers.id
left join salary on employer_salary.salary_id = salary.id
join roles_employer on roles_employer.employer_id = employers.id
join roles on roles_employer.role_id = roles.id
where role_name like '%Junior % QA engineer%';

--  21. Вывести среднюю зарплату всех Junior специалистов:
select avg(monthly_salary) as salary_avg_junior from employers
left join employer_salary on employer_salary.employer_id = employers.id
left join salary on employer_salary.salary_id = salary.id
join roles_employer on roles_employer.employer_id = employers.id
join roles on roles_employer.role_id = roles.id
where role_name like '%Junior%';

--  22. Вывести сумму зарплат JS разработчиков:
select sum(monthly_salary) as salary_sum_JS_developer from employers
left join employer_salary on employer_salary.employer_id = employers.id
left join salary on employer_salary.salary_id = salary.id
join roles_employer on roles_employer.employer_id = employers.id
join roles on roles_employer.role_id = roles.id
where role_name like '%JavaScript developer%';

--  23. Вывести минимальную ЗП QA инженеров:
select min(monthly_salary) as min_salary_QA_engineer from employers
left join employer_salary on employer_salary.employer_id = employers.id
left join salary on employer_salary.salary_id = salary.id
join roles_employer on roles_employer.employer_id = employers.id
join roles on roles_employer.role_id = roles.id
where role_name like '%QA engineer%';

--  24. Вывести максимальную ЗП QA инженеров:
select max(monthly_salary) as max_salary_QA_engineer from employers 
join employer_salary on employer_salary.employer_id = employers.id
join salary on employer_salary.salary_id = salary.id
join roles_employer on roles_employer.employer_id = employers.id
join roles on roles_employer.role_id = roles.id
where role_name like '%QA engineer%';


--  25. Вывести количество QA инженеров:
select role_name, count(employer_name) as count_QA_engineer from employers
left join employer_salary on employer_salary.employer_id = employers.id
left join salary on employer_salary.salary_id = salary.id
join roles_employer on roles_employer.employer_id = employers.id
join roles on roles_employer.role_id = roles.id
where role_name like '%QA engineer%'
group by role_name;

--  26. Вывести количество Middle специалистов:
select role_name, count(employer_name) as count_middle from employers
left join employer_salary on employer_salary.employer_id = employers.id
left join salary on employer_salary.salary_id = salary.id
join roles_employer on roles_employer.employer_id = employers.id
join roles on roles_employer.role_id = roles.id
where role_name like '%Middle%'
group by role_name;

--  27. Вывести количество разработчиков:
select role_name, count(employer_name) as count_developer from employers
left join employer_salary on employer_salary.employer_id = employers.id
left join salary on employer_salary.salary_id = salary.id
join roles_employer on roles_employer.employer_id = employers.id
join roles on roles_employer.role_id = roles.id
where role_name like '%developer%'
group by role_name;

--  28. Вывести фонд (сумму) зарплаты разработчиков:
select role_name, sum(monthly_salary) as salary_sum from employers
left join employer_salary on employer_salary.employer_id = employers.id
left join salary on employer_salary.salary_id = salary.id
join roles_employer on roles_employer.employer_id = employers.id
join roles on roles_employer.role_id = roles.id
where role_name like '%developer%'
group by role_name;

--  29. Вывести имена, должности и ЗП всех специалистов по возрастанию:
select employer_name, role_name, monthly_salary from employers
left join employer_salary on employer_salary.employer_id = employers.id
left join salary on employer_salary.salary_id = salary.id
left join roles_employer on roles_employer.employer_id = employers.id
left join roles on roles_employer.role_id = roles.id
order by monthly_salary asc;

--  30. Вывести имена, должности и ЗП всех специалистов по возрастанию 
--      у специалистов у которых ЗП от 1700 до 2300:
select employer_name, role_name, monthly_salary from employers
left join employer_salary on employer_salary.employer_id = employers.id
left join salary on employer_salary.salary_id = salary.id
left join roles_employer on roles_employer.employer_id = employers.id
left join roles on roles_employer.role_id = roles.id
where monthly_salary between 1700 and 2300
order by monthly_salary asc;

--  31. Вывести имена, должности и ЗП всех специалистов по возрастанию 
--      у специалистов у которых ЗП меньше 2300:
select employer_name, role_name, monthly_salary from employers
left join employer_salary on employer_salary.employer_id = employers.id
left join salary on employer_salary.salary_id = salary.id
left join roles_employer on roles_employer.employer_id = employers.id
left join roles on roles_employer.role_id = roles.id
where monthly_salary < 2300
order by monthly_salary asc;

--  32. Вывести имена, должности и ЗП всех специалистов по возрастанию 
--      у специалистов у которых ЗП равна 1100, 1500, 2000:
select employer_name, role_name, monthly_salary from employers
left join employer_salary on employer_salary.employer_id = employers.id
left join salary on employer_salary.salary_id = salary.id
left join roles_employer on roles_employer.employer_id = employers.id
left join roles on roles_employer.role_id = roles.id
where monthly_salary in (1100, 1500, 2000)
order by monthly_salary asc;

