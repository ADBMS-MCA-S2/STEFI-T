CREATE DATABASE EMPLO;
USE EMPLO;
create table tbl_emp
(
emp_no int(10),
emp_name varchar(10),
dep varchar(15),
salary float(15),
doj date,
branch varchar(15)
);


INSERT INTO tbl_emp(emp_no, emp_name, dep, salary, doj, branch) VALUES (101,"amit","production",45000,"2000-03-12","Bangalore");
INSERT INTO tbl_emp(emp_no, emp_name, dep, salary, doj, branch) VALUES (102,"amit","hr","75000","2002-06-13","banglore");
INSERT INTO tbl_emp(emp_no, emp_name, dep, salary, doj, branch) VALUES (103,"sunita","managment","120000","2001-01-11","mysore");
INSERT INTO tbl_emp(emp_no, emp_name, dep, salary, doj, branch) VALUES (105,"sunita","it",67000,"2001-08-01","mysore");
INSERT INTO tbl_emp(emp_no, emp_name, dep, salary, doj, branch) VALUES (106,"mahesh","civil",145000,"2003-09-01","mumbai");

select * from tbl_emp;

select emp_no,salary from tbl_emp;
select avg(salary) from tbl_emp;
select count(emp_no) from tbl_emp;
select distinct count(emp_name) from tbl_emp;
SELECT COUNT(DISTINCT emp_name) FROM tbl_emp;
select emp_name,sum(salary) from tbl_emp group by emp_name;
select sum(salary),emp_name,count(emp_name) as occurence from tbl_emp group by emp_name;
select sum(salary) from tbl_emp where salary>120000;
select emp_name from tbl_emp order by emp_name desc;
select * from tbl_emp where (emp_name='Amit' and salary>50000);
