SELECT * 
FROM employee_salary
WHERE first_name = "Leslie";


Select *
from employee_salary
where salary > 50000;

select * 
from employee_salary
where salary >= 50000;


select *
From employee_salary
where salary < 50000;


Select *
from employee_salary
where salary <= 50000;


select *
from employee_demographics
where gender = "female";


select * 
from employee_demographics 
where gender != "female";


select * 
From employee_demographics
where birth_date > '1985-01-01';


-- AND OR NOT -- Logical operators


select *
from employee_demographics 
where birth_date > '1985-01-01'
and gender = 'male';

select *
from employee_demographics
where birth_date > '1985-01-01'
or gender = 'male';
#here you will see mix of male and female and also pre-and post 1985 births because one or another flag was triggered 

select *
from employee_demographics
where birth_date > '1985-01-01'
or not gender = 'male';

select *
from employee_demographics
where first_name = 'Leslie'AND age = 44;

select * 
from employee_demographics 
where (first_name = 'Leslie' AND age = 44) or age > 55;

-- LIKE Statement
-- % ((means anything) and '_' (specific value)

select * 
from employee_demographics
where first_name like 'Jer%';
#here we are looking for someone (lets assume spelling is unknown)

select *
from employee_demographics
where first_name like '%er%';
#here the database looks for everything with 'ER' to return an output
 
select * 
from employee_demographics
where first_name like 'a%';
#this will show every person whose name starts with 'A'.

select * 
from employee_demographics
where first_name like 'a__';
#note
#here we are looking for a name that starts with 'A' and has 2 characters (no more,no less) following
#if we wanted 'Andy' we could add another underscore (4 letters) 
#if we wanted 'April' we could write: like 'a___%'

select * 
from employee_demographics
where birth_date like '1989%';