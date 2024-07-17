view table
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

create view view1 as select roll_no ,name ,marks from student;
select * from view1 where marks>90;
drop view view1; --because this!
--select * from view1;  //no such table 

