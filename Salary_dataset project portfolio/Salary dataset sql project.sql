/* This portfolio project is for data exploration */


/*create database salary
use salary */

/* inspect dataset*/
select *
from Salary_Data;

-- Creating a stored procedure so that I can use this select statement more that once 
 create procedure SelectData
 as
	select *
from Salary_Data
go;


/* What kind of jobs are there */
exec SelectData

select distinct [Job Title]
from Salary_Data
order by [Job Title];



/* Find out the ages of employeed individuals */
exec SelectData;

select distinct age
from Salary_Data
order by age;


/* How many individuals per age */
select age, count(age)
from Salary_Data
group by age
order by age;


/* look for null data and delete*/
select *
from Salary_Data
where age is null

delete from Salary_Data
where age is null;


/*because it allows null values, alter it not to allow any null values*/
alter table Salary_Data
alter column age float not null;


/* count the number of females vs males per age*/
with female as
( select age, count(gender) as Number_of_Females
from Salary_Data
where gender = 'Female'
group by age
)
select *
from female
order by age;

with male as
(select age, count(gender) as Number_of_Males
from Salary_Data
where gender = 'Male'
group by age
)
select *
from male
order by age;


/* Finding the average salary for each job */
select [Job Title], avg(salary) as Average_Salary
from Salary_Data
group by [Job Title]
