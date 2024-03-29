drop table Employee;
create table if not exists Employee
(
    id        int,
    Name      varchar(255),
    Salary    int,
    ManagerId int
);

truncate table Employee;

insert into Employee(id, Name, Salary, ManagerId)
VALUES (1, 'Joe', 70000, 3);

insert into Employee (Id, Name, Salary, ManagerId)
values (2, 'Henry', 80000, 4);

insert into Employee (Id, Name, Salary, ManagerId)
values (3, 'Sam', 60000, null);

insert into Employee (Id, Name, Salary, ManagerId)
values (4, 'Max', 90000, null);

select Employees.Name
from Employee as employees,
     Employee as managers
where managers.id = employees.managerid
  and employees.Salary > managers.salary;

-- Таблица «Employee» содержит всех сотрудников, включая их руководителей.
-- У каждого сотрудника есть идентификатор, а также есть столбец для идентификатора менеджера.
-- Учитывая таблицу «Employee», напишите SQL-запрос, который определит сотрудников,
-- которые зарабатывают больше, чем их менеджеры.
-- В приведенной выше таблице Joe — единственный сотрудник, который зарабатывает больше,
-- чем его менеджер.