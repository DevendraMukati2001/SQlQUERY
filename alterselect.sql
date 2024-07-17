CREATE TABLE student4 (
    rollno INT PRIMARY KEY,
    full_name VARCHAR(40),
    marks INT NOT NULL,
    grade VARCHAR(2),  -- Corrected from VARCHAR(1) to accommodate values like 'A+'
    city VARCHAR(20)
);

INSERT INTO student4 (rollno, full_name, marks, grade, city) VALUES
(101, 'anil', 78, 'C', 'pune'),
(102, 'kal', 76, 'C', 'mumbai'),
(103, 'rml', 89, 'C', 'kerala'),
(104, 'shyam', 98, 'A+', 'rajasthan');

--alter table student4 change name full_name varchar(50);
select *from student4;
delete from student4 where marks < 80;
select *from student4;
alter table student4 drop column grade;
select *from student4;