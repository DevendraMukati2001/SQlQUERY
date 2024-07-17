-- Create the student table
CREATE TABLE student (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

-- Create the course table
CREATE TABLE course (
    id INT PRIMARY KEY,
    course VARCHAR(50)
);

-- Insert data into the student table
INSERT INTO student (id, name) VALUES
(101, 'jhc'),
(102, 'cd'),
(103, 'hb');

-- Insert data into the course table
INSERT INTO course (id, course) VALUES
(102, 'course1'),
(105, 'course2'),  -- This entry does not have a matching student
(103, 'course3'),
(107, 'course4'),  -- This entry does not have a matching student
(109, 'course5');  -- This entry does not have a matching student

-- Select all data from the student and course tables using LEFT JOIN and RIGHT JOIN, combined with UNION
SELECT * FROM student AS a
LEFT JOIN course AS b
ON a.id = b.id
UNION
SELECT * FROM student AS a
RIGHT JOIN course AS b
ON a.id = b.id;

-- Select all data from the student table
SELECT * FROM student;

-- Select entries that are only in one table (excluding those with matching IDs in both tables)
SELECT * FROM student AS a
LEFT JOIN course AS b
ON a.id = b.id
WHERE b.id IS NULL
UNION
SELECT * FROM student AS a
RIGHT JOIN course AS b
ON a.id = b.id
WHERE a.id IS NULL;

-- Self join on an assumed employee table
-- Assuming there is an employee table with columns id, name, and manager_id
CREATE TABLE employee (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    manager_id INT
);

-- Insert data into the employee table (example data)
INSERT INTO employee (id, name, manager_id) VALUES
(1, 'Alice', NULL),
(2, 'Bob', 1),
(3, 'Charlie', 1);

-- Self join to find manager names and their respective employees
SELECT a.name , b.name 
FROM employee AS a
JOIN employee AS b
ON a.id = b.manager_id;
