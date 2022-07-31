# Pewlett-Hackard-Analysis

## Overview
The purpose of this analysis is to determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program. This has been called the "silver tsunami".

## Results
- There are 72,458 employees that fall into the range of employees ready for retirement, this is based on a birthdate between January 1, 1952 and December 31, 1955. We have excluded the employees that have already left Pewlett-Hackard. 

- There are 50,842 in senior positions ready for retirement, and that is 70% of the total getting ready to retire. This query we use the aggregate function, SELECT COUNT, and the GROUP BY and ORDER BY statements.

![Retiring Titles](https://github.com/pcar22/Pewlett-Hackard-Analysis/blob/main/Analysis%20Projects%20Folder/Pewlett-Hackard-Analysis%20Folder/Screen%20Captures/retiring_titles.png)

- Based on a birth year of 1965, there are 1,549 employees that are eligible for mentorship. This query we use the aggregate function, SELECT COUNT on the mentorship_program table.

![Mentorship Program](https://github.com/pcar22/Pewlett-Hackard-Analysis/blob/main/Analysis%20Projects%20Folder/Pewlett-Hackard-Analysis%20Folder/Screen%20Captures/Mentorship_Eligible.png)

- TEst




### Resources
**departments.csv, dept_emp.csv, dept_manager.csv, employees.csv, salaries.csv & titles.csv**

**Postgres11, pgAdmin4**

### 
