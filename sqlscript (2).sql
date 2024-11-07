REM   Script: department
REM   experiment no2

create table Employee(employee_no number, employee_name varchar2(10), job varchar2(10), mgr number, salary number);

ALTER TABLE Employee 
ADD comission number;

select*from Employee;

desc Employee


insert into Employee values(101, 'Anuj', 'Manager', 500, 50000, 1000);

insert into Employee values(102, 'Natasha', 'HR', 1000, 40000, 3000);

insert into Employee values(103, 'Mishti', 'Trainee', 500, 3000, 2000);

insert into Employee values(104, 'Harsh', 'Accountant', 2000, 30000, 5000);

insert into Employee values(105, 'Himanshu', 'Employee', 1500, 25000, 500);

select*from Employee;

update Employee 
set job ='Trainee' 
where employee_no =103;

ALTER TABLE Employee RENAME Column mgr TO mgr_no;

delete from Employee 
where employee_no = 105;

select*from Employee;

create table Department(dept_no number, dept_name varchar2(10), dept_loc varchar2(10));

ALTER TABLE Department  
ADD designation varchar2(20);

insert into Department values(7, 'SCA', 'C-Block', 'computer');

insert into Department values(8, 'SHM', 'T-Block', 'management');

insert into Department values(9, 'SFD', 'B-Block', 'fashion');

update Department 
set designation ='accountant' 
where dept_no=9;

ALTER TABLE Department 
DROP COLUMN dept_loc;

