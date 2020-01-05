use hw10;
drop table if exists Orders;
drop table if exists Customers;
Create table If Not Exists Customers (
    id int primary key auto_increment not null,
    Name varchar(255) not null
);
Create table If Not Exists Orders (
    id int primary key auto_increment not null,
    CustomerId int not null,
    foreign key (CustomerId) references Customers(id)
);
insert into Customers (Name) values ('Joe');
insert into Customers (Name) values ('Henry');
insert into Customers (Name) values ('Sam');
insert into Customers (Name) values ('Max');
insert into Orders (CustomerId) values ('3');
insert into Orders (CustomerId) values ('1');

select C.Name Customers
from Customers C
    left join Orders O
        on C.id = O.CustomerId
where O.CustomerId is null;