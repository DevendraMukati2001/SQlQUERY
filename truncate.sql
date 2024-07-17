truncate vgera
-- Create the student4 table
CREATE TABLE student4 (
    rollno INT PRIMARY KEY,
    name VARCHAR(40),
    marks INT NOT NULL,
    grade VARCHAR(2),
    city VARCHAR(20)
);

-- Insert data into the student4 table
INSERT INTO student4 (rollno, name, marks, grade, city) VALUES
(101, 'anil', 78, 'C', 'pune'),
(102, 'kal', 76, 'C', 'mumbai'),
(103, 'rml', 89, 'C', 'kerala'),
(104, 'shyam', 98, 'A+', 'rajasthan');

-- Update grade from 'C' to 'O'
UPDATE student4 SET grade = 'O' WHERE grade = 'C';

-- Select all data from student4
SELECT * FROM student4;

-- Add a new column 'age' with default value 19
ALTER TABLE student4 ADD COLUMN age INT NOT NULL DEFAULT 19;

-- Modify the 'age' column to VARCHAR(2)
--ALTER TABLE student4 MODIFY COLUMN age VARCHAR(2);

-- Rename column 'age' to 'stu_age'
--ALTER TABLE student4 CHANGE COLUMN age stu_age VARCHAR(2);

-- Select all data from student4
SELECT * FROM student4;

-- Insert data into student4, including 'grade' and 'city'
INSERT INTO student4 (rollno, name, marks, grade, city,age) VALUES
(107, 'bob', 68, 'B', 'unknown', '98');

-- Select all data from student4
SELECT * FROM student4;
alter table student4 drop column age;
select * from  student4;
-- Corrected typo in the SELECT statement
alter table student4 rename to student;
truncate table student;
select * from student;


