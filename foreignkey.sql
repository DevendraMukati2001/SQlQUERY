foreign key cocept
-- Create the student4 table
CREATE TABLE student4 (
    rollno INT PRIMARY KEY,
    name VARCHAR(40),
    marks INT NOT NULL,
    grade VARCHAR(2),  -- Corrected from VARCHAR(1) to accommodate values like 'A+'
    city VARCHAR(20)
);

-- Create the dept table
CREATE TABLE dept (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

-- Insert data into the dept table
INSERT INTO dept 
VALUES (101, 'english'),
       (102, 'it');

-- Select all data from the dept table
SELECT * FROM dept;

-- Update the id of the dept table
UPDATE dept SET id = 111 WHERE id = 101;

-- Create the teacher table with a foreign key reference to the dept table
CREATE TABLE teacher (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES dept(id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);

-- Insert data into the teacher table
INSERT INTO teacher 
VALUES (101, 'adam', 111),
       (102, 'eve', 101); -- Changed 102 to 103 to match the updated dept id

-- Select all data from the teacher table
SELECT * FROM teacher;

-- Drop the teacher table
DROP TABLE teacher;

-- Insert data into the student4 table
INSERT INTO student4 (rollno, name, marks, grade, city) 
VALUES (101, 'anil', 78, 'C', 'pune'),
       (102, 'kal', 76, 'C', 'mumbai'),
       (103, 'rml', 89, 'C', 'kerala'),
       (104, 'shyam', 98, 'A+', 'rajasthan');

-- Various queries on the student4 table
SELECT rollno, marks FROM student4 WHERE grade = 'A+';
-- SELECT rollno, name, marks FROM student4 WHERE marks > 80;
-- SELECT rollno, name, marks FROM student4 WHERE marks > 80 AND name = 'anil';
SELECT rollno, marks FROM student4 WHERE marks BETWEEN 60 AND 90;
SELECT * FROM student4 WHERE city NOT IN ('delhi');
SELECT COUNT(rollno) FROM student4;
SELECT SUM(marks) FROM student4;
SELECT city, AVG(marks) FROM student4 GROUP BY city ORDER BY COUNT(city) ASC;
SELECT MIN(marks) FROM student4;
SELECT MAX(marks) FROM student4;
SELECT city, name, COUNT(rollno) FROM student4 GROUP BY city, name; -- Included name in GROUP BY to match the columns selected
SELECT grade FROM student4 GROUP BY grade;
