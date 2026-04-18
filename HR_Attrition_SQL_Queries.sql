create database HR_Attrition;

create table employee_attrition;

select * from employee_attrition;

-- Show the first first 20 rows from the table.
select * from employee_attrition limit 20;

-- Find the total number of employees in the company.
select count(employeecount) from employee_attrition;

-- Find how many employees have attrition ='YES'.
select count(*) as attrition_count from employee_attrition where attrition='Yes';

-- show attrition  count grouped by department.
select department, count(*) from employee_attrition where attrition='YES' group by department order by attrition desc; 

-- Find average monthly income for each job role.
select JobRole, avg (monthlyincome) as avg_monthly_income from employee_attrition group by JobRole order by avg_monthly_income desc;