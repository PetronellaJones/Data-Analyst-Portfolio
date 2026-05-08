-- Group by --Order by Clauses

select *
from employee_demographics;

select gender 
from employee_demographics
group by gender;
#Note can get the same from select distinct gender 
#So why 'group by'?: 

#DISTINCT: Use when you just want a clean, unique list of values without any calculations.
#GROUP BY: Use when you need to group data and run math or aggregations on those groups (like finding the average, count, or sum).
#'group by' rolls up all values into the output rows-making using aggregate functions easier

-- Select first_name 
-- From employee_demographics
-- group by gender;

#This doesn’t work because every column in the SELECT must either be aggregated (like COUNT, SUM, etc.) or included in the GROUP BY. 
#Since first_name is neither aggregated nor grouped, the query is invalid.
#If you wanted it to work, you’d either:
#add first_name to the GROUP BY, for example: 

SELECT gender 
FROM employee_demographics 
GROUP BY gender;

-- or

#apply an aggregate function to it:

SELECT gender, COUNT(first_name), count(age) 
FROM employee_demographics 
GROUP BY gender;
-- here the count function tells us how many values are in the columns
 
#we can see below that we can categorize by different columns such as: salaries and occupations
#Note that the office manager position now has 2 rows due to the different salaries.
select occupation,salary 
from employee_salary
group by occupation,salary;

-- AGGREGATE FUNCTIONS:

select gender,avg(age),max(age),min(age)
from employee_demographics
group by gender;

-- ORDER BY


select *
from employee_demographics
order by first_name asc;


select *
from employee_demographics
order by first_name desc;


select *
from employee_demographics
order by first_name asc;


select *
from employee_demographics
order by gender,age desc;

select *
from employee_demographics
order by age, gender; 
#It works exactly as intended—just sometimes the second column has no visible effect.
#It just looks like gender is ignored when ages are all different
#Note the order of the columns you use is EXTREMELY important!!!
#SQL sorts left to right, and only uses the next column if there’s a tie.

select *
from employee_demographics
order by gender,age; 
#Note you can also "shorthand" the column names eg: gender (5) and age (4) 
#instead of calling the column by it's name
#THIS IS NOT RECOMMENDED AS COLUMN SHIFTS CAN MESS WITH YOUR CODE!  

-- Best PRACTICE: USE COLUMN NAMES!!!
