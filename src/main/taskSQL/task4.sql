create table if not exists Person
(
    id    int,
    email varchar(255)
);

Truncate table Person;

insert into Person(id, email)
values (1, 'a@b.com');

insert into Person(id, email)
values (2, 'c@d.com');

insert into Person(id, email)
values (3, 'a@b.com');

select email
from Person
group by email
having count(email) > 1;

-- Напишите SQL-запрос, чтобы найти все повторяющиеся электронные письма в таблице с именем Person.