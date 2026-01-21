-- =========================================================
-- SQL Views for Employee Payroll Management Database
-- Course: CPS510
-- Description: Views for reporting and analysis
-- =========================================================

-- ===== View 1: Active Employees and Their Departments =====
CREATE OR REPLACE VIEW active_employees_view AS
SELECT
  e.emp_id,
  e.emp_name,
  e.position_title,
  d.dept_name,
  e.hire_date
FROM employee e
JOIN department d
  ON e.dept_id = d.dept_id
WHERE e.emp_status = 'Active';

-- ===== View 2: Employee Salary Summary =====
CREATE OR REPLACE VIEW salary_summary_view AS
SELECT
  s.sal_id,
  s.emp_id,
  e.emp_name,
  d.dept_name,
  s.sal_amount,
  s.bonus,
  s.vacation_pay,
  (s.sal_amount + NVL(s.bonus, 0) + NVL(s.vacation_pay, 0)) AS total_earnings
FROM salary s
JOIN employee e
  ON s.emp_id = e.emp_id
JOIN department d
  ON s.dept_id = d.dept_id;

-- ===== View 3: Pending Leave Requests =====
CREATE OR REPLACE VIEW pending_leave_view AS
SELECT
  l.leave_id,
  e.emp_name,
  l.leave_type,
  l.start_date,
  l.end_date,
  l.status
FROM leave_request l
JOIN employee e
  ON l.emp_id = e.emp_id
WHERE l.status = 'Pending';
