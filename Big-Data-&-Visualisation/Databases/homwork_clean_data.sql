select *
from employees;

alter table employees rename column `_<>employee_id` to employee_id;

select first_name, concat(upper(substring(first_name, 1, 1)), lower(substring(first_name, 2)))
from employees;

update employees
set first_name=concat(upper(substring(first_name, 1, 1)), lower(substring(first_name, 2)));


select last_name, concat(upper(substring(last_name, 1, 1)), lower(substring(last_name, 2)))
from employees;

update employees
set last_name=concat(upper(substring(last_name, 1, 1)), lower(substring(last_name, 2)));

select department, concat(upper(substring(department, 1, 1)), lower(substring(department, 2)))
from employees;

update employees
set department=concat(upper(substring(department, 1, 1)), lower(substring(department, 2)));


alter table employees rename column `phone_NUMBER` to `phone`;

select phone, regexp_replace(phone, '[()/<>=+-]', '')
from employees;

update employees
set phone=regexp_replace(phone, '[()/<>=+-]', '');


select phone,
       concat(substring(phone, 1, 3), '-', substring(phone, 4, 3), '-', substring(phone, 7))
from employees;

update employees
set phone=concat(substring(phone, 1, 3), '-', substring(phone, 4, 3), '-', substring(phone, 7));
set phone = concat(substring(phone, 1, 3), '-', substring(phone, 4, 3), '-', substring(phone, 7));

alter table employees rename column `salary$$$` to `salary`;

select *
from employees;

