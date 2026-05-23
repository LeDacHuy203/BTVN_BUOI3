-- khoi tao database Companydb
CREATE DATABASE companydb;
-- Khoi tao bang departments
CREATE TABLE departments(
    department_id SERIAL PRIMARY KEY ,
    department_name VARCHAR(255) NOT NULL UNIQUE
);
-- Khoi tao bang employees
CREATE TABLE employees(
    emp_id SERIAL PRIMARY KEY ,
    name VARCHAR(100) NOT NULL ,
    dob DATE,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

-- Khoi tao projects
CREATE TABLE projects(
    project_id SERIAL PRIMARY KEY ,
    project_name VARCHAR(255) NOT NULL ,
    start_date DATE,
    end_date DATE ,
    CHECK (end_date >= start_date)
);

CREATE TABLE employees_projects(
    emp_id INT,
    project_id INT,
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id),
    FOREIGN KEY (project_id) REFERENCES projects(project_id),
    PRIMARY KEY (emp_id,project_id)
);