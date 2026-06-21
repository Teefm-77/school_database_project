
-- DB Creation
CREATE DATABASE AlTamyoz_School;
USE AlTamyoz_School;


-- Tables Creation


-- Courses Table
CREATE TABLE Courses (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(100) NOT NULL
);

-- Teachers Table
CREATE TABLE Teachers (
    teacher_id INT PRIMARY KEY AUTO_INCREMENT,
    teacher_name VARCHAR(150) NOT NULL,
    birth_date DATE,
    gender CHAR(1) CHECK (gender IN ('M', 'F')),
    email VARCHAR(100) UNIQUE,
    office_number VARCHAR(20)
);

-- Students Table (Custom Constraints Applied)
CREATE TABLE Students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    student_name VARCHAR(150) NOT NULL,
    birth_date DATE,
    gender CHAR(1) CHECK (gender IN ('M', 'F')),
    enrollment_date DATE,
    email VARCHAR(100) UNIQUE,
    grade_level INT CHECK (grade_level BETWEEN 1 AND 6),
    track VARCHAR(50) CHECK (track IN ('علمي', 'إنساني')),
    gpa DECIMAL(5,2) CHECK (gpa BETWEEN 0 AND 100)
);

-- Check Schema Tables
SHOW TABLES;


-- Data Insertion


-- Populate Courses
INSERT INTO Courses (course_name) VALUES 
('الرياضيات'), 
('الفيزياء'), 
('الكيمياء'), 
('اللغة العربية'), 
('اللغة الإنجليزية'), 
('الحاسب الآلي');

-- Populate Teachers
INSERT INTO Teachers (teacher_name, birth_date, gender, email, office_number) VALUES
('أحمد المنصور', '1980-05-12', 'M', 'ahmed@school.com', 'A-101'),
('سارة العتيبي', '1985-08-22', 'F', 'sara@school.com', 'B-202'),
('خالد الدوسري', '1978-11-02', 'M', 'khaled@school.com', 'A-103'),
('فاطمة الشمري', '1990-03-15', 'F', 'fatimah@school.com', 'B-204'),
('محمد القحطاني', '1982-07-19', 'M', 'mohammed@school.com', 'A-105'),
('هند الحربي', '1988-12-30', 'F', 'hind@school.com', 'B-206'),
('عبدالله الزهراني', '1975-01-25', 'M', 'abdullah@school.com', 'A-107'),
('نورة السديري', '1992-06-14', 'F', 'noura@school.com', 'B-208'),
('يوسف الغامدي', '1983-09-09', 'M', 'yousef@school.com', 'A-109'),
('أمل المطيري', '1987-04-05', 'F', 'amal@school.com', 'B-210');

-- Populate Students (30 Records)
INSERT INTO Students (student_name, birth_date, gender, enrollment_date, email, grade_level, track, gpa) VALUES
('إبراهيم الفهد', '2008-01-15', 'M', '2024-09-01', 'ibrahim@student.com', 1, 'علمي', 94.75),
('أثير عبدالله', '2007-05-20', 'F', '2023-09-01', 'atheer@student.com', 3, 'علمي', 98.90),
('بدر العلي', '2008-03-11', 'M', '2024-09-01', 'bader@student.com', 2, 'إنساني', 83.80),
('جنى مروان', '2006-11-23', 'F', '2022-09-01', 'jana@student.com', 5, 'علمي', 99.25),
('حسن الحسين', '2007-08-14', 'M', '2023-09-01', 'hassan@student.com', 4, 'إنساني', 88.20),
('خديجة الصالح', '2008-02-28', 'F', '2024-09-01', 'khadija@student.com', 1, 'علمي', 92.60),
('راكان السديري', '2006-07-19', 'M', '2022-09-01', 'rakan@student.com', 6, 'علمي', 91.50),
('ريم القحطاني', '2007-12-05', 'F', '2023-09-01', 'reem@student.com', 3, 'علمي', 97.85),
('زياد المطيري', '2008-10-10', 'M', '2024-09-01', 'ziad@student.com', 2, 'إنساني', 85.90),
('شهد خالد', '2006-04-02', 'F', '2022-09-01', 'shahad@student.com', 5, 'إنساني', 95.70),
('طارق اليوسف', '2007-09-21', 'M', '2023-09-01', 'tariq@student.com', 4, 'علمي', 89.15),
('عالية العمر', '2008-06-30', 'F', '2024-09-01', 'alia@student.com', 1, 'علمي', 93.40),
('فيصل الحربي', '2006-01-18', 'M', '2022-09-01', 'faisal@student.com', 6, 'علمي', 94.65),
('لجين الناصر', '2007-03-25', 'F', '2023-09-01', 'lojain@student.com', 3, 'إنساني', 87.30),
('ماجد السعد', '2008-07-07', 'M', '2024-09-01', 'majed@student.com', 2, 'علمي', 82.75),
('نوف العتيبي', '2006-09-12', 'F', '2022-09-01', 'nouf@student.com', 5, 'علمي', 100.00),
('وليد الشمري', '2007-10-31', 'M', '2023-09-01', 'waleed@student.com', 4, 'إنساني', 86.10),
('ياسمين الدوسري', '2008-05-14', 'F', '2024-09-01', 'yasmine@student.com', 1, 'علمي', 91.55),
('سلطان الماجد', '2006-02-11', 'M', '2022-09-01', 'sultan@student.com', 6, 'علمي', 96.80),
('رنا العبدالله', '2007-11-17', 'F', '2023-09-01', 'rana@student.com', 3, 'إنساني', 89.25),
('سعود السالم', '2008-08-08', 'M', '2024-09-01', 'saud@student.com', 2, 'علمي', 80.65),
('ديما الفهد', '2006-06-06', 'F', '2022-09-01', 'deema@student.com', 5, 'إنساني', 98.92),
('منصور الراشد', '2007-04-22', 'M', '2023-09-01', 'mansour@student.com', 4, 'علمي', 90.45),
('ليان السويلم', '2008-12-25', 'F', '2024-09-01', 'layan@student.com', 1, 'إنساني', 93.70),
('مهند الخالدي', '2006-03-14', 'M', '2022-09-01', 'mohanad@student.com', 6, 'علمي', 88.35),
('أروى السعيد', '2007-01-09', 'F', '2023-09-01', 'arwa@student.com', 3, 'إنساني', 92.60),
('نواف الباز', '2008-09-18', 'M', '2024-09-01', 'nawaf@student.com', 2, 'علمي', 84.95),
('جود التميمي', '2006-08-29', 'F', '2022-09-01', 'joud@student.com', 5, 'علمي', 97.88),
('مشاري العون', '2007-07-02', 'M', '2023-09-01', 'meshari@student.com', 4, 'إنساني', 85.05),
('هيفاء السليمان', '2008-04-03', 'F', '2024-09-01', 'haifa@student.com', 1, 'علمي', 91.50);

-- Queries & Updates


-- Fetch All Data
SELECT * FROM Courses;
SELECT * FROM Teachers;
SELECT * FROM Students;

-- Sort Students Alphabetically
SELECT * FROM Students 
ORDER BY student_name ASC;

-- Alias Query for Students
SELECT student_id, student_name AS Student_Full_Name, email, gpa 
FROM Students;

-- Data Updates
UPDATE Students 
SET email = 'ibrahim.new_email@student.com' 
WHERE student_id = 1;

UPDATE Teachers 
SET office_number = 'A-200' 
WHERE teacher_id = 3;

-- Schema Modifications
ALTER TABLE Courses RENAME TO School_Subjects;

-- Verify Changes
SHOW TABLES;
