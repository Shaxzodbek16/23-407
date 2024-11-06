create table if not exists position
(
    id             BIGSERIAL PRIMARY KEY,
    position_title varchar(150)
);


create table if not exists employees
(
    id       bigserial primary key,
    name     varchar(50),
    gender   varchar(50),
    age      int,
    position int references position (id) on delete cascade
);

insert into position (position_title)
values ('Human resource'),
       ('Software engineer'),
       ('Tester'),
       ('Product Analyst'),
       ('Designer');


insert into employees (id, name, gender, age, position)
values (1, 'Leandra', 'Ilyinykh', 1, 1);
insert into employees (id, name, gender, age, position)
values (2, 'Juliane', 'Worviell', 2, 2);
insert into employees (id, name, gender, age, position)
values (3, 'Silvia', 'Sindle', 3, 3);
insert into employees (id, name, gender, age, position)
values (4, 'Isidro', 'Pedroni', 4, 4);
insert into employees (id, name, gender, age, position)
values (5, 'Allin', 'Mundy', 5, 5);
insert into employees (id, name, gender, age, position)
values (6, 'Bogey', 'Cordon', 6, 1);
insert into employees (id, name, gender, age, position)
values (7, 'Hyacinthie', 'Pedwell', 7, 2);
insert into employees (id, name, gender, age, position)
values (8, 'Bowie', 'Joskowitz', 8, 3);
insert into employees (id, name, gender, age, position)
values (9, 'Jada', 'Duddle', 9, 4);
insert into employees (id, name, gender, age, position)
values (10, 'Hanson', 'McCorrie', 10, 5);
insert into employees (id, name, gender, age, position)
values (11, 'Pierette', 'Paulton', 11, 1);
insert into employees (id, name, gender, age, position)
values (12, 'Agace', 'Brasener', 12, 2);
insert into employees (id, name, gender, age, position)
values (13, 'Orv', 'de Werk', 13, 3);
insert into employees (id, name, gender, age, position)
values (14, 'Tommy', 'Cottell', 14, 4);
insert into employees (id, name, gender, age, position)
values (15, 'Hillary', 'Piche', 15, 5);
insert into employees (id, name, gender, age, position)
values (16, 'Melvin', 'Yanshinov', 16, 1);
insert into employees (id, name, gender, age, position)
values (17, 'Dulcie', 'Buntine', 17, 2);
insert into employees (id, name, gender, age, position)
values (18, 'Arman', 'Ebertz', 18, 3);
insert into employees (id, name, gender, age, position)
values (19, 'Fancy', 'Eddington', 19, 4);
insert into employees (id, name, gender, age, position)
values (20, 'Derrik', 'Chapman', 20, 5);


create database university;
create table if not exists students
(
    student_id      SERIAL primary key,
    first_name      varchar(50),
    last_name       varchar(50),
    birthdate       date,
    enrollment_year int
);

insert into students (first_name, last_name, birthdate, enrollment_year)
values ('John', 'Doe', '2002-05-14', 2020),
       ('Jane', 'Smith', '2001-09-23', 2019),
       ('Alice', 'Johnson', '2003-02-11', 2021),
       ('Bob', 'Brown', '2000-12-01', 2018),
       ('Charlie', 'Davis', '2002-07-19', 2020),
       ('Diana', 'Miller', '2001-03-28', 2019),
       ('Eve', 'Wilson', '2002-11-15', 2020),
       ('Frank', 'Moore', '2003-04-10', 2021),
       ('Grace', 'Taylor', '2000-08-05', 2018),
       ('Hank', 'Anderson', '2001-01-20', 2019),
       ('Ivy', 'Thomas', '2003-06-30', 2021),
       ('Jack', 'Jackson', '2002-10-25', 2020),
       ('Kathy', 'White', '2000-09-12', 2018),
       ('Leo', 'Harris', '2001-05-06', 2019),
       ('Mona', 'Martin', '2002-03-17', 2020),
       ('Nina', 'Garcia', '2003-12-22', 2021),
       ('Oscar', 'Clark', '2000-11-11', 2018),
       ('Paul', 'Rodriguez', '2001-07-07', 2019),
       ('Quincy', 'Lewis', '2002-04-02', 2020),
       ('Rita', 'Walker', '2003-09-18', 2021);
-- 1
select *
from students;
-- 2
select *
from students
where enrollment_year > 2017;

-- 3
select enrollment_year, count(*) AS student_count
from students
group by enrollment_year
order by enrollment_year;