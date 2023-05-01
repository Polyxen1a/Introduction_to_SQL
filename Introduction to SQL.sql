create table employee (
id bigserial not null primary key,
first_name varchar(50) not null,
last_name varchar(50) not null,
gender varchar(6) not null default 'cat',
age int not null
);

insert into employee (first_name, last_name, gender, age) values ('Polly', 'Olue', 'f', 24);
insert into employee (first_name, last_name, gender, age) values ('Tomas', 'Jose', 'm', 26);
insert into employee (first_name, last_name, age) values ('Joseph', 'Shee', 3);

select * from employee;

update employee set first_name = 'William', last_name = 'Cherry', gender = 'm', age = 21 where id = 1;
delete from employee where id = 2;

select * from employee;