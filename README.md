# Ecommerce-Dataset

### Project Overview
This project focuses on analyzing an Employee Attrition dataset to uncover insights about workforce demographics, salaries, departmental distributions, and attrition trends within the organization. The goal is to help HR teams make data-driven decisions around employee retention, fair compensation, and workload management.

### Data Source
The primary dataset I used for this analysis is the **“HR_Employee_Attrition.xls”** file. It contains detailed information on each employee in the company, including their salary, departmental distribution within the company, years of experience, working hours, and attrition trends within the organisation.

### Tool Used
SQL - MySQL

### Steps Taken in Analysis
1. Data Preparation
   - Created a working table hea from hr_employee_attrition to preserve original data.
   - Cleaned and standardized columns (e.g., Over18 → Yes).
   - Added a calculated column Salary using:
      **UPDATE hea**
      **SET salary = hourlyrate * standardhours;**
