--������� employers 1) ������� ������� employers- id. serial, primary key,- employer_name. Varchar(50), not null 2) ��������� ������� employers 70 ��������.

create table employers(
   id serial primary key,
   employer_name varchar (50) unique not null
);
insert into employers(employer_name)
values ('������� ����'),
	   ('���������� ����'),
	   ('���������� �������'),
	   ('����� ����'),
	   ('�������� �������'),
	   ('������� ������'),
	   ('�������� ������'),
	   ('����������� �������'),
	   ('�������� ��������'),
	   ('������ ����'),
	   ('������� ������'),
	   ('������ ������'),
	   ('�������� ������'),
	   ('������� �����'),
	   ('������� ��������'),
	   ('������� ����'),
	   ('�������� �����'),
	   ('������ ���������'),
	   ('����� ����'),
	   ('��������� ���������'),
	   ('������ ���'),
	   ('��������� ��������'),
	   ('����� ����'),
	   ('������� ��������'),
	   ('������� �������'),
	   ('������� �������'),
	   ('����� ���������'),
	   ('������ ����'),
	   ('������� �������'),
	   ('�������� ��������'),
	   ('�������� ������'),
	   ('�������� ����'),
	   ('������� ������'),
	   ('�������� ������'),
	   ('�������� ��������'),
	   ('�������� ������'),
	   ('�������� �����'),
	   ('�������� �������'),
	   ('�������� �����'),
	   ('�������� ���'),
	   ('��������� �������'),
	   ('������ ������'),
	   ('�������� ������'),
	   ('���������� �������'),
	   ('������� �����'),
	   ('�������� �����'),
	   ('������ ������'),
	   ('����� ���'),
	   ('������� ���������'),
	   ('��������� �����'),
	   ('��������� �������'),
	   ('�������� ������'),
	   ('������� ���������'),
	   ('�������� �����'),
	   ('������� ������'),
	   ('����� �������'),
	   ('������� ��������'),
	   ('����� ������'),
	   ('�������� ������'),
	   ('������� ������'),
	   ('������ ����'),
	   ('������� ����'),
	   ('������� �������'),
	   ('�������� ����'),
	   ('�������� ����'),
	   ('������� ������'),
	   ('�������� ������'),
	   ('������� ��������'),
	   ('��������� ����'),
	   ('��������� �������');
	  
--������� salary 3) ������� ������� salary - id. Serial primary key, - monthly_salary. Int, not null
--4) ��������� ������� salary 15 ��������:
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

--������� employer_salary
--5) ������� ������� employer_salary
-- id. Serial primary key,
-- employee_id. Int, not null, unique
-- salary_id. Int, not null
--6) ��������� ������� employer_salary 40 ��������:
-- � 10 ����� �� 40 �������� �������������� employee_id

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

--������� roles
--7) ������� ������� roles
-- id. Serial primary key,
-- role_name. int, not null, unique
--8) �������� ��� ������ role_name � int �� varchar(30)
--9) ��������� ������� roles 20 ��������:

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
	
--������� roles_employer
--10) ������� ������� roles_employer
-- id. Serial primary key,
-- employer_id. Int, not null, unique (������� ���� ��� ������� employers, ���� id)
-- role_id. Int, not null (������� ���� ��� ������� roles, ���� id)
--11) ��������� ������� roles_employee 40 ��������:
	
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
