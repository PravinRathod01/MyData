
--Created Table
create table customer (Cust_Id int, F_Name varchar(15), City varchar(15), Mobile_No varchar(10), Pan_No varchar(10), Gender varchar(1), DOB varchar(10));

Select * from  Customer;  --Showing Created table

---Now Lets Insert Data/Records

Insert into customer values (100,'Pravin Rathod','Solapur','1234567890','ASPI1234P','M','15/05/1989');

Select * From customer; --- Succesfully added one record

Insert into customer values (200,'Pramod Rathod','Pune','1111222233','QWERT1234P','M','15/05/1990'); -- Inserted 2 nd record

--now adding 8 data/records
Insert into customer values (300,'Pooja Pawar','Beed','0194583869','LKSHJ1234P','F','09/10/1991');
Insert into customer values (400,'Nayna Raut','Solapur','9999999999','PPPPP2323p','F','06/11/1992');
Insert into customer values (500,'Sakshi Jadhav','Pune','8888888888','ABSDF1234Q','F','15/01.1995');
Insert into customer values (600,'Saanvi Rathod','Solapur','7777777777','MMMMM1234Q','F','17/02/2000');

--Insert all values at a time by selecting all

--Show data by select statment

Select * From customer; --- Succesfully added all record

Insert into customer values (700,'Rohit Pawar','Beed','6546534567','GDHDG3333A','M','09/10/1991');
Insert into customer values (800,'Girish Chavan','Solapur','9898989898','PPPPP2323P','M','06/11/1992');
Insert into customer values (900,'Rohan Chavan','Pune','5555555555','LLLLL5555M','M','15/01/1995');
Insert into customer values (6100,'Saanvi Rathod','Solapur','6666666666','GGGGG1111G','F','17/02/2000');

Select * From customer;

---Succesfully added 10 rows with method 1

Insert into customer values (6100,'Aaradhya Rathod','Solapur','333333333','','F','17/02/2000'); -- keep Pan_No Blank to check what will answer

-- Blan values passed

Insert into customer values ('','Sachin','Solapur','1111111111','GGGGG1111G','F','17/02/2000'); -- Send Blank In Integer

-- Zero Passed To Filled

---------------------------Method 2-------------------------------

Insert into customer (City) Values ('Aurangabad'); -- Except City aall values pass NULL  

Insert into customer (City,Mobile_No) Values ('Aurangabad','0909090909'); --Except city and Mobile no all values pass NULL
select * from customer;


--14/03/2022  -------Cluases----
--Comparative Operator
--****  = != < > ,= >=****

Select * From customer where F_Name='Saanvi Rathod'; --With = (Equal To)
Select * from customer Where F_Name!='Saanvi Rathod'; --With != (Not Equal to)
Select * from customer Where Cust_Id!>100; -- Greater Than 100 data shown

Select * from customer Where Cust_Id>300; -- Greater Than 300 data shown
Select * from customer Where Cust_Id<300; -- Smaller Than 300 data shown
Select * from customer Where Cust_Id>=300; -- Greater Than and equal to 300 data shown
Select * from customer Where Cust_Id<=300; -- Smaller Than and equal 300 data shown

----Logical Operator-- AND OR

Select * from customer;

--AND--
Select * from customer where F_name = 'Saanvi Rathod' AND Mobile_No='7777777777'; -- Shows only data of saanvi whose mob no is 7777777777

--OR---
Select * from customer Where F_Name ='Saanvi Rathod' or City = 'Solapur'; -- both condituion match so shows
-- values of name where name is saanvi and another who is from solapur

Select * from customer Where F_Name ='Rohit Pawar' or City = 'Kerala';

-- Either show Rohit details

select * from customer;

Select * from  customer where F_Name in ('Saanvi Rathod');  -- In Operator With Single value
Select * from customer Where  F_Name in ('Saanvi Rathod','Rohit Pawar'); -- In Operator With Multiple Value

Select * from  customer where F_Name Not in ('Saanvi Rathod');  -- Not In Operator With Single value
Select * from customer Where  F_Name Not in ('Saanvi Rathod','Rohit Pawar'); -- Not In Operator With Multiple Value

Select * from customer where Cust_Id between 200 and  500; -- Between Operator


------14/03/2022 -- Homework---

select * from customer where city='Solapur' and Cust_Id between 100 and 600; -- multiple Operators
select * from customer where city='Solapur' and Cust_Id between 100 and 600 and F_Name in ('Saanvi Rathod'); -- multiple Operators

select * from customer;