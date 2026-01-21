-- =========================================================
-- SQL Queries for Employee Payroll Management Database
-- Course: CPS510
-- Description: Demonstration queries for reporting and analysis
-- =========================================================

-- 1. List all departments and their status
SELECT dept_name AS "Department Name",
       dept_status AS "Status"
FROM department
ORDER BY dept_name;

-- 2. List all employees and their departments
SELECT emp_name AS "Employee Name",
       dept_id AS "Department ID"
FROM employee
ORDER BY emp_name;

-- 3. Average salary by department
SELECT dept_id AS "Department ID",
       ROUND(AVG(sal_amount), 2) AS "Average Salary"
FROM salary
GROUP BY dept_id
ORDER BY "Average Salary" DESC;

-- 4. Latest payroll transactions
SELECT transaction_id AS "Transaction ID",
       emp_id AS "Employee",
       gross_total AS "Gross Pay",
       date_of_issue AS "Issued On"
FROM payroll
ORDER BY date_of_issue DESC
FETCH FIRST 5 ROWS ONLY;

-- 5. Total leave requests per employee
SELECT emp_id AS "Employee",
       COUNT(*) AS "Total Leave Requests"
FROM leave_request
GROUP BY emp_id
ORDER BY "Total Leave Requests" DESC;

-- 6. Employee payroll details (multi-table join)
SELECT
  e.emp_name AS "Employee Name",
  d.dept_name AS "Department",
  p.transaction_id AS "Transaction ID",
  p.gross_total AS "Gross Pay",
  p.date_of_issue AS "Date Issued"
FROM employee e
JOIN department d ON e.dept_id = d.dept_id
JOIN payroll p ON e.emp_id = p.emp_id
JOIN salary s ON p.sal_id = s.sal_id
ORDER BY p.gross_total DESC;

-- 7. Average total earnings by department (using view)
SELECT dept_name AS "Department",
       ROUND(AVG(total_earnings), 2) AS "Average Total Earnings"
FROM salary_summary_view
GROUP BY dept_name
ORDER BY "Average Total Earnings" DESC;

-- 8. Employees with pending leave requests
SELECT
  e.emp_name AS "Employee",
  d.dept_name AS "Department",
  l.leave_type AS "Leave Type",
  l.start_date AS "Start Date",
  l.end_date AS "End Date",
  l.status AS "Status"
FROM employee e
JOIN department d ON e.dept_id = d.dept_id
JOIN leave_request l ON e.emp_id = l.emp_id
WHERE l.status = 'Pending'
ORDER BY d.dept_name, e.emp_name;
