-- Create the database
CREATE DATABASE IF NOT EXISTS student_db;

-- Switch to the database
USE student_db;

-- Create the students table
CREATE TABLE IF NOT EXISTS students (
    rollNo VARCHAR(20) PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    mathMarks INT DEFAULT 0,
    physicsMarks INT DEFAULT 0,
    chemistryMarks INT DEFAULT 0
);
