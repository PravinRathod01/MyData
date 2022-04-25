--MASTER DATABASE

CREATE TABLE Worker (
	WORKER_ID INT NOT NULL PRIMARY KEY ,
	FIRST_NAME CHAR(25),
	LAST_NAME CHAR(25),
	SALARY INT,
	JOINING_DATE DATE,
	DEPARTMENT CHAR(25)
);

--drop table worker;

INSERT INTO Worker 
	(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
		(001, 'Monika', 'Arora', 100000, '2018-05-04', 'HR'),
		(002, 'Niharika', 'Verma', 80000, '2019-03-15', 'Admin'),
		(003, 'Vishal', 'Singhal', 300000, '2019-04-16', 'HR'),
		(004, 'Amitabh', 'Singh', 500000, '2019-10-16', 'Admin'),
		(005, 'Vivek', 'Bhati', 500000, '2020-05-20', 'Admin'),
		(006, 'Vipul', 'Diwan', 200000, '2021-07-23', 'Account'),
		(007, 'Satish', 'Kumar', 75000, '2021-12-31', 'Account'),
		(008, 'Geetika', 'Chauhan', 90000, '2022-04-02', 'Admin');

		select * from worker;

CREATE TABLE Bonus (
	WORKER_REF_ID INT,
	BONUS_AMOUNT INT,
	BONUS_DATE DATE,
	
     
);

INSERT INTO Bonus 
	(WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE) VALUES
		(001, 5000, '2018-11-10'),
		(002, 3000, '2019-11-15'),
		(003, 4000, '2019-11-12'),
		(001, 4500, '2020-11-21'),
		(002, 3500, '2020-11-20');

		select * from bonus;

		alter table bonus drop constraint [FK__Bonus__WORKER_ID__07C12930];
		alter table bonus drop column worker_id;

CREATE TABLE Title (
	WORKER_REF_ID INT,
	WORKER_TITLE CHAR(25),
	AFFECTED_FROM DATE,
	
);

INSERT INTO Title 
	(WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
 (001, 'Manager', '2016-02-20'),
 (002, 'Executive', '2016-06-11'),
 (008, 'Executive', '2016-06-11'),
 (005, 'Manager', '2016-06-11'),
 (004, 'Asst. Manager', '2016-06-11'),
 (007, 'Executive', '2016-06-11'),
 (006, 'Lead', '2016-06-11'),
 (003, 'Lead', '2016-06-11');
  
select * from title;



select * from worker;
select * from bonus;
select * from Title;


--1) Write an SQL query to fetch the list of employees with the same salary.

select distinct w.worker_id,w.first_name,w.salary from worker w, worker w1 where w.salary=w1.SALARY and w.WORKER_ID<> w1.WORKER_ID;

--2)Write an SQL query to show the second highest salary from a table.

Select max(Salary) from Worker where Salary not in (Select max(Salary) from Worker); 
-- This show max salary which is 50,000--       --here we pass max salary which is 50,000 in not in

--3) Write an SQL query to show one row twice in results from a table.

select FIRST_NAME, DEPARTMENT from worker W where W.DEPARTMENT='HR' 
union all 
select FIRST_NAME, DEPARTMENT from Worker W1 where W1.DEPARTMENT='HR';


--4) Write an SQL query to fetch intersecting records of two tables.
select worker_id from Worker intersect select worker_ref_id from Title;--It will return only distinct (common records) values from two or more tables.


select worker_id from Worker union all select worker_ref_id from Title;--This operator is used to combine two or more tables using select statement when both the tables have same no. of columns.
select worker_id from worker except select worker_ref_id from bonus;--It will return only distinct (common records) values from two or more tables.


--5) Write an SQL query to fetch the first 50% records from a table.

select * from worker where worker_id <= (select count(worker_id)/2 from worker);

--6) Write an SQL query to fetch the departments that have less than four people in it.

select department,count(worker_id) from worker group by department having count(worker_id) <4;

--7) Write an SQL query to show all departments along with the number of people in there.

select department,count(worker_id) from worker group by DEPARTMENT;

--8) Write an SQL query to show the last record from a table.

select * from worker where WORKER_ID=(select max(worker_id) from worker);

--9) Write an SQL query to show the first record from a table.

select * from worker where worker_id =(select min(worker_id) from worker);

--10)Write an SQL query to fetch the last five records from a table.

select top 5 * from worker order by WORKER_ID desc; -- with descending order of worker_id


--=======================================================================================


select *,ROW_NUMBER() over (order by salary desc) as dense from worker;

select *,rank() over (order by salary ) as dense from worker where rank() over (order by salary )=2 ;

--The above query will through an exception in
--i.e. Windowed functions can only appear in the SELECT or ORDER BY clauses.

--In order to avoid this kind of exception or Error in SQl we have to use CTE i.e. COMMON TBALE EXPRESSION 

--CTE (Common Table Expression)
--It is temporary result set.
--It will store the temporary results to make use of that in your main query.
--It can be referred within a SELECT, INSERT,UPDATE and DELETE statements that immediately follows the CTE.
--Only DML type of operation we can perform on CTE

--11) Write an SQL query to fetch the last fifth high sal from a table.

with second_high as( select *,rank() over (order by salary desc) as New_row from worker)select * from second_high where New_row=5;
with second_high as( select *,row_number() over (order by salary desc) as New_row from worker)select * from second_high where New_row=5;




--select * from worker;

--12. Find out 65th max salary.
Q. Find out 30th min salary.
Q. Display top 5 salary from table.
Q. Display salary from 3rd max to 6th max.
Q. Display salary other than 2nd min to 4th min.
