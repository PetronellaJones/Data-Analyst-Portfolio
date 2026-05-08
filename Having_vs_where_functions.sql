-- Having vs Where

select gender, avg(age)
from employee_demographics
where avg(age) > 40
group by gender;

#this will not work because the group by has not yet happened 
#SQL has a specific order of operations and it WILL NOT DEVIATE FROM THIS!
#The order of operations are: FROM, WHERE, GROUP BY,AGGREGATES,HAVING, SELECT and finally ORDER BY.

select gender,avg(age)
from employee_demographics
group by gender
having avg(age) > 40;

#here this works because groups were made FIRST then averages were calculated on that group


select *
from employee_salary;


select occupation, avg(salary)
from employee_salary
where occupation like '%manager%'
group by occupation
having AVG(salary) > 75000;