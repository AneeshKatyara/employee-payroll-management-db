-- =========================================================
-- Sample Data for Employee Payroll Management Database
-- Course: CPS510
-- Description: Sample records for testing and demonstration
-- =========================================================

-- ===== Department =====
INSERT INTO department (dept_name, dept_email, dept_phone_number, dept_creation_date)
VALUES ('Human Resources', 'hr@company.com', '416-555-1010', SYSDATE);

INSERT INTO department (dept_name, dept_email, dept_phone_number, dept_creation_date)
VALUES ('Finance', 'finance@company.com', '416-555-2020', SYSDATE);

INSERT INTO department (dept_name, dept_email, dept_phone_number, dept_creation_date)
VALUES ('IT', 'it@company.com', '416-555-3030', SYSDATE);

-- ===== Employee =====
INSERT INTO employee (dept_id, emp_number, emp_name, gender, position_title, email, emp_status, hire_date)
VALUES (1, 'E101', 'Aneesh Katyara', 'Male', 'HR Assistant', 'aneesh@company.com', 'Active', SYSDATE);

INSERT INTO employee (dept_id, emp_number, emp_name, gender, position_title, email, emp_status, hire_date)
VALUES (1, 'E102', 'Afeef M', 'Male', 'Recruiter', 'afeef@company.com', 'Active', SYSDATE);

INSERT INTO employee (dept_id, emp_number, emp_name, gender, position_title, email, emp_status, hire_date)
VALUES (2, 'E103', 'A Basith', 'Male', 'Financial Analyst', 'basith@company.com', 'Active', SYSDATE);

INSERT INTO employee (dept_id, emp_number, emp_name, gender, position_title, email, emp_status, hire_date)
VALUES (3, 'E104', 'Lucy Luu', 'Female', 'IT Technician', 'lucy@company.com', 'Inactive', SYSDATE);

-- ===== Salary =====
INSERT INTO salary (emp_id, dept_id, sal_amount, bonus, vacation_pay)
VALUES (1, 1, 4500, 300, 150);

INSERT INTO salary (emp_id, dept_id, sal_amount, bonus, vacation_pay)
VALUES (2, 1, 4700, 200, 200);

INSERT INTO salary (emp_id, dept_id, sal_amount, bonus, vacation_pay)
VALUES (3, 2, 5200, 400, 250);

INSERT INTO salary (emp_id, dept_id, sal_amount, bonus, vacation_pay)
VALUES (4, 3, 6000, 500, 300);

-- ===== Payroll =====
INSERT INTO payroll (emp_id, sal_id, dept_id, gross_total)
VALUES (1, 1, 1, 4950);

INSERT INTO payroll (emp_id, sal_id, dept_id, gross_total)
VALUES (2, 2, 1, 5100);

INSERT INTO payroll (emp_id, sal_id, dept_id, gross_total)
VALUES (3, 3, 2, 5850);

INSERT INTO payroll (emp_id, sal_id, dept_id, gross_total)
VALUES (4, 4, 3, 6800);

-- ===== Leave Request =====
INSERT INTO leave_request (emp_id, leave_type, start_date, end_date, status)
VALUES (1, 'Sick Leave', DATE '2025-10-05', DATE '2025-10-07', 'Pending');

INSERT INTO leave_request (emp_id, leave_type, start_date, end_date, status)
VALUES (2, 'Vacation', DATE '2025-09-01', DATE '2025-09-07', 'Approved');

INSERT INTO leave_request (emp_id, leave_type, start_date, end_date, status)
VALUES (3, 'Personal Leave', DATE '2025-08-10', DATE '2025-08-12', 'Pending');

INSERT INTO leave_request (emp_id, leave_type, start_date, end_date, status)
VALUES (4, 'Sick Leave', DATE '2025-07-15', DATE '2025-07-17', 'Rejected');

COMMIT;
