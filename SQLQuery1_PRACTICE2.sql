------------------------------JOIN-----------------

CREATE TABLE CUST_ORDER (ORDER_NO INT, PURCHASE_AMT INT, ORDER_DATE DATE, CUSTOMER_ID INT, SALESMAN_ID INT);
INSERT INTO CUST_ORDER VALUES (70001,150.5,'2012/10/5',3005,5002);
INSERT INTO CUST_ORDER VALUES (70009,270.65,'2012/09/10',3001,5005);
INSERT INTO CUST_ORDER VALUES (70002,65.26,'2012/10/05',3002,5001);
INSERT INTO CUST_ORDER VALUES (70004,110.5,'2012/08/17',3009,5003);
INSERT INTO CUST_ORDER VALUES (70007,948.5,'2012/09/10',3005,5002);
INSERT INTO CUST_ORDER VALUES (70005,2400.6,'2012/07/27',3007,5001);
INSERT INTO CUST_ORDER VALUES (70008,5760,'2012/09/10',3002,5001);
INSERT INTO CUST_ORDER VALUES (70010,1983.43,'2012/10/10',3004,5006);
INSERT INTO CUST_ORDER VALUES (70003,2480.4,'2012/10/10',3009,5003);
INSERT INTO CUST_ORDER VALUES (70012,250.45,'2012/06/27',3008,5002);
INSERT INTO CUST_ORDER VALUES (70011,75.29,'2012/08/17',3003,5007);
INSERT INTO CUST_ORDER VALUES (70013,3045.6,'2012/04/25',3002,5001);


CREATE TABLE CUSTOMER_TABLE ( CUSTOMER_ID INT, CUSTOMER_NAME VARCHAR(20),CITY VARCHAR(10),GRADE INT,SALESMAN_ID INT);
INSERT INTO CUSTOMER_TABLE VALUES (3002,'NICK RIMANDO','NEWYORK',100,5001);
INSERT INTO CUSTOMER_TABLE VALUES(3007,'BRAD DAVIS','NEWYORK',200,5001);
INSERT INTO CUSTOMER_TABLE VALUES(3005,'GRAHAM ZUSI','CALIFORNIA',200,5002);
INSERT INTO CUSTOMER_TABLE VALUES(3008,'JULIAN GREEN','LONDON',300,5002);
INSERT INTO CUSTOMER_TABLE VALUES(3004,'FABIAN JOHNSON','PARIS',300,5006);
INSERT INTO CUSTOMER_TABLE VALUES(3009,'GEOFF CAMERON','BERLIN',100,5003);
INSERT INTO CUSTOMER_TABLE VALUES(3006,'JOZY ALTIDOR','MOSCOW',200,5007);
INSERT INTO CUSTOMER_TABLE VALUES(3001,'BRAND GUZAN','LONDON','' ,5005);

CREATE TABLE SALESMAN (SALESMAN_ID INT, S_NAME VARCHAR(15),CITY VARCHAR(10),COMMISION FLOAT);
INSERT INTO SALESMAN VALUES(5001,'JAMES HONG','NEWYORK',0.15);
INSERT INTO SALESMAN VALUES(5002,'NILE KNITE','PARIS',0.13);
INSERT INTO SALESMAN VALUES(5005,'PIT ALEX','LONDON',0.11);
INSERT INTO SALESMAN VALUES(5006,'MC LYON','PARIS',0.14);
INSERT INTO SALESMAN VALUES(5007,'PAUL ADAM','ROME',0.13);
INSERT INTO SALESMAN VALUES(5003,'LAUSON HEN','SAN JOSE',0.12);

SELECT * FROM CUST_ORDER;
SELECT * FROM CUSTOMER_TABLE;
SELECT * FROM SALESMAN;


SELECT * FROM CUSTOMER_TABLE;
SELECT * FROM SALESMAN;
SELECT * FROM CUST_ORDER;
--2) MAKE A JOIN ON THE TABLES SALESMAN,CUSTOMER,AND ORDERS IN SUCH A FORM THAT THE SAME COLUMN OF EACH TABLE WILL
--APPEAR ONCE AND ONLY THE RELATION ROWS WILL COME


select DISTINCT S.SALESMAN_ID, S.S_NAME,S.CITY,c.CUSTOMER_ID,c.CUSTOMER_NAME,c.CITY,c.GRADE,O.ORDER_NO,O.PURCHASE_AMT,O.ORDER_DATE,S.COMMISION from SALESMAN s inner join  
CUSTOMER_TABLE c on s.salesman_id=c.SALESMAN_ID
INNER JOIN CUST_ORDER O ON C.SALESMAN_ID=O.SALESMAN_ID

-------------------------------

select DISTINCT S.SALESMAN_ID, S.S_NAME,S.CITY,c.CUSTOMER_ID,c.CUSTOMER_NAME,c.CITY,c.GRADE,S.COMMISION,O.ORDER_NO,O.ORDER_DATE,O.PURCHASE_AMT from SALESMAN s,CUSTOMER_TABLE C,CUST_ORDER O
WHERE S.SALESMAN_ID=C.SALESMAN_ID AND C.SALESMAN_ID=O.SALESMAN_ID
