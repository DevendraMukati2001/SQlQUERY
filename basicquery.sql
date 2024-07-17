SQL query
CREATE TABLE student4 (
    rollno INT PRIMARY KEY,
    name VARCHAR(40),
    marks INT NOT NULL,
    grade VARCHAR(2),  -- Corrected from VARCHAR(1) to accommodate values like 'A+'
    city VARCHAR(20)
);

INSERT INTO student4 (rollno, name, marks, grade, city) VALUES
(101, 'anil', 78, 'C', 'pune'),
(102, 'kal', 76, 'C', 'mumbai'),
(103, 'rml', 89, 'C', 'kerala'),
(104, 'shyam', 98, 'A+', 'rajasthan');

SELECT rollno, marks FROM student4 WHERE grade = 'A+';
-- SELECT rollno, name, marks FROM student4 WHERE marks > 80;
-- SELECT rollno, name, marks FROM student4 WHERE marks > 80 AND name = 'anil';
SELECT rollno, marks FROM student4 WHERE marks BETWEEN 60 AND 90;
SELECT * FROM student4 WHERE city NOT IN ('delhi');
select count(rollno) from student4;
select sum(marks) from student4;
select city,avg(marks) from student4 group by city order by count(city) asc;
select min(marks) from student4;
select max(marks) from student4;
select city ,name,count(rollno) from student4 group by city; --group by mtlb ye pura hme jhund me chize btata h
select grade from student4 group by count(grade);

