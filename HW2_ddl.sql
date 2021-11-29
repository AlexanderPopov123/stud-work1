--Таблица employers 1) Создать таблицу employers- id. serial, primary key,- employer_name. Varchar(50), not null 2) Наполнить таблицу employers 70 строками.

create table employers(
   id serial primary key,
   employer_name varchar (50) unique not null
);
insert into employers(employer_name)
values ('Федотов Егор'),
	   ('Терентьева Анна'),
	   ('Тихомирова Валерия'),
	   ('Родин Илья'),
	   ('Михайлов Алексей'),
	   ('Смирнов Никита'),
	   ('Карташов Родион'),
	   ('Кожевникова Евгения'),
	   ('Морозова Ангелина'),
	   ('Иванов Артём'),
	   ('Смирнов Андрей'),
	   ('Фирсов Михаил'),
	   ('Морозова Дарина'),
	   ('Антонов Давид'),
	   ('Ульянов Всеволод'),
	   ('Захаров Эмир'),
	   ('Кочетова Алиса'),
	   ('Грачев Александр'),
	   ('Попов Иван'),
	   ('Кузнецова Елизавета'),
	   ('Козлов Лев'),
	   ('Чернышева Кристина'),
	   ('Лукин Артём'),
	   ('Минаева Светлана'),
	   ('Наумова Варвара'),
	   ('Федоров Дмитрий'),
	   ('Попов Александр'),
	   ('Маслов Егор'),
	   ('Королев Дмитрий'),
	   ('Прохоров Владимир'),
	   ('Коршунов Андрей'),
	   ('Воробьев Семён'),
	   ('Борисов Даниил'),
	   ('Логинова Есения'),
	   ('Анисимов Вячеслав'),
	   ('Мартынов Сергей'),
	   ('Степанов Антон'),
	   ('Алексеев Николай'),
	   ('Степанов Данил'),
	   ('Бессонов Лев'),
	   ('Родионова Валерия'),
	   ('Князев Максим'),
	   ('Рыбакова Ульяна'),
	   ('Герасимова Валерия'),
	   ('Фадеева София'),
	   ('Майорова Софья'),
	   ('Акимов Кирилл'),
	   ('Шилов Лев'),
	   ('Макаров Александр'),
	   ('Михайлова Сафия'),
	   ('Ларионова Евгения'),
	   ('Мальцева Таисия'),
	   ('Сафонов Александр'),
	   ('Семенова Дарья'),
	   ('Пирогов Данила'),
	   ('Шаров Тимофей'),
	   ('Новиков Вячеслав'),
	   ('Орлов Никита'),
	   ('Некрасов Даниил'),
	   ('Краснов Степан'),
	   ('Титова Анна'),
	   ('Соколов Марк'),
	   ('Лазарев Евгений'),
	   ('Полякова Анна'),
	   ('Кулакова Ника'),
	   ('Соболев Даниил'),
	   ('Степанов Андрей'),
	   ('Карпова Виктория'),
	   ('Степанова Нина'),
	   ('Медведева Варвава');
	  
--Таблица salary 3) Создать таблицу salary - id. Serial primary key, - monthly_salary. Int, not null
--4) Наполнить таблицу salary 15 строками:
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

create table salary(
	id serial primary key,
	monthly_salary int not null
);	 

insert into salary(monthly_salary)
values  (1000),
		(1100),
		(1200),
		(1300),
		(1400),
		(1500),
		(1600),
		(1700),
		(1800),
		(1900),
		(2000),
		(2100),
		(2200),
		(2300),
		(2400),
		(2500);

--Таблица employer_salary
--5) Создать таблицу employer_salary
-- id. Serial primary key,
-- employee_id. Int, not null, unique
-- salary_id. Int, not null
--6) Наполнить таблицу employer_salary 40 строками:
-- в 10 строк из 40 вставить несуществующие employee_id

create table employer_salary(
id serial primary key,
employer_id int unique not null,
salary_id int not null
);


insert into employer_salary(employer_id, salary_id)
values  (1, 3),
		(2, 1),
		(3, 8),
		(4, 11),
		(5, 2),
		(6, 7),
		(8, 3),
		(9, 14),
		(10, 11),
		(11, 1),
		(12, 5),
		(13, 7),
		(14, 2),
		(15, 10),
		(16, 13),
		(17, 8),
		(18, 5),
		(19, 7),
		(20, 15),
		(21, 16),
		(22, 3),
		(23, 4),
		(24, 14),
		(25, 12),
		(26, 2),
		(27, 8),
		(28, 10),
		(29, 11),
		(30, 1),
		(81, 3),
		(82, 10),
		(83, 4),
		(84, 11),
		(85, 7),
		(86, 5),
		(87, 3),
		(88, 12),
		(89, 1),
		(90, 9);

insert into employer_salary(employer_id, salary_id)
values  (7, 10);

--Таблица roles
--7) Создать таблицу roles
-- id. Serial primary key,
-- role_name. int, not null, unique
--8) Поменять тип столба role_name с int на varchar(30)
--9) Наполнить таблицу roles 20 строками:

create table roles(
	id serial primary key,
	role_name int unique not null
);

alter table roles 
alter column role_name type varchar(30);

insert into roles (role_name)
values  ('Junior Python developer'),
		('Middle Python developer'),
		('Senior Python developer'),
		('Junior Java developer'),
		('Middle Java developer'),
		('Senior Java developer'),
		('Junior JavaScript developer'),
		('Middle JavaScript developer'),
		('Senior JavaScript developer'),
		('Junior Manual QA engineer'),
		('Middle Manual QA engineer'),
		('Senior Manual QA engineer'),
		('Project Manager'),
		('Designer'),
		('HR'),
		('CEO'),
		('Sales manager'),
		('Junior Automation QA engineer'),
		('Middle Automation QA engineer'),
		('Senior Automation QA engineer');
	
--Таблица roles_employer
--10) Создать таблицу roles_employer
-- id. Serial primary key,
-- employer_id. Int, not null, unique (внешний ключ для таблицы employers, поле id)
-- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
--11) Наполнить таблицу roles_employee 40 строками:
	
create table roles_employer(
	id serial primary key,
	employer_id int unique not null,
	role_id int not null,
	foreign key (employer_id)
	references employers(id),
	foreign key (role_id)
	references roles(id)
);

insert into roles_employer(employer_id, role_id)
values	(1, 3),
		(2, 6),
		(3, 10),
		(4, 1),
		(5, 2),
		(6, 14),
		(7, 9),
		(8, 7),
		(9, 4),
		(10, 5),
		(11, 8),
		(12, 11),
		(13, 12),
		(14, 18),
		(15, 20),
		(16, 17),
		(17, 15),
		(18, 19),
		(19, 13),
		(20, 16),
		(21, 5),
		(22, 10),
		(23, 2),
		(24, 8),
		(25, 3),
		(26, 1),
		(27, 12),
		(28, 14),
		(29, 6),
		(30, 18),
		(31, 7),
		(32, 7),
		(33, 4),
		(34, 10),
		(35, 11),
		(36, 10),
		(37, 5),
		(38, 18),
		(39, 19),
		(40, 17);
