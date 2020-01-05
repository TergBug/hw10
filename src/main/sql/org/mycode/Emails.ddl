use hw10;
Create table If Not Exists Person_Emails (
    Id int primary key auto_increment not null,
    Email varchar(255) not null
);
Truncate table Person_Emails;
insert into Person_Emails (Email) values ('a@b.com');
insert into Person_Emails (Email) values ('c@d.com');
insert into Person_Emails (Email) values ('a@b.com');

select Email
from Person_Emails
group by Email
having count(Email)>1;