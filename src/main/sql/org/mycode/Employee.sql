use hw10;
drop table if exists Employee;
drop table if exists Manager;
Create table If Not Exists Manager (
    id int primary key auto_increment not null,
    Name varchar(255) not null,
    Salary int
);
Create table If Not Exists Employee (
    id int primary key auto_increment not null,
    Name varchar(255) not null,
    Salary int,
    ManagerId int,
    FOREIGN KEY (ManagerId) references Manager (id)
);
insert into Manager (Name, Salary) values ('Long', '70000');
insert into Manager (Name, Salary) values ('Li', '80000');
insert into Manager (Name, Salary) values ('Jack', '60000');
insert into Manager (Name, Salary) values ('Petr', '90000');
insert into Employee (Name, Salary, ManagerId) values ('Joe', '70000', '3');
insert into Employee (Name, Salary, ManagerId) values ('Henry', '80000', '4');
insert into Employee (Name, Salary, ManagerId) values ('Sam', '60000', Null);
insert into Employee (Name, Salary, ManagerId) values ('Max', '90000', NULL);

select E.Name
from Employee E
    inner join Manager M
        on E.ManagerId = M.id
where E.Salary>M.Salary;