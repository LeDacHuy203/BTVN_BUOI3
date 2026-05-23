-- Khoi tao DB schoolDb
CREATE DATABASE schooldb;
-- Tạo schema
CREATE SCHEMA school;
-- khoi tao bang students
CREATE TABLE school.students(
    student_id SERIAL PRIMARY KEY ,
    name VARCHAR(255),
    dob DATE DEFAULT CURRENT_DATE
);

--khoi tao Courses
CREATE TABLE  school.courses(
    course_id SERIAL PRIMARY KEY ,
    course_name VARCHAR(255),
    credits INT NOT NULL
);

CREATE TABLE school.enrollments(
    enrollment_id SERIAL PRIMARY KEY ,
    student_id INT,
    course_id INT,
    FOREIGN KEY (student_id) REFERENCES school.students(student_id),
    FOREIGN KEY (course_id) REFERENCES school.courses(course_id),
    grade CHAR(1) Check ( grade IN ('A','B','C','D'))
);
