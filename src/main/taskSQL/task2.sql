drop table Employee;
create table if not exists Employee
(
    id     int,
    Salary int
);

insert into Employee (id, Salary)
VALUES (1, 100);
insert into Employee (id, Salary)
VALUES (2, 200);
insert into Employee (id, Salary)
VALUES (3, 300);

select max(Salary) as SecondHighestSalary
from Employee
where Salary < (select max(Salary) from employee);

-- Напишите SQL-запрос, чтобы получить вторую по величине зарплату из таблицы «Employee».
-- Например, учитывая приведенную выше таблицу «Сотрудники», запрос должен вернуть 200
-- в качестве второй по величине зарплаты. Если второй по величине зарплаты нет,
-- запрос должен вернуть ноль.