-----------------------AGAIN START---------------------------------------
CREATE DATABASE PRACTICE;
CREATE TABLE EMPLOYEE ( EMP_ID INT, NAME VARCHAR(10), GENDER VARCHAR(1), AGE INT, DOJ DATE,SALARY INT);
CREATE TABLE EMP_DEPT ( DEPT_ID INT, EMP_ID INT, DEPARTMENT VARCHAR(10), CITY VARCHAR(10), PINCODE VARCHAR(10));

INSERT INTO EMPLOYEE VALUES (201,'PRAVIN','M',25,'2018/05/15',35000);
INSERT INTO EMPLOYEE VALUES (203,'PRAMOD','M',23,'2019/1/15',40000);
INSERT INTO EMPLOYEE VALUES (205,'SNHEALI','F',22,'2020/03/15',45000);
INSERT INTO EMPLOYEE VALUES (206,'YASH','M',27,'2018/05/15',40000);
INSERT INTO EMPLOYEE VALUES (208,'SUHAS','M',30,'2022/01/20',50000);
INSERT INTO EMPLOYEE VALUES (210,'RAHUL','M',32,'2022/02/28',35000);
INSERT INTO EMPLOYEE VALUES (204,'SAANVI','F',19,'2022/02/25',25000);
INSERT INTO EMPLOYEE VALUES (209,'MANVI','F',20,'2021/12/31',260000);
INSERT INTO EMPLOYEE VALUES (211,'PRAVIN','M',26,'2019/07/25',28000);
INSERT INTO EMPLOYEE VALUES (214,'VIVAN','M',19,'2020/11/24',32500);


INSERT INTO EMP_DEPT VALUES (21,201,'HR','PUNE',500416)
INSERT INTO EMP_DEPT VALUES (21,203,'HR','PUNE',413005)
INSERT INTO EMP_DEPT VALUES (23,205,'ACCOUNT','MUMBAI',516002)
INSERT INTO EMP_DEPT VALUES (24,206,'PURCHASE','NAGAR',517225)
INSERT INTO EMP_DEPT VALUES (23,208,'SALES','BANGLORE',600123)
INSERT INTO EMP_DEPT VALUES (22,210,'LOGISTICS','SOLAPUR',413002)
INSERT INTO EMP_DEPT VALUES (25,204,'ADMIN','NASHIK',500356)
INSERT INTO EMP_DEPT VALUES (26,209,'SECURITY','MUMBAI',546897)
INSERT INTO EMP_DEPT VALUES (25,211,'ADMIN','PUNE',235658)
INSERT INTO EMP_DEPT VALUES (23,214,'ACCOUNT','SOLAPUR',413215)

SELECT * FROM EMPLOYEE;

SELECT * FROM EMP_DEPT;

-- Date related queries

--1)  Findout how many years completed in a company 

select *,DATEDIFF(YY,Doj,getdate()) as completed_years from EMPLOYEE; -- this show completed years

select *,datediff(YY,doj,getdate()) as completed_yeaers from employee where datediff(yy,doj,getdate())>1; -- except who join in curren year

--2) find out no of employeed who joined during current year

select *, datediff(yy,doj,getdate()) as New_Joinee from employee where datediff(yy,doj,getdate())=0;

--3) Find out the employees who joined in Jan 2019

select * from EMPLOYEE where DATEPART(yy,DOJ)=2019 and DATEPART(mm,doj)=1;

select *,datepart(YYYY,doj) as Joining_Year from employee where datepart(yyyy,doj)=2019 and datepart(mm,doj)=1;

--4) Find out the employees who joined in  2019

select * from EMPLOYEE where datepart(yyyy,doj) in (2019);

select * from EMPLOYEE where datepart(yyyy,doj) = 2019;


--=========SQL SERVER FUNCTION=========-

--1) Write an SQL query to fetch employee in lower case

select Lower(Name) as small_Letter from employee;

-- same for UPPER

select upper (Name) as cap_letters from employee;

--2) Write an SQL query to print the first three characters of  NAME from employee table

select substring(name,1,3) from employee;

--3) Write an SQL query to print the length of characters of  NAME from employee table

select LEN(Name) from employee;
select datalength(Name) from employee;
select *,len(Name) as Length_Name from employee;
select *,datalength(Name) as Length_Name from employee;


--4) Write an SQL query to print reverse characters of  NAME from employee table

select reverse(Name) from employee;
select *,reverse(Name) as reverse_name from EMPLOYEE;

--5) Write an SQL query to replace Character A of NAME  with 'KKK' from employee table

select * from EMPLOYEE;

select replace(name,'A',' KKK ') from employee;
select *, replace(name,'A',' KKK ') as replace_char from employee;

--6) Write an SQL query to replicate NAME  two times from employee table

select replicate(Name,2) from employee;
select *,replicate(Name,2) as replicate_Name from employee;



--7) Write an SQL query to print the Gender and Age from employee table into a single column Personal Info. A space char should separate them.

select gender,Age,concat(gender,' ',age) as Personal_Info from employee;
select *,concat(gender,' ',age) as Personal_Info from employee;

--8) Write an SQL query to print the NAME from employee table after removing white spaces from the right side.

select rtrim(Name) from employee;
select *, rtrim(Name) as remove_space from employee;

--9) Write an SQL query to print the NAME from employee table after removing white spaces from the left side

select ltrim(Name) from employee;
select *, ltrim(Name) as remove_space from employee;

--10) Round off 99.95 to 100
 select round('99.976',2); -- Round off tow second decimal place
 select round('99.976',1); -- Round off to first decimal place

 --11) convert date into varchar

 select convert(varchar,getdate(),2); -- convert date to varchar

 --==========================================================================================================================

--12) Write an SQL query to fetch unique values from salary from employee table

select * from EMPLOYEE;
select * from EMP_DEPT;

 select distinct salary from EMPLOYEE;

--13) Write an SQL query to fetch unique values from city from employee department

 select distinct city from EMP_DEPT;

--14) Write an SQL query that fetches the unique values of City and its length from emp_dept

select  distinct len(city) as Unique_Length from emp_dept;


--15) Ascending and descending of salary 

select * from EMPLOYEE order by salary asc;

select * from EMPLOYEE order by salary desc;

--16) Age Ascending salary descending

select * from EMPLOYEE order by age asc,salary desc;

--17) Write an SQL query to print details of Vivan and Saroj;

select * from EMPLOYEE where name in ('Vivan','Saroj');
select * from employee where name='Vivan' or name='saroj';


--18) Write an SQL query to print details excluding Vivan and Saroj;

select * from employee where name not in('Vivan','saroj');
select * from EMPLOYEE where name<> 'Vivan' or name<>'Saroj';

--19) write an SQL query to print details of employee whose name lengh is 6

select * from employee where len(name)=6;

--20) write and SQL query to print whose name includes D

select * from employee where name like '%D%';

--21) write and SQL query to print whose name Start with P and S and also not start with p and s

select * from employee where name like '[ps]%';

select * from employee where name like '[^ps]%';

--21) write and SQL query to print whose name contain V and on 3 rd position from end

select * from employee where name like '%V__%';

--22) write an SQL query to print whose salary is lies between 30000 and 45000

select * from EMPLOYEE where salary between 30000 and 45000;

select * from EMPLOYEE where salary>30000 and salary<50000;

--23) Write an SQL query to print details of employees who have joined in June 2019

select * from EMPLOYEE where datepart(yyyy,doj)=2019 and datepart(mm,doj)=7;
select * from EMPLOYEE where year(doj)=2019 and month(doj)=7;

--24) Write an SQL query to print details of employees who completed four years in a company

select *, DATEDIFF(yyyy,doj,GETDATE()) as Completed_Years from EMPLOYEE where DATEDIFF(yyyy,doj,getdate()) in (4);

--25) Write an SQL query to print Name of employees who completed four years in a company

select name,DATEDIFF(yyyy,doj,getdate()) as completed_Years from EMPLOYEE where DATEDIFF(yyyy,doj,getdate())=4;
select name,DATEDIFF(yyyy,doj,getdate()) as completed_Years from EMPLOYEE where DATEDIFF(yyyy,doj,getdate()) in (4);

--26) Write and SQL query to print the name and increment salary by 5% of employees who completed 4 years

select name,salary,New_sal=salary+(salary*0.05) from EMPLOYEE where DATEDIFF(yyyy,doj,getdate())=4;

select * from EMP_DEPT;
select * from EMPLOYEE;

--27) Write an SQL query to count no of males and females

select count(*) from employee where gender='m';
select count(*) from employee where gender='f';

select gender,count(gender) from EMPLOYEE group by gender;


--28) Write an SQL query to fetch the no. of employees for each department in the descending order from emp_dept


select department, count(dept_id) as no_of_emp from emp_dept  group by DEPARTMENT order by no_of_emp desc;





















