--Employee_Database_challenge.sql Deliverable #1
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
-- INTO retirement_titles
FROM employees AS e
	JOIN titles as t
	ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

-- Deliverable #1b
SELECT DISTINCT ON (emp_no) emp_no,
first_name, 
last_name,
title
-- INTO unique_titles
FROM retirement_titles AS rt
WHERE (rt.to_date = '9999-01-01')
ORDER BY emp_no, from_date DESC;
-- SELECT * FROM unique_titles;

-- Number of employees by their 
-- most recent job title who are about to retire.
SELECT COUNT(u.emp_no), u.title
-- INTO retiring_titles
FROM unique_titles AS u
GROUP BY "title"
ORDER BY count DESC;
-- SELECT * FROM retiring_titles;

-- Deliverable 2: The Employees Eligible for the Mentorship Program
SELECT DISTINCT ON (e.emp_no) e.emp_no,
e.first_name, 
e.last_name,
e.birth_date,
de.from_date,
de.to_date,
t.title
-- INTO mentorship_program
FROM employees AS e
	INNER JOIN titles AS t
	ON (e.emp_no = t.emp_no)
	INNER JOIN
	dept_emp AS de
	ON (t.emp_no = de.emp_no)
-- 	ON (t.from_date = de.from_date)
WHERE t.to_date = '9999-01-01'
	AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY emp_no, title DESC;













-- Testing below this line
-- SELECT COUNT(Last_name) AS "Retiring"
-- FROM employees;

-- SELECT * FROM mentorship_program_expanded;
-- select * from retiring_titles;
-- SELECT * FROM retirement_info;
-- SELECT * FROM employees;
-- SELECT * FROM titles;
-- SELECT * FROM emp_info
-- SELECT * FROM mentorship_program;
-- SELECT * FROM unique_titles;
-- SELECT * COUNT FROM mentorship_program_expanded;

-- SELECT emp_no, count(*) AS column_count
-- FROM mentorship_program_expanded;
-- WHERE emp_no = 'emp_no'
-- Group BY emp_no;

-- SELECT COUNT "title"
-- 	FROM titles;

-- select count (*)
-- from retiring_titles
-- Where title = Staff;



-- Experiementing with different order to see if it make a difference
-- WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
-- AND t.to_date = '9999-01-01'
-- ORDER BY emp_no, to_date DESC;
-- SELECT DISTINCT ON (rt.emp_no) 
-- 	rt.emp_no,
-- 	rt.first_name,
-- 	rt.last_name,
-- 	rt.title,
-- 	d.dept_name
-- INTO unique_titles_department
-- FROM retirement_titles as rt
-- INNER JOIN dep_emp as de
-- ON (rt.emp_no = de.emp_no)
-- INNER JOIN departments as d
-- ON (d.dept_no = de.dept_no)
-- ORDER BY rt.emp_no, rt.to_date DESC; 
-- SELECT
-- 	DISTINCT ON (emp_no)from_date,
-- 		title
-- FROM
-- 	titles
-- ORDER BY
-- 	emp_no,
-- 	title;
-- SELECT 	emp_no, title, count(*)
-- FROM titles
-- GROUP BY 1, 2
-- ORDER BY count(*) DESC

-- SELECT COUNT (*) AS "Retiring 1964"
-- FROM mentorship_program_expanded;

-- SELECT DISTINCT ON (e.emp_no) e.emp_no,
-- e.first_name, 
-- e.last_name,
-- e.birth_date,
-- de.from_date,
-- de.to_date,
-- t.title
-- -- INTO mentorship_program_expanded
-- FROM employees AS e
-- 	INNER JOIN titles AS t
-- 	ON (e.emp_no = t.emp_no)
-- 	INNER JOIN
-- 	dept_emp AS de
-- 	ON (t.emp_no = de.emp_no)
-- -- 	ON (t.from_date = de.from_date)
-- WHERE t.to_date = '9999-01-01'
-- 	AND (e.birth_date BETWEEN '1966-01-01' AND '1966-12-31')
-- ORDER BY emp_no, title DESC;

-- DROP TABLE mentorship_program_expanded;