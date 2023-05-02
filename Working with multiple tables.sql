---1.
create table city (city_id bigserial not null primary key, city_name varchar(30) not null);
alter table employee add city_id int;
alter table employee add constraint city_id foreign key(city_id) references city(city_id);
insert into city (city_name) values ('Moscow');
insert into city (city_name) values ('Kaluga');
insert into city (city_name) values ('Yaroslavl');
insert into city (city_name) values ('Krasnoyarsk');
insert into city (city_name) values ('Voronezh');

update employee set city_id=1 where id=1;
update employee set city_id=3 where id=3;
update employee set city_id=4 where id=4;
update employee set city_id=3 where id=5;

--- 2.
select first_name, last_name, city_name from employee
inner join city on employee.city_id=city.city_id;

select first_name, last_name, city_name from city
left join employee on city.city_id=employee.city_id;

select first_name, city_name from employee full join city on employee.city_id=city.city_id;

select first_name, city_name from employee cross join city;

select city_name from city
left join employee on city.city_id=employee.city_id
where employee.first_name is null;

select * from employee;

select * from city;