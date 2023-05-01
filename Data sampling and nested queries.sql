-- 1.

insert into employee (first_name, last_name, gender, age)
values ('Pier', 'Jane', 'm', 72);
insert into employee (first_name, last_name, gender, age)
values ('Jenny', 'Scott', 'f', 29);
insert into employee (first_name, last_name, gender, age)
values ('Polly', 'Olue', 'f', 24);
insert into employee (first_name, last_name, gender, age)
values ('Tomas', 'Jose', 'm', 26);
insert into employee (first_name, last_name, age)
values ('Joseph', 'Shee', 3);
select first_name as имя, last_name as фамилия from employee;
select * from employee where age<30 or age>50;
select * from employee where age between 30 and 50;
select * from employee order by last_name desc;
select * from employee where first_name like '_ _ _ _ _%';
select * from employee where length(first_name) > 4;

-- 2.
update employee set first_name = '' where id = 1;
select first_name as имя, sum(age) as суммарный_возраст
from employee group by имя;
select first_name, age from employee
where age = (select min(age) from employee);
select first_name, age from employee
where age in (select max(age)
from employee group by first_name
having count(first_name)>1) order by 2;
