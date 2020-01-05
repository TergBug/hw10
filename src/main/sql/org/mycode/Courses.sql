use hw10;
drop table if exists courses;
drop table if exists class;
create table if not exists class (
    id int primary key auto_increment not null,
    class varchar(255) unique not null
);
Create table If Not Exists courses (
    id int primary key auto_increment not null,
    student varchar(255) unique not null,
    class_id int,
    foreign key (class_id) references class(id)
);
insert into class (class) values ('Math');
insert into class (class) values ('English');
insert into class (class) values ('Biology');
insert into class (class) values ('Computer');
insert into courses (student, class_id) values ('A', '1');
insert into courses (student, class_id) values ('B', '2');
insert into courses (student, class_id) values ('C', '1');
insert into courses (student, class_id) values ('D', '3');
insert into courses (student, class_id) values ('E', '1');
insert into courses (student, class_id) values ('F', '4');
insert into courses (student, class_id) values ('G', '1');
insert into courses (student, class_id) values ('H', '1');
insert into courses (student, class_id) values ('I', '1');

select C.class
from class C
    inner join courses Cor
        on C.id = Cor.class_id
group by Cor.class_id
having count(class_id)>=5;