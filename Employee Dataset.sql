select * from hr_employee_attrition;

create table hea like hr_employee_attrition;

insert into hea select * from hr_employee_attrition;
select * from hea;

select distinct over18 from hea;

update hea
set over18 = 'Yes'
where over18 like 'Y%';

select hourlyrate, standardhours, hourlyrate * standardhours as salary from hea;

alter table hea
add column Salary int;

update hea
set salary = hourlyrate * standardhours;

select * from hea;

-- Average Salary by Department --
SELECT 
    department, ROUND(AVG(salary)) AS avg_salary
FROM
    hea
group by department
order by avg_salary desc;

-- Number of Employees by Department --
SELECT 
    department, COUNT(*) AS employees
FROM
    hea
GROUP BY department
ORDER BY employees desc;

-- Attrition by Department --
SELECT 
    department,
    COUNT(*) AS total_employee,
    SUM(CASE
        WHEN attrition = 'yes' THEN 1
        ELSE 0
    END) AS attrition_count,
    ROUND(SUM(CASE
                WHEN attrition = 'yes' THEN 1
                ELSE 0
            END) * 100 / COUNT(*),
            2) AS attrition_rate
FROM
    hea
group by department
order by attrition_rate;

-- Amount paid to each Employee --
SELECT 
    age, department, salary
FROM
    hea
order by salary;

-- Gender distribution by Department --
SELECT 
    department, gender, COUNT(*) AS total
FROM
    hea
group by department, gender
order by department, total;

-- Numer of people that worked Overtime --
SELECT 
    overtime, COUNT(*) AS employees
FROM
    hea
group by overtime
order by employees desc;

select * from hea;

-- Department with Highest Retention --
SELECT 
    department, SUM(yearswithcurrmanager) AS total_years
FROM
    hea
GROUP BY department
ORDER BY total_years desc; 

-- Average Salary per Job Role -- 
SELECT 
    jobrole, round(AVG(salary)) AS avg_salary
FROM
    hea
GROUP BY jobrole
ORDER BY avg_salary;

-- Years of Service vs Attrition--
SELECT 
    totalworkingyears,
    SUM(CASE
        WHEN attrition = 'yes' THEN 1
        ELSE 0
    END) AS attrition_count
FROM
    hea
group by totalworkingyears
order by attrition_count;
