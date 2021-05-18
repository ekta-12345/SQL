--------UC1-------------
create database payroll_service;
use payroll_service;

----------UC2------------
--Creating employee payroll table-----
create table employee_payroll(
Id int NOT NULL IDENTITY(1,1) PRIMARY KEY,
Name varchar(20),
Salary float(20),
StartDate DATE,
);

-------UC3----------
----Inserting values into Employee_payroll table

insert into employee_payroll values
('Ekta','60000','12-dec-2016'),
('Pallavi','80000','12-jan-2010'),
('Shraddha','50000','20-mar-2018'),
('Manthan','65000','15-feb-2010'),
('Aditya','45000','13-apr-2019');

------UC4---------
---Retrieving all the Tables valuue----
select*from employee_payroll;
----Retrieving only name and salary----
select Name,Salary from employee_payroll;

-----------------UC5---------------------
-----Retrieving data fusing WHERE keyword---
select Id,Name,StartDate,Salary from employee_payroll where Name='Pallavi' OR Salary = '80000';


------Retrieving data using CAST Keyword--------
select * from employee_payroll where StartDate BETWEEN cast('01-01-2016' as date) AND  cast(getdate() as date);

------------------UC6-------------
------Adding GENDER column to the employee_payroll table using ALTER keyword-------
alter table employee_payroll add Gender char(1);

-------Updating Gender using UPDATE keyword--------
update employee_payroll set Gender='M' where Name='Manthan' or Name= 'Aditya' ;

update employee_payroll set Gender='F' where Name='Ekta' or Name='Pallavi' or Name='Shraddha' ;

----------------UC7------------
------------Finding SUM,AVG,MIN,MAX,COUNT----------
select sum(Salary) as SumOfSalary from employee_payroll where Gender='F' group by Gender;

select 
avg(Salary) as Average,
min(Salary) as Minimum,
max(Salary) as Maximum,
count(Id) as Number_of_Emp,
sum(Salary) as SumOfSalary
from employee_payroll where Gender='M' group by Gender;


------------UC8---------------
-----Extending employee_payroll table-----------

alter table employee_payroll add Phone_Number varchar(10);

------Adding column with DEFAULT value-----
alter table employee_payroll add Emp_Address varchar(20) default 'Pune';

alter table employee_payroll add Emp_DEPT varchar(10)default 'ENTC';

insert into employee_payroll values
('Rakesh','55000','23-aug-2019','M','983364738','Pune','CS'),
('Shruti','40000','23-feb-2019','M','9833645538',default,default);

-----------------UC9----------------
------Extending employee_payroll table-------

alter table employee_payroll add Basic_Pay varchar(10), Deduction float(20), Taxable_Pay float(20), Income_Tax float(20), Net_Pay float(20);

----------UC10-----------------
update employee_payroll set Phone_Number='9874637670',Emp_DEPT=DEFAULT;
update employee_payroll set Phone_Number='9874888670',Emp_DEPT='Account', Emp_Address = 'Pune', Basic_Pay=12000,Deduction=5000,Taxable_Pay=2300,Income_Tax = 2564,Net_Pay=18000 where Name='Ekta';
update employee_payroll set Phone_Number='9874117670',Emp_DEPT='Account', Emp_Address = 'Nagpur', Basic_Pay=12000,Deduction=5000,Taxable_Pay=2300,Income_Tax = 2564,Net_Pay=10000 where Name='Pallavi';
update employee_payroll set Phone_Number='9874227670',Emp_DEPT='Head', Emp_Address = 'Aurangabad', Basic_Pay=22000,Deduction=16000,Taxable_Pay=5300,Income_Tax = 5564,Net_Pay=22000 where Name='Shraddha';
update employee_payroll set Phone_Number='9874887670',Emp_DEPT='Research', Emp_Address = 'Pune', Basic_Pay=13000,Deduction=5450,Taxable_Pay=2500,Income_Tax = 2564,Net_Pay=10000 where Name='Manthan';
update employee_payroll set Phone_Number='9874887670',Emp_DEPT='Marketing', Emp_Address = 'Kolhapur', Basic_Pay=14000,Deduction=5660,Taxable_Pay=2700,Income_Tax = 3564,Net_Pay=11000 where Name='Aditya';
update employee_payroll set Phone_Number='944887670',Emp_DEPT='Purchasing', Emp_Address = DEFAULT, Basic_Pay=16000,Deduction=5660,Taxable_Pay=2800,Income_Tax = 5564,Net_Pay=14000 where Name='Rakesh';
update employee_payroll set Phone_Number='9878887670',Emp_DEPT='Resource', Emp_Address = 'Jalgaon', Basic_Pay=18000,Deduction=5440,Taxable_Pay=4400,Income_Tax = 4764,Net_Pay=16000 where Name='Shruti';

----------------------------------

insert into employee_payroll values
('Terissa','48548','20-jan-2020','F','8758989','Kolkatta','Sales','54767',4875,4555,54767,376734),
('Terissa','48548','20-dec-2020','F','8758989','Kolkatta','Marketing','54767',4875,4555,54767,376734);
select * from employee_payroll where Name='Terissa';

