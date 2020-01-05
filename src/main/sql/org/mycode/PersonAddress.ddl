use hw10;
drop table if exists Address;
drop table if exists Person;
Create table if not exists Person (
    PersonId int primary key auto_increment not null,
    FirstName varchar(255) not null,
    LastName varchar(255) not null
);
Create table if not exists Address (
    AddressId int primary key auto_increment not null,
    PersonId int not null,
    City varchar(255) not null,
    State varchar(255) not null,
    FOREIGN KEY (PersonId) references Person(PersonId)
);
insert into Person (FirstName, LastName) values ('Wang', 'Allen');
insert into Person (FirstName, LastName) values ('Joey', 'Right');
insert into Person (FirstName, LastName) values ('Li', 'Xiao');
insert into Address (PersonId, City, State) values ('1', 'New York City', 'New York');

select p.FirstName, p.LastName, a.City, a.State
from Person p
    left join Address a
        on p.PersonId = a.PersonId;