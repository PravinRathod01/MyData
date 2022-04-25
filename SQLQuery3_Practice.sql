create database Revision_Master;-- Create Database

--CREATE TABLE OF EMPLOYEE--
create table Employee (Emp_Id int, Emp_Name Varchar (20), Emp_Contact varchar (10));

-- NOW INSERTING RECORD IN EMPLOYEE TABLE--

insert into Employee values (1,'Pravin Rathod','8888020145');
insert into Employee values (2,'Pramod Rathod','8888341610');
insert into Employee values (3,'Suhas Rathod','9767100200');
insert into Employee values (4,'Sachin Rathod','8888123987');
insert into Employee values (5,'Sunil Pawar','9910020030');
insert into Employee values (6,'Sudhir Pawar','9810020400');
insert into Employee values (7,'Ujwala Pawar','9840090100');
insert into Employee values (8,'Bhoomika Rathod','9890671345');

--AFTER INSERRTED 8 RECORD WE WILL SEE IT BY SELECT STATEMENT--

select * from Employee; --* use to fetch all records

Select Emp_Name,Emp_contact from Employee; -- use column name if want to see specific column

--IF WE DONT KNOW ANY INFO OF PARTICULAR PERSON WE CAN PASS BLANK

insert into Employee values (9,'Saanvi Rathod',' ');

select * from Employee; --* use to fetch all records

--IF WE DONT KNOW ANY INFO OF PARTICULAR PERSON WE CAN PASS BLANK / NULL

insert into Employee values (10,'Vivan Rathod',NULL);
Insert into Employee values (11,Null,null);
select * from Employee; --* use to fetch all records

--IF WE WANT TO ADD A DATA IN SPECIFIC COLUMN--

insert into Employee (Emp_Id) values (12);
select * from Employee; --* use to fetch all records

-----CLAUSES---
--CLAUSES WILL ACT AS FILTER FOUR CLAUSES ARE THERE
--(1) WHERE CLAUSE - THIS CLAUSE IS USE WITH COMPARATIVE, ARITHMATIC & LOGICAL OPERATOR

--OPEARATOR 1 - COMPARATIVE OPERATOR (=,!=,<,<=,>,>=,<>)

select * from Employee where Emp_name = 'Pravin Rathod';-- Where clause with equal to opeartor
select Emp_Contact from Employee where Emp_name = 'Pravin Rathod';-- Where clause with equal to opeartor if want to see specific column

select * from Employee where Emp_name != 'Pravin Rathod';-- Where clause with Not Equal to opeartor
select Emp_Contact from Employee where Emp_name <> 'Pravin Rathod';-- Where clause with Not Equal to opeartor if want to see specific column

select * from Employee where Emp_Id < 2;-- Where clause with less than opeartor
select * from Employee where Emp_Id > 5;-- Where clause with greater than opeartor

--OPEARATOR 2 - LOGICAL OPERATOR (AND, OR)

-- FOR AND OPERATOR BOTH CONDITIONS MUST BE SATISFIED TO SEE RESULTS

select * from Employee where Emp_Contact='8888020145' AND emp_id=2;
--First condition is satisfied but second condition is not satisfied so no result

select * from Employee where Emp_Contact='8888020145' AND emp_id=1;
-- Here First and Second condition is satisfied so we see result of Pravin Rathod

select * from Employee where Emp_Contact='8888020145' OR emp_id=2;
--Here required anyone of the condition should satisfy so with OR result of 8888020145 and 2 is displayed

--IN / NOT IN OPERATOR
-- with IN/NOT IN operator we can able to fetch data with many parameters like AND operator

Select * from Employee Where Emp_ID in  (1,2,3);-- Display the result of 1,2,3
Select * from Employee Where Emp_ID Not In  (1,2,3);-- Display the result except 1,2,3

-- BETWEEN / NOT BETWEEN OPERATOR--

select * from employee where Emp_Id between 4 and  8;-- shows records between 4 & 8
select * from employee where Emp_Id not between 4 and  8;-- shows records not between 4 & 8


-------LIKE OPERATOR---------
--LIKE OPEARATOR IS USED TO SEE SPECIFIC DATA WHICH IS ENDS OR STARTS WITH SPECIFIC CHARACTER OR LIE BETWEEN THEM

-- FOR INT DATA TYPE, LIKE OPERATOR IS NOT USE

select * from employee where Emp_Name like 'P%'; -- to see data whose name starts with P, % is use because we dont know how many character after P
select * from Employee where Emp_name like '%d';-- to see data whose name ends with D
select * from Employee where Emp_Name like '%O_';-- to see data whose name's second last character is O,_ denotes position
select * from Employee where emp_name like '%I%';-- to see data whose name contains with I,or I is lie somewhere in name
select * from Employee where Emp_name like '__N%';-- to see data who name has N at third position



--ARITHMATIC OPERATOR-- USED TO PERFORM MATHEMATICAL OPERATION

create table Employee_Details (Emp_Id Int, Emp_Name varchar(20), Emp_Salary int,Gender varchar(1), Emp_dept varchar(10));
Insert into Employee_Details values(1,'Pravin' ,25000,'M','Mech');
Insert into Employee_Details values(2,'Pramod' ,20000,'M','Mech');
Insert into Employee_Details values(3,'Rohit'  ,30000,'M','IT');
Insert into Employee_Details values(4,'Ram'    ,15000,'M','Sales');
Insert into Employee_Details values(5,'Ujwala'  ,40000,'F','Account');
Insert into Employee_Details values(6,'Bhoomika',20000,'F','Account');
Insert into Employee_Details values(7,'Sarika'  ,15000,'F','Dispatch');
Insert into Employee_Details values(8,'Pramod' ,35000,'M','Dispatch');
Insert into Employee_Details values(9,'Raj'     ,35000,'M','Design');
Insert into Employee_Details values(10,'Sakshi' ,30000,'F','Design');

select * from Employee_Details;

--ARITHMATIC OPERATIONS CAN ONLY PERFORM ON INTEGER

select *, New_Salary=Emp_salary+20000 from Employee_Details; -- Added 20000 in current salary
select *, New_salary=Emp_salary-20000 from Employee_Details; -- Decrese 20000 from current salary
select *, New_Salary=Emp_salary * 2 from employee_Details; -- Multiply with 2 to salary
select *, New_Salary= Emp_salary/2 from Employee_Details; -- Devide salary by 2

select *, Increment_salary=emp_salary+(Emp_salary*0.05) from Employee_Details -- Increase with 5 percent
select *, Decrement=emp_salary-(Emp_salary*0.05) from Employee_Details -- decrease with 5 percent


----4--ORDER BY CALUSE---
--TO SORT COLUMN IN ASCENDING OR DESCENDING ORDER
-- BY DEFAULT ASCENDING IS CONSIDERD

select * from Employee_Details order by Emp_Salary; -- Order by--By default Ascending order
select * from Employee_Details order by Emp_Salary Asc;--ASC is used for Ascending
Select * from Employee_Details order by Emp_salary Desc; -- Desc is used for Descending

-----------------NULL VALUES
--NULL VALUE IN COLUMN IS WITH NO VALUE
--NULL VALUES IS DIFFERENT FROM ZERO AND BLANK/ EMPTY SPACE
select * from Employee_Details;
insert into Employee_Details values (11,'Raju','' ,'M','Account'); -- BLANK INT -PASS 0 IN TABLE
insert into Employee_Details values (12,'Sonali',20000,'F','');-- BLANK VARCHA - PASS EMPTY SPACE
insert into Employee_Details(Emp_Salary) values (25000); --IF PASS SINGLE VALUE OTHER FIELD IS NULL


select * from Employee_Details where Emp_Name = NUll;-- to check NULL values in table, It is not possible to check with Comaprative operator
-- Result shows nothing if Null with comparative operator
select * from Employee_Details where Emp_dept =' '; -- show data whose dept is blank
Select * from Employee_Details where Emp_Salary =0;-- show salary = 0 or not updated

select * from employee_details where emp_salary is NUll; -- there is no null value in salary column, dont forget we hace passed blank field as intger
-- and it becomes zero

select * from Employee_Details where emp_name is null;--name column is contains with null value

select * from Employee_Details where emp_name is not null;--name column which contains without null value

--------------------------DELETE STATEMENT ---------------
-- DELETE STATEMENT IS USED TO DELETE RECORDS ROW BY ROW
-- WITH THIS STATEMENT WE CANNOT DELETE STRUCTURE OF TABLE
-- WITH CONDITION WE CAN DELETE RECORDS AT A TIME OR ROW BY ROW
----------------------------------------------------------

create table Del_Table (Del_Id int, Del_Name varchar (10));

insert into Del_Table values (1,'Pravin');
insert into Del_Table values (2,'Pramod');
insert into Del_Table values (3,'Saanvi');
insert into Del_Table values (4,'Pravin');
insert into Del_Table values (4, 'Pravin');
insert into Del_Table values (5, 'Pravin');

Select * from Del_Table;
---------------
--Below are records from Del_Table

--Del_Id	Del_Name
--1	    Pravin
--2	    Pramod
--3	    Saanvi
--4   	Pravin
--4	    Pravin
--4	    Pravin
--4	    Pravin
--4	    Pravin
--5	    Pravin
----------------
-- Deleting Records of pravin because it inserted mistakenly in ID 4

Delete Del_Table where Del_Name='PRavin'; -- With this condition I have deleted all records of pravin

--Del_Id	Del_Name
--2	        Pramod
--3	        Saanvi

-- Inserted all values which delted by above delte statement, by reexecute insert query of Del_Table

--Del_Id	Del_Name
--1	    Pravin
--2	    Pramod
--3	    Saanvi
--4   	Pravin
--4	    Pravin
--4	    Pravin
--4	    Pravin
--4	    Pravin
--5	    Pravin

delete Del_Table where Del_Id=4 and del_Name = 'Pravin';

Select * from Del_Table;

--1	Pravin       -- all record of Pravin whose Id is 4 is deleted.
--2	Pramod
--3	Saanvi
--5	Pravin


-- Lets try to delete record whose name contains with P

Delete Del_Table where Del_Name like 'P%';-- Delted records whose name sta
--Del_Id	Del_Name
--3	        Saanvi

-- Lets delete saanvi also

Delete Del_Table where Del_Id>2; -- saanvi also deleted 

-- Now Del_table is empty.. letes put all same records by re-exececute inserted statement of DEL_TABLE
-- All data inserted now
-- Lets delete some record with different conditions

delete del_table where del_name in ('Pravin','Pramod');

select * from Del_Table; -- Again Saanvi left alone in Table-- She is my daughter i should take her too

Delete Del_Table where Del_Name like '%n__'; -- Delete whose name has N on third place from right;



--================================================TRUNCATE STATEMENT===================================================
-- WITH TRUNCATE STATEMENT WE CANNOT DELETE RECORDS ONE BY ONE OR WITH CONDITION
-- IT DELETE ALL RECORDS AT ONE AND IT ALSO NOT DELETE STRUCTURE OF TABLE LIKE DELETE STATEMENT

-- SYNTAX---------------- TRUNCATE TABLE TABLE_NAME
--=====================================================================================================================

--Ahh now I am bored to create table and insert values in it
-- So Lets re-execute the insert stataement of Del_Table and try to delete all records with TRUNCATE at once

Select * from Del_Table;

Truncate table del_table;

Select * from Del_Table; -- aha, Its deleted all records of DEL_Table

--================================================DROP STATEMENT===================================================
-- DROP STATEMENT WILL DELETE ALL RECORDS AND STRUCTURE OF TABLE
-- DONT CONFUSE, IT MEANS NO TABLE NO RECORDS

-- SYNTAX---------------- DROP TABLE TABLE_NAME
--=====================================================================================================================

Select * from Del_Table; --Lets drop Del_Table

drop table Del_Table;

Select * from Del_Table; --After run it raise error that means structure of table is no more

--===================================================================================================================
--1)  DIFFERENCE BETWEEIN DELETE TRUNCATE AND DROP STATEMENT?
--     DELETE								       TRUNCATE										DROP
--A) DELETE RECORDS ONE BY ONE          A) DELETE RECORD AT A TIME                 A) DELETE STRUCTURE OF TABLE
--B) CANNOT DELETE STRUCTURE            B) CANNOT DELETE STRUCTURE

--2) DDL AND DML STATEMENT DIFFERENCE?

--     DDL (DATA DEFINATION LANGUAGE)                               DDL (DATA MANIPULATION LANGUAGE)
       ------------------------------                              -----------------------------------
--A)   PERFORM OPERATION ON TABLE LEVEL                          A)  PERFORM OPERATION INSIDE THE TABLE
--B)   CREATE,ALTER, DROP,TRUNCATE,SELECT                        B)  INSERT, DELETE, UPDATE      
--     ARE THE STATEMENTS TO PERFORM ON TABLE                      ARE THE STATEMENTS TO PERFORM INSIDE THE TABLE      
--=====================================================================================================================


--================================================UPDATE STATEMENT===================================================
-- UPDATE STATEMENT IS USED TO COLUMN DATA OR SPECIFIC RECORD WITH CONDITION
-- ITS OPERATION OF INSIDE TABLE - DML (DATA MANIPULATION LANGUAGE)
-- SET KEYWORD IS USE TO UPDATE TABLE

-- SYNTAX---------------- UPDATE TABLE_NAME SET COL_NAME=VALUE WHERE COL_NAME = CONDITION
--=====================================================================================================================

create table Oper_Table (Del_Id int, Del_Name varchar (10));

insert into Oper_Table values (1,'Pravin');
insert into Oper_Table values (2,'Pramod');
insert into Oper_Table values (3,'Saanvi');
insert into Oper_Table values (4,'Pravin');
insert into Oper_Table values (4, 'Pravin');
insert into Oper_Table values (5, 'Pravin'); -- Acutally we created Oper_Table but I realize I didnt change column name its as it is Del_Table which we previous created

select * from Oper_Table;

-- Name - pravin is duplicated on Id 5, we will change it to SAANVI with UPDATE statement

update Oper_Table set Del_Name = 'Saanvi' Where Del_Name='Pravin' And Del_Id =  5; -- Run select statement and it perfectly fine and SAANVI is updated to ID-5


--================================================ALTER STATEMENT===================================================
-- ALTER STATEMENT IS USED TO PERFORM TABLE LEVEL ATTRIBUTES OR COLUM
-- ITS OPERATION ON TABLE I.E DDL (DATA DEFINATION LANGUAGE)
-- WITH ALTER WE CAN ADD ONE OR MORE COLUMN
-- WE CAN DELETE ONE OR MORE COLUMN
-- WE CAN CHANE DATA TYPE OF COLUMN OR WE CAN INCREASE OR DECREASE LENTH OF COLUMN DATA TYPE

-- SYNTAX---------------- ALTER TABLE TABLE_NAME ADD COL_NAME DATA TYPE(SIZE) -- add single column
                       -- ALTER TABLE TABLE_NAME ADD COL_NAME DATA TYPE(SIZE),COL_NAME1 DATA TYPE(SIZE),COL_NAME2 DATA TYPE(SIZE)


--=====================================================================================================================

SELECT * FROM Oper_Table; -- IN THIS TABLE WE ADD ONE COLUMN WITH NAME LOCATION

ALTER TABLE OPER_TABLE ADD Del_Location Varchar(20); -- wow its added Del_Location in Oper_Table with all NULL Records

ALTER TABLE OPER_TABLE ADD DEL_GENDER VARCHAR(1),DEL_DATE VARCHAR(10);

SELECT * FROM Oper_Table; -- Added Del_gender and Del_Date with Null because we only add column not inserted data

---LETS DROP / DELETE NEW COLUMNS BY ALTER STATEMENT ( ONE OR MANY COLUMNS)

Alter table Oper_Table drop Column Del_Location; -- We have dropped  Column Name Del_Location

Alter table Oper_Table drop column Del_Gender, Del_Date; -- We dropper column name Del_Gender and Del_Date

insert into Oper_Table values (6,'Pravin T Rathod');-- Here we have passed Name whose length is 13 and we have created table with column name whose data size is10

--- so above statement is giving error
--Lets change data size of name column to 20 With alter statement and then we try to enter same record

Alter table Oper_Table Alter column Del_Name Varchar(20); -- Change data size to 20

insert into Oper_Table values (6,'Pravin T Rathod');-- Wow its done..

SELECT * FROM Oper_Table; 

--==========================================================FUNCTIONS===================================================================
                                                          --------------
--1. Min() - Returns minimun value from selected column
--2. Max() - Returns maximum value from selected column
--3. Count()
		--I.   Count no of record from table/column
		--II.  Count function always accept on argument
		--III. It wont count NULL values from table or Column

--4. Top()- Used to display top record from table as per specified count, It is very usefull when we have large amount of table
--5. sum() - 
		--I.  This function add all records from column and returns sum value in numeric expression.
		--II. Sum Ignores NULL values

--6.Avg() - Return Average of column and Ignores NULL Values.
--7. Distinct() - Used to find unique record from column
--=======================================================================================================================================

-- To perforn above operation we add one column of int dataype with ALTER statement to perform operations

Alter table Oper_Table Add Del_Fees int;
SELECT * FROM Oper_Table; -- Added one column whose values are NULL by default

-- Now insert record to Del_Fees column

Insert into Oper_Table(Del_Fees) Values (25000) where Del_Id=1;----- I THINK INSERT CONDITION NOT WORK WITH WHERE CLAUSE

UPDATE Oper_Table set Del_Fees=25000 where Del_Id=1;
update Oper_Table set del_fees=26000 where del_id=2;
update Oper_Table set del_fees=35000 where del_id=3;
update Oper_Table set del_fees=21000 where del_id=4;
update Oper_Table set del_fees=15000 where del_id=5;
update Oper_Table set del_fees=20000 where del_id=6;

-- UPDATED SALARY WITH UPDATE RECORDS

select min(del_fees) from Oper_Table; -- Min value-15000 shown but without column name
select min(del_fees) as minsal from Oper_Table;-- if use 'As' keyword with temporarry col name, Min value shows in temp col name

select max(del_fees) as maxsal from Oper_Table; -- Return max value which is 35000 in Oper_Table

Select count(*) as emp_count from Oper_Table;               -- BIG question - if use * in condition, it shoud return all record count of table which is 21 but here giving 7
Select count(Del_Name) as emp_count from Oper_Table; --Here giving answer 7

Select * from Employee_Details;

Select count(*) from Employee_Details;-- In other table also same reason as above


select Top 3 * from Oper_Table; -- Diplayed first 3 record
select Top 3 * from Oper_Table order by del_fees desc; -- record sorted in descending order and then show first 3 record

select sum(del_fees) as sumVal from Oper_Table;  --Return Total SUM

select Avg(del_fees) as avgVal from Oper_Table; -- Return Average values


select distinct(del_name) from Oper_Table;

select count(*) from Employee_Details where Emp_dept='Dispatch' -- Returns count of dispatch

--=========================================CONSTRAINTS============================================================================================

--CONSTRAINTS ARE USED TO MAINTAIN ACCURACY AND INTEGRITY OF DATA
 ------------

--1. PRIMARY KEY-- PRIMARY KEY IS UNIQE AND IT NEVER A NULL VALUE
				-- ALWAYS IDENTIFIES UNIQUE RECORD OF COLUMN
				-- USED FORR NUMERIC VALUES

Create table Trial_Customer ( Cust_ID int primary key, Cust_Name Varchar(20), Cust_Gender varchar(1));

insert into Trial_Customer values (1,'Pravin Rathod','M'); -- Done
insert into Trial_Customer values (1,'Pramod Rathod', 'M'); -- Oye matey, It wont run, you have assigned cust_ID as primary key and primary key must be unique, Pls change ID ->2
insert into Trial_Customer values (2,'Pramod Rathod','M');
Insert into Trial_Customer values (Null, 'Saanvi Rathod','F'); -- It wont execute because primary key is not accept NULL

select * from Trial_Customer;


--2. NOT NULL   -- RESTRICT TO INSERT NULL VALUES

Create table Trial_Customer1 ( Cust_ID int primary key, Cust_Name Varchar(20) NOT NULL, Cust_Gender varchar(1));

insert into Trial_Customer1 values (1,'Pravin Rathod','M'); -- Done
insert into Trial_Customer1 values (2,NULL, 'M'); -- Oye matey, It wont run, you have assigned CUST_NAME as NOT NULL so it wont allow NULL values
insert into Trial_Customer1 values (3,'','M'); --AAHA THIS EXECUTED, Please keep in mind BLANK OR ZERO IS NOT A NULL VALUE
select * from Trial_Customer1;


--3. UNIQUE - IT ENSURES THAT ALL RECORD SHOUD BE UNIQUE OR DIFFERENT, AND CAN ONLY ACCEPT ONE NULL VALUE IN A COLUMN

Create table Trial_Customer2 ( Cust_ID int primary key, Cust_Name Varchar(20) UNIQUE, Cust_Gender varchar(1));

insert into Trial_Customer2 values (1,'Pravin Rathod','M'); -- Done
insert into Trial_Customer2 values (2,'Pravin Rathod','M'); -- Pravin Rathod cannot be inserted because its already inserted before due to UNIQUE constraint

select * from Trial_Customer2;

--4. CHECK KEY -- ENSURE THAT ALL VALUES IN A COLUMN SATISFIES A CONDITION
               -- CHECK CONDITION IS USED TO RESTRICT THE VALUE OF THE COLUMN
			   -- ITS LIKE A CONDITION CHECKING BEFORE ENTERING A VALUE

Create table Trial_Customer3 ( Cust_ID int primary key, Cust_Name Varchar(20) UNIQUE, Cust_Gender varchar(1),Cust_Age int check (Cust_age >18));

-- Created table with check constrains so before entering age CHECK constraint will allow whose age is above 18

insert into Trial_Customer3 values (1,'Pravin Rathod','M',19); -- Done
insert into Trial_Customer3 values (2,'Pramod Rathod','M',14); -- Age below 18 restricted to enter in table due to CHECK CONSTRAINT


--5. AUTO INCREMENT -- ONCE YOU DEFINED AUTO INCREMENT, IT AUTOMATICALLY INSERT OR INCREMENT THE UNIQUE VALUE IN TABLE
                    -- IT WILL ALLOW YOU TO SPECIFY THE RANGE OF VALUES BY WHICH YOU WANT TO CREATE A UNIQUE VALUES
					-- FOR AUTO INCREMENT IDENTITY KEYWORD IS USE

					-- SYNTAX CREATE TABLE TABLE_NAME (COL_NAME DATA TYPE IDENTITY(START,DIFF), COL_NAME2-------

CREATE TABLE TRIAL_CUSTOME3(CUST_ID INT IDENTITY(1100,1),CUST_NAME VARCHAR(10));
INSERT INTO TRIAL_CUSTOME3 VALUES ('PRAVIN');
INSERT INTO TRIAL_CUSTOME3 VALUES ('PRAMOD');
INSERT INTO TRIAL_CUSTOME3 VALUES ('SAANVI');
INSERT INTO TRIAL_CUSTOME3 VALUES ('PRASHANT');
SELECT * FROM TRIAL_CUSTOME3;

--CREATE TABLE TRIAL_CUSTOME4(CUST_ID  IDENTITY(1201,1) INT,CUST_NAME VARCHAR(10)); -- I TRIED TO PUT DATA TYPE AFTER IDENITY AND IT WONT WORK
-- DATA TYPE IS ALWAYS AFTER COL_NAME

--6. FOREIGN KEY (FK) -- A FK IS COLUMN OR COLLECTION OF COLUMN IN A TABLE THAT REFERES PRIMARY KEY IN ANOTHER TABLE
                      -- NULL VALUE CAN BE ALLOWED IN A FOREIGN KEY


CREATE TABLE TRIAL_CUSTOMER4(CUST_ID INT PRIMARY KEY IDENTITY(1100,1),CUST_NAME VARCHAR(10),CUST_AGE INT);
INSERT INTO TRIAL_CUSTOMER4 VALUES ('PRAVIN',25);
INSERT INTO TRIAL_CUSTOMER4 VALUES ('PRAMOD',23);
INSERT INTO TRIAL_CUSTOMER4 VALUES ('SAANVI',4);
INSERT INTO TRIAL_CUSTOMER4 VALUES ('PRASHANT',20);
SELECT * FROM TRIAL_CUSTOMER4;

--CREATE TABLE TRIAL_CUSTOMER5(CUST_ID INT  IDENTITY(1100,1) PRIMARY KEY,CUST_NAME VARCHAR(10),CUST_AGE INT);
-- I TRIED TO CHANGE IDNITY AND PRIMARY KEY LOCATION AFTER DATA TYPE AND ITS WORK


CREATE TABLE CUSTOMER_DETAILS ( CUST_LOCATION VARCHAR(10), CUSTOMER_GENDER VARCHAR(1), CUST_ID INT FOREIGN KEY REFERENCES TRIAL_CUSTOMER4(CUST_ID));

Insert into CUSTOMER_DETAILS values('Pune','M',1100);
Insert into CUSTOMER_DETAILS values('Pune','M',1101);

select * from CUSTOMER_DETAILS;


--6. DEFAULT CONSTRAINT  --SET A DEFAULT VALUE TO COLUMN WHERE VALUE IS NOT INSERTED/DEFINED/SPECIFIED

Create table Trial_Customer6 ( Cust_Id int,Cust_Name Varchar(10), Cust_City Varchar(10) Default 'Pune');

insert into Trial_Customer6 values(1,'Pravin','Solapur');
insert into Trial_Customer6 values (2,'Pramod','');         -- if blank City keep and passed  it taken as blank space
insert into Trial_Customer6 values (2,'Pramod',Default);-- -- We have to use Default keyword if we dont know city name


select * from Trial_Customer6;



--=========================================GROUP BY======================================================
--GROUP BY STAMENTS ARE USED WITH CONJECTION WITH AGGREGATE FUNCTIONS TO GROUP RESULT SET BY ONE OR MORE COLUMN
-- AGGREGATE FUNCTION -  MIN, MAX, COUNT, AVG, SUM

--SYNTAX--

-- SELECT COL_NAME, AGG_FUN(COL_NAME) FROM TABLE_NAME WHERE COL_NAME <CONDITION> GROUP BY COL_NAME



SELECT * FROM Employee_Details; -- WE USE EMPLOYEE_DETAILS TABLE HERE
SELECT Emp_dept,MAX(EMP_SALARY) FROM Employee_Details WHERE Emp_Salary >20000 GROUP BY Emp_dept;

SELECT Emp_dept,MAX(EMP_SALARY) AS MAX_SAL FROM Employee_Details GROUP BY Emp_dept;-- SHOWS DEPT WISE MAX SAL

SELECT Emp_dept,MAX(EMP_SALARY) FROM Employee_Details WHERE Emp_dept IS NOT NULL AND Emp_dept<>'' GROUP BY Emp_dept;
-- WITH ABOVE STATEMENT I AVOID TO SHOW DEPT WITH NULL VALUE AND BLANK SPACE



--=========================================HAVING======================================================
-- HAVING CLAUSE ADDED IN SQL BECAUSE WHERE CLAUSE CANNOT BE USED WITH GROUP BY CLAUSE

--SYNTAX-- SELECT COL_NAME, AGG_FUN(COL_NAME) FROM TABLE_NAME WHERE COL_NAME <CONDITION> GROUP BY NAME HAVING AGG_FUN(COL_NAME)<CONDITION>

SELECT * FROM Employee_Details; -- WE USE THIS TABLE

-- WE HAVE TO DRR THE DEPT WISE TOTAL SALARY IS GREATER THAN 50,000

SELECT EMP_DEPT,SUM(EMP_SALARY) FROM Employee_Details WHERE SUM(EMP_SALARY)>50000 GROUP BY Emp_dept HAVING SUM(EMP_SALARY)>50000;

-- ABOVE STATEMENT ITS NOT EXECUTED DUE TO WHERE CLAUSE , NOW WE REMOVE WHERE CLAUSE AND TRY TO SEE RESULT

SELECT EMP_DEPT,SUM(EMP_SALARY) FROM Employee_Details  GROUP BY Emp_dept HAVING SUM(EMP_SALARY)>50000;-- ITS WORKINGG

-- BY USING GROUP BY AND HAVING WE CAN IDENTIFY THE DUPLICATE RECORDS

SELECT EMP_ID,EMP_NAME,EMP_SALARY,EMP_DEPT, COUNT(*) FROM Employee_Details GROUP BY EMP_ID,EMP_NAME,EMP_SALARY,EMP_DEPT HAVING COUNT(*)>1;

-- IN ABOVE STATEMENT THERE IS NO DUPLICATE RECORDS IF WE CONSIDER ALL COLUMNS AT A TIME

-- BUT IF I WANT TO CONSIDER ONE COLUMN WHICH HAVE DUPLICATE VALUE WE CAN CONSIDER THAN COL NAME IN STATEMENT AS BELOW

SELECT EMP_DEPT,COUNT(*) AS NO_OF_REPITATION FROM Employee_Details GROUP BY Emp_dept HAVING COUNT(*)>1 ;-- DONE


--===========================================================SET OPERATOR==============================================
--1. UNION - 

		--The Union operator is used to combine the result-set of two or more SELECT statements or Table.
		--The UNION operator selects distinct values by default.

--Note: 
--A.Each select statement or table within UNION must have the same number of columns.
--B.The columns must have similar data types.
--C.The columns is SELECT statement or table must be in the same order.

--Example :
--A =[1,2,3,4,5]
--B= [3,4,5,6,7]

--A union B =O/P =[1,2,3,4,5,6,7]

create table set1 (S_ID int ,SNAME varchar(2));

create table set2 (S_ID int ,SNAME varchar(2));

insert into set1 values(1,'A')
insert into set1 values(2,'B')
insert into set1 values(3,'C')
insert into set2 values(3,'C')--
insert into set2 values(4,'D')
insert into set2 values(5,'E')
insert into set2 values(6,'F')
insert into set2 values(7,'G')
insert into set2 values(8,'H')
insert into set2 values(9,'Ha')

SELECT * FROM set1 UNION SELECT * FROM set2;

--2.Union All
--This operator is used to combine two or more tables using select statement when both the tables have same no. of columns.
--Combine the two or more tables with all the values. it means that it will allow duplicate values in it.

 select * from set1 Union  all select * from set2;

--3.Intersection
--It will return only distinct (common records) values from two or more tables.

 select * from set1 intersect select * from set2

--4.Except/minus
--It will display the difference in records.
--For ex: A = [1,2,3] and B= [3,4,5]
--then A except B - O/P =[1,2]
--then B except A - O/P =[4,5]

 select * from set1
 select * from set2
 
 select * from set1
 Except
 select * from set2
 
 select Sname from set2
 Except
 select Sname from set1

 -- ===========================================================DATE AND TIME FUNCTION=====================================

 --getdate 
select getdate() as Todays_date-- Todays date

select getdate() -1 as Yesterday_date --Yesterday date 

select getdate() +1 as Tomorrow_date --Tomorrow date 

select getdate() +2

--There are three diffrent functions in SQL to modify or perform any date related task
--1.DATEDIFF()
--2.DATEPART()
--3.DATEADD()

--1.datediff() function
--The datediff function requires 3 argument(s).
--If we provide more than 3 arguments then it will throW an exception 

--(YY,MM,DD,HH,Minutes and seconds)

select DATEDIFF(YYYY,'1987/09/13','2021/09/13')

select DATEDIFF(HH,getdate(),GETDATE()+2)
--syntax : DATEDIFF(interval,date1,date2)

--interval
--Year,YYYY, YY = Year
--Quarter,QQ, Q = Quarter
--Month - MM, M = Month
--DAYOFYEAR - day of the year
--DAY,dy,y = day
--WEEK,WW,WK = weekday
--HOUR,HH = hour
--MINUTE,MI,N = Minute
--SECOND,SS,S = Second 
--MILISECOND , MS = Millisecond


select datediff(MINUTE,'2015/01/01','2021/08/01')

--Q.HOW  to calculate your age ?

select DATEDIFF(YY,'1989/05/15',getdate()) as Present_Age

Create table Account_details (ACCT_NUMBER int primary key identity(11112881,1),ACCT_NAME varchar(20),ACCT_OPEN_DATE date,BRANCH Varchar(20))

insert into Account_details values ('Shubham','2015/12/09','MUMBAI')
insert into Account_details values ('Rihan','2016/01/12','Jaipur')
insert into Account_details values ('Sheetal','2017/08/11','GOA')
insert into Account_details values ('Priyanka','2017/01/01','Chennai')
insert into Account_details values ('Manik','2015/01/08','Agra')
insert into Account_details values ('Veena','2021/01/01','Patna')
insert into Account_details values ('Rohan','2019/07/01','Pune')
insert into Account_details values ('Laxmi',GETDATE(),'rohatak')
insert into Account_details values ('Jinal',GETDATE(),'Indore')

select * from Account_details

select GETDATE()

select ACCT_NUMBER,ACCT_NAME,ACCT_OPEN_DATE , DATEDIFF(MM,ACCT_OPEN_DATE,GETDATE()) as Ageofaccount from Account_details
where DATEDIFF(yy,ACCT_OPEN_DATE,GETDATE()) >1

--Q.What is the age of your bank account

select ACCT_NUMBER, ACCT_NAME, DATEDIFF(YY,ACCT_OPEN_DATE,getdate()) as ACCOUNT_AGE from Account_details

--Q.Calculate the no of accounts which is opened during the current year.

select ACCT_NUMBER, ACCT_NAME, DATEDIFF(YY,ACCT_OPEN_DATE,getdate()) as ACCOUNT_AGE,count(*) from Account_details
where DATEDIFF(YY,ACCT_OPEN_DATE,getdate()) =0

--2.DATEPART
--This will allow you to display the date part 
--Syntax : DATEPART(interval,date/column_name)

select getdate()
select DATEPART(HH,GETDATE())

select * from Account_details
select *,datepart(YY,ACCT_OPEN_DATE) as date from Account_details where datepart(YY,ACCT_OPEN_DATE) =2021  

select * from Account_details where ACCT_OPEN_DATE in ('2021')

--if we want to validate date related column which is in terms of timestamp 
--and it is very difficult to mention each and every time stamp related column with every date
--in order to avoid that we can use date part so it will consider with mentioned interval.

select count(*) from Account_details where DATEPART(YY,ACCT_OPEN_DATE) in ('2021','2015')

select datepart(yy,getdate()) as years, datepart(MM,getdate()) as months  --- yers and months

--3.DATEADD()
--it will allow you to add the dates.
--it will accept three arguments.
--syntax : DATEADD(interval,value,date/datecolumn)

select DATEADD(DD,30,GETDATE()) as after30days




--==================================================Exist and Not Exist=====================================
--EXIST is used to check whether the result of co-related nested query is empty or not.
--Exist(S) 
--TRUE: S has atleast one row/record
--FALSE : S has no row/record.

--NOT EXIST(S)
--TRUE:S has no row/record.
--FALSE :S has atleast one row/record

Create Table customer(C_ID varchar(5) primary key ,CNAME varchar(20),Loc varchar(20))


insert into customer values('C1','AMIT','PUNE')
insert into customer values('C2','Sumit','Delhi')
insert into customer values('C3','varun','Mumbai')
insert into customer values('C4','snehal','Latur')
insert into customer values('C5','Raj','Sangli')
insert into customer values('C6','Mohit','Satara')

select * from customer



create table orders(OID int primary key, CID varchar(5),groceries varchar(20))

insert into orders values(1,'C2','almonds')
insert into orders values(2,'C3','deo')
insert into orders values(3,'C1','milk')
insert into orders values(4,'C2','soap') 
insert into orders values(5,'C4','dishes')
insert into orders values(6,'C2','rice')

select * from orders


--C_ID	CNAME	Loc -- CUSTOMER
--C1	AMIT	PUNE
--C2	Sumit	Delhi
--C3	varun	Mumbai
--C4	snehal	Latur
--C5	Raj	   Sangli
--C6	Mohit	Satara


--OID	CID	groceries -- ORDERS
--1 	C2	almonds
--2 	C3	deo
--3	    C1	milk
--4 	C2	soap
--5	    C4	dishes
--6	    C2	rice
select * from customer C where exists (select * from orders O where C.C_ID =O.CID ) -- C_id 4 AND 5 EXIST IN ORDER TABLE

select * from customer C where not exists (select * from orders O where C.C_ID =O.CID )--C_id 5 AND 6 NOT EXIST IN ORDER TABL


--================================Sub query and Co-Relational Query===================================================
--Sub query(Nested subquery)
--Query within query i.e outer query(OQ) and inside inner query(IQ).
--OQ and IQ is independent.
--It follows bottom up approach
--Inside Subquery, IQ always execute only once.

select * from customer where C_ID in (select CID from orders) --(C2,C3,C1,C2,C4,C2)
-----------------OUTER QUERRY-------  -------INNER QUERY---



--Co-relational query
--Query within query i.e outer query(OQ) and inside inner query(IQ).
--IQ is dependent on outer query.
--It follows top down up approach.

select * from customer C where exists (select * from orders O where C.C_ID =O.CID )
--------------OUTER QUERY------       -------------------INNER QUERY--------------

--Q.What is the diffrence between Sub query and Co-relational query.


--================================================== JOIN ================================================================================

-- JOIN IS USED TO RETURN A VALUE FROM BOTH THE TABLES WHICH SHOULD HAVE COMMON COLUMNS IN BOTH TABLES
-- JOIN IS A KEYWORRD IS USED IN EXCEL TO EXTRACT THE DATA FROM TWO OR MORE TABLES.
--=========================================================================================================================================

-- TYPE OF JOINS
--1) JOIN / INNER JOIN 
--2) OUTER JOIN
		-- a) LEFT JOIN / LEFT OUTER JOIN.
		-- b) RIGHT JOIN /RIGHT OUTER JOIN
		-- c) FULL JOIN / FULL OUTER JOIN

--3) SELF JOIN
--4) EQUI JOIN
--5) CROSS JOIN

--1) INNER JOIN/ JOIN -- THIS WILL RETURN THE ONLY MATCHING RECORDS FROM TABLE
    ------------------

	-- SYNTAX -- SELECT */ COL_NAME(S) FROM TABLE_NAME1 INNER JOIN/ JOIN TABLE_NAME2 ON TABLE TABLE_NAME1.COL_NAME=TABLE_NAME2.COL_NAME

CREATE TABLE A( AID INT , NAME VARCHAR(20));

CREATE TABLE B( BID INT , NAME VARCHAR(20), AID  INT);

CREATE TABLE C( CID INT , NAME VARCHAR(20), BID INT);

SELECT * FROM A;
SELECT * FROM B;
SELECT * FROM c;



insert Into A values(1,'Sam')
insert Into A values(2,'tom')
insert Into A values(3,'harry')
insert Into A values(4,'katich')
insert Into A values(5,'kate')


insert Into B values(11,'harry',3)
insert Into B values(12,'katich',4)
insert Into B values(13,'kate',5)
insert Into B values(14,'mate',6)
insert Into B values(15,'sat',7)

insert Into C values(21,'harry',13)
insert Into C values(22,'katich',14)
insert Into C values(23,'kate',15)
insert Into C values(24,'mate',16)
insert Into C values(25,'sat',17)


SELECT * FROM A;
SELECT * FROM B;
SELECT * FROM c;

-- JOIN TWO TABLES

SELECT A.AID,A.NAME,B.BID FROM A JOIN B ON A.AID=B.AID; -- ONLY EXTRACTED RECORD WHICH IS COMMON IN BOTH A AND B TABLES WHICH IS 3,4,5

SELECT A.AID,A.NAME,B.BID FROM A INNER JOIN B ON A.AID=B.AID -- JOIN/INNER JOIN CAN BE USED

select a.aid,b.bid,c.cid from a join b on a.aid=b.aid join c on b.bid=c.bid;




--Outer Join
--1.Left Outer Join/Left Join
--The LEFT JOIN returns all rows from the left side table and common values from both table

Create Table A1 (Aid int);
Create Table B2 (Aid int);

insert into a1 values (1);
insert into a1 values (2);
insert into a1 values (3);
insert into a1 values (4);
insert into a1 values (5);

insert into b2 values (3);
insert into b2 values (4);
insert into b2 values (5);

select * from a1;
select * from b2;

select * from a1 left join b2 on a1.aid=b2.aid; -- left join take all values from left side table and common records from right table


--RIGHT JOIN/ RIGHT OUTER JOIN

--

Select * from a1 right join b2 on a1.aid=b2.aid;

Select * from b2 right join a1 on a1.aid=b2.aid; -- RIGHT JOIN TAKE ALL VALUES FROM RIGHT SIDE TABLE AMD COMMON RECORDS FROM LEFT TABLE


--3--The Full JOIN returns all rows from the both side table.
--It will display complete table A and B.

select * from a1  full  join b2 on a1.aid=b2.aid;



4--Equi_join
--Equi_join  is join but without using a join keyword we can join the two or more tables.
--While writing Equi-join will use where clause

	
	select * from a1,b2 where a1.aid=b2.aid;

create table EMP_new (id int, name varchar (10),Company varchar (10),Work varchar (10));
insert into EMP_new values (1,'Amit','Info','pune')
insert into EMP_new values (2,'Puja','Tcs','Mumbai')
insert into EMP_new values (3,'Poonam','Tech','Pune')
insert into EMP_new values (4,'Abhi','Logic','Nagpur')
insert into EMP_new values (5,'Kirti','Lim','Nagar')

create table Job (salary int,base varchar (10),id int)
insert into job values (10000,'Pune',1)
insert into job values (20000,'Mumbai',3)
insert into job values (30000,'Nagpur',4)
insert into job values (40000,'Pune',5)
insert into job values (35000,'Nagar',2)
insert into job values (40000,'Barshi',6)

select * from EMP_new;

select * from Job;

select * from EMP_new,job where EMP_new.id=job.id;

5--Cross Join 
--Cross Join is nothing but a cartesian product.

select * from A
select * from B
--By using cross join we can create inner join by providing condition.
select * from a cross join b where a.Aid =b.Aid


---Self join
--Joining a table with itself is nothing but self join.

create table SELF_TEST_EMP(EID int, ENAME varchar(20),ManagerID varchar(20))

insert into SELF_TEST_EMP values(1,'Shivam',2)
insert into SELF_TEST_EMP values(2,'krishna',4)
insert into SELF_TEST_EMP values(3,'meera',NULL)
insert into SELF_TEST_EMP values(4,'radha',2)
insert into SELF_TEST_EMP values(5,'bali',1)


select * from SELF_TEST_EMP

select * from SELF_TEST_EMP as T1 ,SELF_TEST_EMP as T2 where T1.ManagerID = T2.EID
select T1.eid ,T1.Ename from SELF_TEST_EMP as T1 ,SELF_TEST_EMP as T2 where T1.ManagerID = T2.EID

select * from EMP_new;

--Q. Display name and respected manager name. (Self join)
--Use same table -SELF_TEST_EMP	


select * from Account_details
select * from  customer
select * from  employee_details

select * from CUSTOMER_DETAILS


--==============================================ROW NUMBER,RANK AND DENSE RANK

CREATE TABLE TRIAL1( iD INT IDENTITY(1,1),NAME VARCHAR(10),AGE INT,SALARY INT);

INSERT INTO  TRIAL1 VALUES ('PRAVIN',20,25000);
INSERT INTO  TRIAL1 VALUES ('PRAMOD',25,30000);
INSERT INTO  TRIAL1 VALUES ('RAJU',22,25000);
INSERT INTO  TRIAL1 VALUES ('SAANVI',10,22000)
INSERT INTO  TRIAL1 VALUES ('MANVI',4,50000);
INSERT INTO  TRIAL1 VALUES ('SUHAS',30,45000);
INSERT INTO  TRIAL1 VALUES ('SACHIN',35,50000)

SELECT * FROM TRIAL1

SELECT * ,ROW_NUMBER() OVER ( ORDER BY AGE DESC ) AS Row,RANK() OVER ( ORDER BY AGE DESC) AS NEW_Rank, DENSE_RANK() OVER ( ORDER BY AGE DESC) AS NEW_Dense FROM TRIAL1

SELECT *, DENSE_RANK() OVER (ORDER BY AGE DESC) AS NEW_ROW FROM TRIAL1--  WHERE NEW_ROW=2; -- GET ERROR

--CTE
--SYNTAX
-- WITH CTE_TABLE AS
   -- QUERY
   -- SELECT * FROM TABLE CTE_TABLE WHERE---

WITH TRIAL_TABLE AS (  SELECT *, DENSE_RANK() OVER( ORDER BY AGE DESC) AS NEW_ROW FROM TRIAL1) SELECT * FROM TRIAL_TABLE WHERE NEW_ROW=3;

--PARTITION BY---

--WITH TRIAL_TABLE AS (  SELECT *, DENSE_RANK() OVER( PARTITION BY  AGE DESC) AS NEW_ROW FROM TRIAL1) SELECT * FROM TRIAL_TABLE WHERE NEW_ROW=2;

SELECT * FROM Employee_Details

SELECT *, DENSE_RANK() OVER ( ORDER BY EMP_SALARY DESC) AS NEW_ROW FROM EMPLOYEE_DETAILS;
WITH NEW_TABLE AS (SELECT *,DENSE_RANK() OVER (ORDER BY EMP_SALARY DESC) AS NEW_COL FROM Employee_Details) SELECT * FROM NEW_TABLE WHERE NEW_COL=2;

WITH NEW_TABLE AS (SELECT *,DENSE_RANK() OVER (PARTITION BY Emp_dept ORDER BY EMP_SALARY DESC) AS NEW_COL FROM Employee_Details) SELECT * FROM NEW_TABLE WHERE NEW_COL=2;

CREATE TABLE OVER_TEST (EMP_ID INT, FIRSTNAME VARCHAR(20), GENDER VARCHAR(2), SALARY INT);

INSERT INTO OVER_TEST VALUES(1,'MOHINI','F',1000)
INSERT INTO OVER_TEST VALUES(2,'ROHIT','M',2000)
INSERT INTO OVER_TEST VALUES(3,'AMIT','M',3000)
INSERT INTO OVER_TEST VALUES(4,'SONAL','F',4000)
INSERT INTO OVER_TEST VALUES(5,'MINAL','F',5000)
INSERT INTO OVER_TEST VALUES(6,'AMAR','M',6000)
INSERT INTO OVER_TEST VALUES(7,'SHITAL','F',7000)
INSERT INTO OVER_TEST VALUES(8,'SOHIL','M',8000)
INSERT INTO OVER_TEST VALUES(9,'PARVEEN','F',9000)
INSERT INTO OVER_TEST VALUES(10,'MITHALI','F',9000)
INSERT INTO OVER_TEST VALUES(11,'SEEMA','F',9000)
INSERT INTO OVER_TEST VALUES(12,'MEENA','F',10000)

SELECT * FROM OVER_TEST;

select emp_id,FIRSTNAME,Count(*) as Dup from OVER_TEST group by emp_id,FIRSTNAME;

WITH NEW_TABLE AS
(SELECT *,DENSE_RANK() OVER (PARTITION BY GENDER ORDER BY SALARY DESC) AS NEW_ROW FROM OVER_TEST)
SELECT * FROM NEW_TABLE WHERE  NEW_ROW>='1';

WITH NEW_TABLE AS
(SELECT *,ROW_NUMBER() OVER (PARTITION BY GENDER ORDER BY GENDER DESC) AS NEW_ROW FROM OVER_TEST)
SELECT * FROM NEW_TABLE ORDER BY NEW_ROW,GENDER;

select * from over_test;

with new_table as 
( select FIRSTNAME,Salary,
ROW_NUMBER() over (order by salary) as Dup, 
dense_rank() over (order by salary) as dup1 from OVER_TEST),

delete from new_table where dup1>'1';
