create database colleges;
use colleges;
create table Department(Dept_no int,Dept_name varchar(20),location varchar(20),primary key(Dept_no));
create table Employee(Emp_no int,Emp_name varchar(20),salary int,Dept_no int,
foreign key(Dept_no) references Department(Dept_no));

insert into Department values(101,"MCA","KOLLAM");
insert into Department values(102,"BCA","TVM");
insert into Department values(103,"MCA","KOLLAM");
insert into Department values(104,"MTECH","KOCHI");
insert into Department values(105,"MCA","KOLLAM");

insert into Employee values(1,"ANU",15000,101);
insert into Employee values(2,"ASHOK",25000,104);
insert into Employee values(3,"RAM",35000,101);
insert into Employee values(4,"STEFI",24000,105);
insert into Employee values(5,"KIVI",15000,102);

select * from Employee;
select * from Department;

select sum(salary) as 'total salary' from Employee;

select Department.dept_name,count(Employee.Emp_no) as 'number of employees' from Department,Employee 
where Department.Dept_no=Employee.Dept_no group by Department.Dept_name;

select Emp_name from Employee where Emp_name like 'A%';

