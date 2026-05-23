-- Tạo database
CREATE DATABASE librarydb;

-- Kết nối vào database librarydb rồi chạy tiếp

-- Tạo schema
CREATE SCHEMA library;

-- Tạo bảng Books
CREATE TABLE library.books (
                               book_id SERIAL PRIMARY KEY,
                               title VARCHAR(255),
                               author VARCHAR(255),
                               published_year INT,
                               available BOOLEAN DEFAULT TRUE
);

-- Tạo bảng Members
CREATE TABLE library.members (
                                 member_id SERIAL PRIMARY KEY,
                                 name VARCHAR(255),
                                 email VARCHAR(255) UNIQUE NOT NULL,
                                 join_date DATE DEFAULT CURRENT_DATE
);