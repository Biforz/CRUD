create table if not exists Customers
(
    id   int,
    name varchar(255)
);

create table if not exists Orders
(
    id         int,
    customerId int
);

truncate table Customers;
Truncate table Orders;

insert into Customers (id, name)
values ('1', 'Joe');

insert into Customers (id, name)
values ('2', 'Henry');

insert into Customers (id, name)
values ('3', 'Sam');

insert into Customers (id, name)
values ('4', 'Max');


insert into Orders (id, customerId)
values ('1', '3');

insert into Orders (id, customerId)
values ('2', '1');

select name
from Customers
full join Orders on customers.id = Orders.customerId
where Orders.customerId is null;

-- Предположим, что веб-сайт содержит две таблицы: таблицу «Customers» и таблицу «Orders».
-- Напишите SQL-запрос, чтобы найти всех customers, которые никогда ничего не заказывают.