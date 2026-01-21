# Employee Payroll Management Database

## Overview
This project is an end-to-end **Employee Payroll Management Database** designed and implemented over an entire semester as part of **CPS510 – Database Systems**.  
It demonstrates the full database lifecycle: requirements analysis, conceptual modeling, normalization, schema design, SQL implementation, and querying.

The system supports employee records, department management, salary tracking, payroll processing, and leave management using a relational database design.

---

## Key Features
- Relational database design following **3NF/BCNF**
- Strong use of **primary keys, foreign keys, and integrity constraints**
- Modular SQL scripts for schema, data, views, and queries
- Realistic sample data for testing and demonstration
- Reporting views for payroll and HR analytics

---

## Database Schema
Core entities include:
- **Department** – organizational units
- **Employee** – employee personal and job-related data
- **Salary** – compensation details
- **Payroll** – payroll transactions
- **Leave Request** – employee leave management

The schema enforces:
- Referential integrity via foreign keys  
- Domain constraints using CHECK clauses  
- Business rules such as valid leave dates and salary periods  

---

## Project Structure
employee-payroll-management-db/
├── sql/
│   ├── schema.sql        # Table definitions and constraints
│   ├── sample_data.sql  # Sample INSERT statements
│   ├── views.sql        # Reporting views
│   └── queries.sql      # Demonstration queries
├── docs/                # Design documents (ERD, normalization, RA)
├── screenshots/         # Query and output screenshots
└── README.md

---

## SQL Components
- **schema.sql**  
  Defines all tables, relationships, and constraints.

- **sample_data.sql**  
  Inserts realistic test data into the database.

- **views.sql**  
  Provides reusable views for payroll summaries, active employees, and pending leave requests.

- **queries.sql**  
  Contains SELECT, JOIN, GROUP BY, and aggregation queries for reporting and analysis.

---

## Technologies Used
- Oracle SQL
- SQL*Plus
- Relational Database Design
- Normalization & Functional Dependencies

---

## Learning Outcomes
Through this project, I gained hands-on experience with:
- Translating business requirements into database designs
- Applying normalization techniques
- Writing complex SQL queries and views
- Enforcing data integrity at the database level
- Structuring a database project for professional presentation

---

## Course Information
- **Course:** CPS510 – Database Systems  
- **Institution:** Toronto Metropolitan University  
- **Term:** Full Semester Project (A1–A10)

---

## Author
**Aneesh Katyara**
