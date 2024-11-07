REM   Script: employee
REM   experiment no1

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

