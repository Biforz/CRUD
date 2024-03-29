create table if not exists Person
(
    PersonId  int,
    FirstName varchar(255),
    LastName  varchar(255)
);

create table if not exists Address
(
    AddressId int,
    PersonId  int,
    City      varchar(255),
    State     varchar(255)
);

insert into Person (PersonId, FirstName, LastName)
VALUES ('1', 'Wang', 'Allen');

insert into Address (AddressId, PersonId, City, State)
VALUES ('1', '2', 'New York City', 'New York');

truncate table Person;
truncate table Address;

drop table person;
drop table address;

select FirstName, LastName, City, State
from person
left join Address as A on Person.PersonId = A.PersonId;

-- Напишите запрос SQL для отчета, который предоставляет следующую информацию
-- для каждого человека в таблице Person, независимо от того,
-- существует ли адрес для каждого из этих людей:
-- FirstName, LastName, City, State