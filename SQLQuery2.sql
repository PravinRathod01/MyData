create table Emp_Record (Id int, Name varchar(10), Dept varchar(19), Gender varchar(5), Salary int);

Select * from Emp_Record;

insert into Emp_Record values (101, 'Pravin', 'Mech','Male',10000);

insert into Emp_Record values (102, 'Pravin', 'Account','Male',20000);
insert into Emp_Record values (103, 'Pramod', 'sales','Male',10000);
insert into Emp_Record values (104, 'Saanvi', 'sales','Femal',40000);
insert into Emp_Record values (105, 'Bhoomika', 'Store','Femal',15000);
insert into Emp_Record values (106, 'Vivan', 'Store','Male',20000);
insert into Emp_Record values (107, 'Rohit', 'Account','Male',25000);
insert into Emp_Record values (108, 'Pravin', 'Account','Male',25000);
insert into Emp_Record values (109, 'Saanvi', 'Mech','Femal',30000);
insert into Emp_Record values (110, 'Manvi', 'Maint','Femal',30000);
insert into Emp_Record values (111, 'Vivan', 'Maint','Male',25000);

Insert into Emp_Record values (112,'Raahi','','Femal',15000);

Insert into Emp_Record (Id,Name,Salary) Values (113,'Sarika',20000); 

insert into Emp_Record values (114, 'Raj', Null,'Male',25000);

Select * from Emp_Record

Select * from Emp_Record where Name='Pravin';

Select * from Emp_Record Where Salary=25000 and name='pravin';

Select * from Emp_Record Where salary =20000 or name='Saanvi';

Select * from Emp_Record where name in ('Pravin','Saanvi');
Select * from Emp_Record where name not in ('Pravin','Saanvi');

Select * from Emp_Record where Salary between 20000 and 40000;

Select * from Emp_Record where name like'P%';
Select * from Emp_Record where name like'%t';
Select * from Emp_Record where name like'%n%';

Select * from Emp_Record where name like'_a%';

Select * from Emp_Record where name like'%a_';

---------------------Arithmatic Operations-----------

Select *, New_Salary=Salary+2000 from Emp_Record;

Select *, New_Salary=Salary+2000 from Emp_Record;

Select *, New_Salary=Salary+(Salary*0.02) from Emp_Record;

Select *, New_Salary=Salary-(Salary*0.02) from Emp_Record;--decrease salary 2%

------All arithmatic Operations statement---------
Select *,Add_Salary=Salary+2000,Dec_Salary=Salary-3000,Divide_Salary=Salary/2,
Multipy_Salry=Salary*2,Increase2Percent_Salary=Salary+(Salary*0.02),
Decrease2Percent_Salary=Salary-(Salary*0.02)from emp_record Where Name='Saanvi' And Salary=20000;


select * from Emp_Record where name like '%n__';


select * from Emp_Record order by Salary;-- by default ascending
select * from Emp_Record order by Salary asc;--  ascending
select * from Emp_Record order by Salary desc;--  descending

select * from customer where Pan_No  is not NULL;

delete customer where Cust_Id=6100;

delete customer where Cust_Id is null;

delete customer where Cust_Id <1;

select * from customer;


create table del_1 (Id int, Age int);
insert into del_1 values (1,20);
insert into del_1 values (2,40);
insert into del_1 values (3,50);
select * from del_1;

truncate table del_1;

drop table del_1;

create table Update_1 (Id int, Age int);
insert into Update_1 values (1,20);
insert into Update_1 values (2,40);
insert into Update_1 values (3,50);
select * from Update_1;

alter table Update_1 Add Name Varchar(10), Location Varchar(10), age int; --Alter on table level

alter table update_1 drop Column Name;-- Alter to remove column

alter table update_1 drop column Location,Name,age; -- Alter to remove specific Column

alter table Update_1 alter Column Location Varchar(20);

update Update_1 set name='Pravin' where id=1; -- Update single value with where clause

update Update_1 set name='Pravin', Location='Pune',Age=20 where id=1; -- Update Multiple value with where clause
update Update_1 set name='Pramod', Location='Pune',Age=30 where id=2; -- Update Multiple value with where clause
update Update_1 set name='Sachin', Location='Pune',Age=40 where id=3; -- Update Multiple value with where clause

Select * from Update_1;
Select MIN(Age) from Update_1; -- Shows min value of column age without column name
Select MIN(Age) as Min_Age from Update_1;-- Assign new column for min age;

Select Max(Age) as Max_Age from Update_1;-- Assign new column for Max age;


select * from customer;
select * from del_1;
select * from Emp_Record;
select * from Update_1

drop table del_1;
drop table update_1
drop table customer;
drop table emp_record;

