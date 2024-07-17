sql custumer query
create table customer(
custumid int primary key,
name varchar(50),
mode varchar(50),
city varchar(50)
);
insert into  customer (custumid,name,mode,city) values(101,"olivia barnett","netbanking","portland"),(102,"olivia","credit card","autria"),
(103,"maya hemandez","credit card","india"),
(104,"olivia singh","netbanking","pakisthan"),
(105,"hemant barnett","atm","england"),
(106,"liam barnett","credit card","phonix"),
(107,"caleb barnett","netbanking","portland"),
(108,"lucas barnett","netbanking","bostan"),
(109,"lsabella barnett","credit card","portland"),
(110,"jackson","netbanking","lexico");
select * from customer;
select mode,count(custumid) from customer group by mode;