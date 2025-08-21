# Ecommerce-Dataset

### Project Overview
This project focuses on analyzing an Employee Attrition dataset to uncover insights about workforce demographics, salaries, departmental distributions, and attrition trends within the organization. The goal is to help HR teams make data-driven decisions around employee retention, fair compensation, and workload management.

### Data Source
The primary dataset I used for this analysis is the **“HR_Employee_Attrition.xls”** file. It contains detailed information on each employee in the company, including their salary, departmental distribution within the company, years of experience, working hours, and attrition trends within the organisation.

### Tool Used
SQL - MySQL

## Steps Taken in Analysis
### Data Preparation
   - Created a working table *hea* from *hr_employee_attrition* to preserve original data.
   - Cleaned and standardized columns (e.g., Over18 → Yes).
   - Added a calculated column Salary using:
     
      *UPDATE hea*

      *SET salary = hourlyrate * standardhours;*
     
### Data Exploration
   After cleaning, I explored the dataset to understand its structure and distribution. Exploratory steps included:
   - Calculating the Average Salary by Department
   - Checking the Number of Employees by Department
   - Calculating the Attrition Rate by Department
   - Analyzing Salary Distribution (by Age & Department)
   - Examining Gender Distribution by Department
   - Counting Employees Working Overtime
   - Identifying Department with Highest Retention (Years with Current Manager)
   - Calculating the Average Salary per Job Role
   - Analyzing Attrition by Years of Service
Each of these steps was executed using SQL queries to generate insights.

### Data Insights
   Using the cleaned dataset, I performed analytical queries to uncover patterns and trends:
   - Salary Distribution: Identified departments with the highest and lowest average salaries.
   - Attrition Trends: Compared attrition-prone departments with more stable ones.
   - Diversity Assessment: Examined gender distribution across departments.
   - Tenure vs. Attrition: Analyzed the correlation between years of service and attrition rates.
   - Workload Balance: Explored workload distribution through overtime analysis.

### Tools & Technologies
- SQL (MySQL) for data cleaning & analysis
- Employee Attrition Dataset (provided as .csv file)

### Expected Business Impact
- Retention Strategies: Pinpoint departments with high attrition for targeted HR interventions.
- Fair Compensation: Identify pay gaps across departments and roles to promote salary equity.
- Workload Balance: Use overtime insights to prevent employee burnout.
- Diversity Policies: Support gender balance initiatives in departments with skewed distributions.

### Future Improvements
- Data Visualization: Build interactive dashboards using Power BI or Tableau.
- Predictive Analytics: Develop models to forecast employee attrition risk.
- HR Dashboard: Create real-time monitoring tools for HR managers.

This project demonstrates the use of SQL in performing data cleaning, exploration, and analysis on an employee attrition dataset. The findings provide actionable insights into workforce management, salary distribution, and attrition risks. By leveraging these insights, organizations can design effective HR strategies to improve employee retention, promote fairness, and enhance productivity.
