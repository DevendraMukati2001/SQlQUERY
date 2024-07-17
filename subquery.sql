subquery
create table student(
roll_no int primary key,
  name varchar(50),
  marks int
);
insert into student (roll_no,name,marks) values(101,"anil",75),
(102,"bhumika",93),
(103,"chetan",85),
(104,"dhruv",96),
(105,"emanuel",92),
(106,"farah",82);
select * from student;
--select avg(marks) from student;
--select name,marks from student where marks>87.66678; --static process
select name,marks from student where marks>(select avg(marks) from student);--dyanamic process
--select roll_no,name from student where (roll_no%2=0);

--select avg(marks) from student;
--select name,marks from student where marks>87.66678; --static process
select roll_no from student where roll_no%2=0;
select name from student where roll_no in(102,104,106);
select name,roll_no from student where roll_no in(select roll_no from student where roll_no%2=0);
----------------
create table student(
roll_no int primary key,
  name varchar(50),
  marks int,
  city varchar(50)
);
insert into student (roll_no,name,marks,city) values(101,"anil",75,"pune"),
(102,"bhumika",93,"mumbai"),
(103,"chetan",85,"mumbai"),
(104,"dhruv",96,"delhi"),
(105,"emanuel",92,"delhi"),
(106,"farah",82,"delhi");
select * from student;
select max(marks) from (select* from student where city="delhi") as temp;
select(select max(marks) from student),name from student;


