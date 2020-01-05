use hw10;
Create table If Not Exists Salary_Employee (
    Id int primary key auto_increment not null,
    Salary int not null
);
Truncate table Salary_Employee;
insert into Salary_Employee (Salary) values ('100');
insert into Salary_Employee (Salary) values ('200');
insert into Salary_Employee (Salary) values ('300');

select max(Salary) SecondHighestSalary
from Salary_Employee
where Salary<(
    select max(Salary)
    from Salary_Employee
);