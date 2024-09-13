REM   Script: Session 03
REM   SESSION2

select SUM(purchase_amount) AS "Total sum" from orders;

CREATE TABLE salesman (salesman_id INT,salesman_name varchar2(20),salesman_city varchar2(20),commission int);

DESCRIBE salesman


INSERT INTO salesman VALUES(5001,"James Hoog","New York",15);

INSERT ALL  
    INTO salesman VALUES(5005, 'Pit Alex', 'London', 11) 
    INTO salesman VALUES(5006, 'McLyon', 'Paris', 14) 
    INTO salesman VALUES(5007, 'Paul Adam', 'Rome', 13) 
    INTO salesman VALUES(5003, 'Lauson Hen', 'San Jose', 12);

INSERT ALL  
    INTO salesman VALUES(5005, 'Pit Alex', 'London', 11) 
    INTO salesman VALUES(5006, 'McLyon', 'Paris', 14) 
    INTO salesman VALUES(5007, 'Paul Adam', 'Rome', 13) 
    INTO salesman VALUES(5003, 'Lauson Hen', 'San Jose', 12) 
SELECT 1 FROM DUAL 
;

INSERT INTO salesman VALUES(5001,"James Hoog","New York",15);

SELECT * FROM salesman;

INSERT INTO salesman VALUE(5001,"James Hoog","New York",15);

INSERT INTO salesman VALUE(5001,"James Hoog","New York",15) 
    SELECT 1 FROM DUAL;

INSERT INTO salesman VALUE(5001,"James Hoog","New York",15) 
    SELECT 1 FROM DUAL;

INSERT INTO salesman VALUES(5001,"James Hoog","New York",15);

INSERT INTO salesman VALUES(5001,'James Hoog','New York',15);

SELECT * FROM salesman;

select salesman_id ,salesman_city  from salesman;

select * from salesman where salesman_city ="paris";

select * from salesman where salesman_city ='paris';

select salesman_id ,commission   from salesman where salesman_name='Paul Adam';

alter table salesman add grade int;

UPDATE salesman SET grade=100;

UPDATE salesman SET grade=100;

select * from salesman;

UPDATE salesman SET grade=200 where salesman_city='Rome';

UPDATE salesman SET grade=300 where salesman_name like'James%';

UPDATE salesman SET grade=300 where salesman_name like'James%';

UPDATE salesman SET salesman_name='McLyon' where salesman_name ='McLyon';

select * from salesman;

UPDATE salesman SET salesman_name='Pierre' where salesman_name ='McLyon';

select * from salesman 
;

create table orders( 
    order_no int primary key, purchase_amount float, order_date date, 
    customer_id int, salesman_id int);

INSERT ALL 
    INTO orders VALUES(70001, 150.5, TO_DATE('2012/10/05', 'YYYY/MM/DD'), 3005, 5002)  
    INTO orders VALUES(70009, 270.65, TO_DATE('2012/09/10', 'YYYY/MM/DD'), 3001, 5005) 
    INTO orders VALUES(70002, 65.26, TO_DATE('2012/10/05', 'YYYY/MM/DD'), 3002, 5001) 
    INTO orders VALUES(70004, 110.5, TO_DATE('2012/08/17', 'YYYY/MM/DD'), 3009, 5003) 
    INTO orders VALUES(70007, 948.5, TO_DATE('2012/09/10', 'YYYY/MM/DD'), 3005, 5002) 
    INTO orders VALUES(70005, 2400.6, TO_DATE('2012/07/27', 'YYYY/MM/DD'), 3007, 5001) 
    INTO orders VALUES(70008, 5760, TO_DATE('2012/08/15', 'YYYY/MM/DD'), 3002, 5001) 
    INTO orders VALUES(70010, 1983.43, TO_DATE('2012/10/10', 'YYYY/MM/DD'), 3004, 5006) 
    INTO orders VALUES(70003, 2480.4, TO_DATE('2012/10/10', 'YYYY/MM/DD'), 3009, 5003) 
    INTO orders VALUES(70012, 250.45, TO_DATE('2012/06/27', 'YYYY/MM/DD'), 3008, 5002) 
    INTO orders VALUES(70011, 75.29, TO_DATE('2012/08/17', 'YYYY/MM/DD'), 3003, 5007) 
    INTO orders VALUES(70013, 3045.6, TO_DATE('2012/04/25', 'YYYY/MM/DD'), 3002, 5001) 
SELECT 1 FROM DUAL;

select distinct salesman_id from orders;

select order_no from orders order by TO_DATE asc;

CREATE TABLE salesman (salesman_id INT,salesman_name varchar2(20),salesman_city varchar2(20),commission int);

DESCRIBE salesman


INSERT INTO salesman VALUES(5001,'James Hoog','New York',15) 
     
INSERT ALL  
    INTO salesman VALUES(5005, 'Pit Alex', 'London', 11) 
    INTO salesman VALUES(5006, 'McLyon', 'Paris', 14) 
    INTO salesman VALUES(5007, 'Paul Adam', 'Rome', 13) 
    INTO salesman VALUES(5003, 'Lauson Hen', 'San Jose', 12) 
SELECT 1 FROM DUAL 
 
SELECT * FROM salesman;

select salesman_id ,salesman_city  from salesman;

select * from salesman where salesman_city ='paris';

select salesman_id ,commission   from salesman where salesman_name='Paul Adam';

alter table salesman add grade int;

UPDATE salesman SET grade=100;

select * from salesman;

UPDATE salesman SET grade=200 where salesman_city='Rome';

UPDATE salesman SET grade=300 where salesman_name like'James%';

UPDATE salesman SET salesman_name='Pierre' where salesman_name ='McLyon';

select * from salesman 
 
-------activity6 
 
-- Create a table named orders 
create table orders( 
    order_no int primary key, purchase_amount float, order_date date, 
    customer_id int, salesman_id int);

INSERT ALL 
    INTO orders VALUES(70001, 150.5, TO_DATE('2012/10/05', 'YYYY/MM/DD'), 3005, 5002)  
    INTO orders VALUES(70009, 270.65, TO_DATE('2012/09/10', 'YYYY/MM/DD'), 3001, 5005) 
    INTO orders VALUES(70002, 65.26, TO_DATE('2012/10/05', 'YYYY/MM/DD'), 3002, 5001) 
    INTO orders VALUES(70004, 110.5, TO_DATE('2012/08/17', 'YYYY/MM/DD'), 3009, 5003) 
    INTO orders VALUES(70007, 948.5, TO_DATE('2012/09/10', 'YYYY/MM/DD'), 3005, 5002) 
    INTO orders VALUES(70005, 2400.6, TO_DATE('2012/07/27', 'YYYY/MM/DD'), 3007, 5001) 
    INTO orders VALUES(70008, 5760, TO_DATE('2012/08/15', 'YYYY/MM/DD'), 3002, 5001) 
    INTO orders VALUES(70010, 1983.43, TO_DATE('2012/10/10', 'YYYY/MM/DD'), 3004, 5006) 
    INTO orders VALUES(70003, 2480.4, TO_DATE('2012/10/10', 'YYYY/MM/DD'), 3009, 5003) 
    INTO orders VALUES(70012, 250.45, TO_DATE('2012/06/27', 'YYYY/MM/DD'), 3008, 5002) 
    INTO orders VALUES(70011, 75.29, TO_DATE('2012/08/17', 'YYYY/MM/DD'), 3003, 5007) 
    INTO orders VALUES(70013, 3045.6, TO_DATE('2012/04/25', 'YYYY/MM/DD'), 3002, 5001) 
SELECT 1 FROM DUAL;

select distinct salesman_id from orders 
 
select order_no from orders order by order_date asc;

select order_no from orders order by order_date asc;

select order_no from orders order by purchase_amount desc;

selct * from  orders where purchase_amount < 500;


selct * from  orders where purchase_amount <= 500;


selct * from  orders where purchase_amount < 500;


selct * from  orders where purchase_amount < '500';


select * from orders where purchase_amount between 1000 and 2000;

select * from  orders where purchase_amount < 500;

CREATE TABLE salesman (salesman_id INT,salesman_name varchar2(20),salesman_city varchar2(20),commission int);

DESCRIBE salesman


INSERT INTO salesman VALUES(5001,"James Hoog","New York",15);

INSERT ALL  
    INTO salesman VALUES(5005, 'Pit Alex', 'London', 11) 
    INTO salesman VALUES(5006, 'McLyon', 'Paris', 14) 
    INTO salesman VALUES(5007, 'Paul Adam', 'Rome', 13) 
    INTO salesman VALUES(5003, 'Lauson Hen', 'San Jose', 12);

INSERT ALL  
    INTO salesman VALUES(5005, 'Pit Alex', 'London', 11) 
    INTO salesman VALUES(5006, 'McLyon', 'Paris', 14) 
    INTO salesman VALUES(5007, 'Paul Adam', 'Rome', 13) 
    INTO salesman VALUES(5003, 'Lauson Hen', 'San Jose', 12) 
SELECT 1 FROM DUAL 
;

INSERT INTO salesman VALUES(5001,"James Hoog","New York",15);

SELECT * FROM salesman;

INSERT INTO salesman VALUE(5001,"James Hoog","New York",15);

INSERT INTO salesman VALUE(5001,"James Hoog","New York",15) 
    SELECT 1 FROM DUAL;

INSERT INTO salesman VALUE(5001,"James Hoog","New York",15) 
    SELECT 1 FROM DUAL;

INSERT INTO salesman VALUES(5001,"James Hoog","New York",15);

INSERT INTO salesman VALUES(5001,'James Hoog','New York',15);

SELECT * FROM salesman;

select SUM(purchase_amount) AS "Total sum" from orders;

select salesman_id ,salesman_city  from salesman;

select * from salesman where salesman_city ="paris";

select * from salesman where salesman_city ='paris';

select salesman_id ,commission   from salesman where salesman_name='Paul Adam';

alter table salesman add grade int;

UPDATE salesman SET grade=100;

UPDATE salesman SET grade=100;

select * from salesman;

UPDATE salesman SET grade=200 where salesman_city='Rome';

UPDATE salesman SET grade=300 where salesman_name like'James%';

UPDATE salesman SET grade=300 where salesman_name like'James%';

UPDATE salesman SET salesman_name='McLyon' where salesman_name ='McLyon';

select * from salesman;

UPDATE salesman SET salesman_name='Pierre' where salesman_name ='McLyon';

select * from salesman 
;

create table orders( 
    order_no int primary key, purchase_amount float, order_date date, 
    customer_id int, salesman_id int);

INSERT ALL 
    INTO orders VALUES(70001, 150.5, TO_DATE('2012/10/05', 'YYYY/MM/DD'), 3005, 5002)  
    INTO orders VALUES(70009, 270.65, TO_DATE('2012/09/10', 'YYYY/MM/DD'), 3001, 5005) 
    INTO orders VALUES(70002, 65.26, TO_DATE('2012/10/05', 'YYYY/MM/DD'), 3002, 5001) 
    INTO orders VALUES(70004, 110.5, TO_DATE('2012/08/17', 'YYYY/MM/DD'), 3009, 5003) 
    INTO orders VALUES(70007, 948.5, TO_DATE('2012/09/10', 'YYYY/MM/DD'), 3005, 5002) 
    INTO orders VALUES(70005, 2400.6, TO_DATE('2012/07/27', 'YYYY/MM/DD'), 3007, 5001) 
    INTO orders VALUES(70008, 5760, TO_DATE('2012/08/15', 'YYYY/MM/DD'), 3002, 5001) 
    INTO orders VALUES(70010, 1983.43, TO_DATE('2012/10/10', 'YYYY/MM/DD'), 3004, 5006) 
    INTO orders VALUES(70003, 2480.4, TO_DATE('2012/10/10', 'YYYY/MM/DD'), 3009, 5003) 
    INTO orders VALUES(70012, 250.45, TO_DATE('2012/06/27', 'YYYY/MM/DD'), 3008, 5002) 
    INTO orders VALUES(70011, 75.29, TO_DATE('2012/08/17', 'YYYY/MM/DD'), 3003, 5007) 
    INTO orders VALUES(70013, 3045.6, TO_DATE('2012/04/25', 'YYYY/MM/DD'), 3002, 5001) 
SELECT 1 FROM DUAL;

select distinct salesman_id from orders;

select order_no from orders order by TO_DATE asc;

CREATE TABLE salesman (salesman_id INT,salesman_name varchar2(20),salesman_city varchar2(20),commission int);

DESCRIBE salesman


INSERT INTO salesman VALUES(5001,'James Hoog','New York',15) 
     
INSERT ALL  
    INTO salesman VALUES(5005, 'Pit Alex', 'London', 11) 
    INTO salesman VALUES(5006, 'McLyon', 'Paris', 14) 
    INTO salesman VALUES(5007, 'Paul Adam', 'Rome', 13) 
    INTO salesman VALUES(5003, 'Lauson Hen', 'San Jose', 12) 
SELECT 1 FROM DUAL 
 
SELECT * FROM salesman;

select salesman_id ,salesman_city  from salesman;

select * from salesman where salesman_city ='paris';

select salesman_id ,commission   from salesman where salesman_name='Paul Adam';

alter table salesman add grade int;

UPDATE salesman SET grade=100;

select * from salesman;

UPDATE salesman SET grade=200 where salesman_city='Rome';

UPDATE salesman SET grade=300 where salesman_name like'James%';

UPDATE salesman SET salesman_name='Pierre' where salesman_name ='McLyon';

select * from salesman 
 
-------activity6 
 
-- Create a table named orders 
create table orders( 
    order_no int primary key, purchase_amount float, order_date date, 
    customer_id int, salesman_id int);

INSERT ALL 
    INTO orders VALUES(70001, 150.5, TO_DATE('2012/10/05', 'YYYY/MM/DD'), 3005, 5002)  
    INTO orders VALUES(70009, 270.65, TO_DATE('2012/09/10', 'YYYY/MM/DD'), 3001, 5005) 
    INTO orders VALUES(70002, 65.26, TO_DATE('2012/10/05', 'YYYY/MM/DD'), 3002, 5001) 
    INTO orders VALUES(70004, 110.5, TO_DATE('2012/08/17', 'YYYY/MM/DD'), 3009, 5003) 
    INTO orders VALUES(70007, 948.5, TO_DATE('2012/09/10', 'YYYY/MM/DD'), 3005, 5002) 
    INTO orders VALUES(70005, 2400.6, TO_DATE('2012/07/27', 'YYYY/MM/DD'), 3007, 5001) 
    INTO orders VALUES(70008, 5760, TO_DATE('2012/08/15', 'YYYY/MM/DD'), 3002, 5001) 
    INTO orders VALUES(70010, 1983.43, TO_DATE('2012/10/10', 'YYYY/MM/DD'), 3004, 5006) 
    INTO orders VALUES(70003, 2480.4, TO_DATE('2012/10/10', 'YYYY/MM/DD'), 3009, 5003) 
    INTO orders VALUES(70012, 250.45, TO_DATE('2012/06/27', 'YYYY/MM/DD'), 3008, 5002) 
    INTO orders VALUES(70011, 75.29, TO_DATE('2012/08/17', 'YYYY/MM/DD'), 3003, 5007) 
    INTO orders VALUES(70013, 3045.6, TO_DATE('2012/04/25', 'YYYY/MM/DD'), 3002, 5001) 
SELECT 1 FROM DUAL;

select distinct salesman_id from orders 
 
select order_no from orders order by order_date asc;

select order_no from orders order by order_date asc;

select order_no from orders order by purchase_amount desc;

selct * from  orders where purchase_amount < 500;


selct * from  orders where purchase_amount <= 500;


selct * from  orders where purchase_amount < 500;


selct * from  orders where purchase_amount < '500';


select * from orders where purchase_amount between 1000 and 2000;

select * from  orders where purchase_amount < 500;

select SUM(purchase_amount) AS "Total sum" from orders;

select COUNT(salesman_id) AS "Total count" from orders;

SELECT * FROM orders ORDER BY CUSTOMER_ID;

SELECT * , MAX(PURCHASE_AMOUNT)FROM orders ORDER BY CUSTOMER_ID;

select SUM(purchase_amount) AS "Total sum" from orders;

select AVG(purchase_amount) AS "Average" from orders;

select MAX(purchase_amount) AS "Maximum" from orders;

select MIN(purchase_amount) AS "Minumum" from orders;

select COUNT(salesman_id) AS "Total count" from orders;

SELECT * , MAX(PURCHASE_AMOUNT) FROM orders ORDER BY CUSTOMER_ID;

select SUM(purchase_amount) AS "Total sum" from orders;

select AVG(purchase_amount) AS "Average" from orders;

select MAX(purchase_amount) AS "Maximum" from orders;

select MIN(purchase_amount) AS "Minumum" from orders;

select COUNT(salesman_id) AS "Total count" from orders;

SELECT * , MAX(PURCHASE_AMOUNT) AS MAX_AMOUNT FROM orders ORDER BY CUSTOMER_ID;

select SUM(purchase_amount) AS "Total sum" from orders;

select AVG(purchase_amount) AS "Average" from orders;

select MAX(purchase_amount) AS "Maximum" from orders;

select MIN(purchase_amount) AS "Minumum" from orders;

select COUNT(salesman_id) AS "Total count" from orders;

SELECT CUSTOMER_ID , MAX(PURCHASE_AMOUNT) AS MAX_AMOUNT FROM orders ORDER BY CUSTOMER_ID;

SELECT customer_id, MAX(purchase_amount) AS "Max Amount" FROM orders GROUP BY customer_id;

SELECT * FROM ORDERS;

SELECT customer_id, MAX(purchase_amount) AS "Max_Amount" FROM orders WHERE Order_date ='2012-08-17';

SELECT customer_id, MAX(purchase_amount) AS "Max_Amount" FROM orders WHERE order_date=To_DATE('2012/08/17', 'YYYY/MM/DD;

SELECT customer_id, MAX(purchase_amount) AS "Max_Amount" FROM orders WHERE order_date=To_DATE('2012/08/17', 'YYYY/MM/DD;

SELECT customer_id, MAX(purchase_amount) AS "Max_Amount" FROM orders WHERE order_date=To_DATE('2012/08/17', 'YYYY/MM/DD');

SELECT customer_id, MAX(purchase_amount) AS "Max_Amount" FROM orders  
    WHERE order_date=To_DATE('2012/08/17', 'YYYY/MM/DD');

SELECT salesman_id, order_date, MAX(purchase_amount) AS "Max Amount" FROM orders  
WHERE order_date=To_DATE('2012/08/17', 'YYYY/MM/DD') GROUP BY salesman_id, order_date;

SELECT customer_id, MAX(purchase_amount) AS "Max_Amount" FROM orders  
    WHERE order_date=To_DATE('2012/08/17', 'YYYY/MM/DD');

SELECT *, MAX(purchase_amount) AS "Max_Amount" FROM orders  
    WHERE order_date=To_DATE('2012/08/17', 'YYYY/MM/DD') GROUP BY salesman_id;

SELECT customer_id,salesman_id, order_date, MAX(purchase_amount) AS "Max_Amount" FROM orders  
    WHERE order_date=To_DATE('2012/08/17', 'YYYY/MM/DD') GROUP BY salesman_id;

SELECT customer_id,salesman_id, order_date, MAX(purchase_amount) AS "Max_Amount" FROM orders  
    WHERE order_date=To_DATE('2012/08/17', 'YYYY/MM/DD') GROUP BY salesman_id,order_date;

SELECT customer_id,salesman_id, order_date, MAX(purchase_amount) AS "Max_Amount" FROM orders  
    WHERE order_date=To_DATE('2012/08/17', 'YYYY/MM/DD') GROUP BY salesman_id,order_date;

SELECT salesman_id, MAX(purchase_amount) AS "Max_Amount" FROM orders  
    WHERE order_date=To_DATE('2012/08/17', 'YYYY/MM/DD') GROUP BY salesman_id;

SELECT salesman_id,order_date MAX(purchase_amount) AS "Max_Amount" FROM orders  
    WHERE order_date=To_DATE('2012/08/17', 'YYYY/MM/DD') GROUP BY salesman_id,order_date;

SELECT salesman_id,order_date ,MAX(purchase_amount) AS "Max_Amount" FROM orders  
    WHERE order_date=To_DATE('2012/08/17', 'YYYY/MM/DD') GROUP BY salesman_id,order_date;

SELECT customer_id, order_date, MAX(purchase_amount) AS "Max Amount" FROM orders 
GROUP BY customer_id, order_date 
HAVING MAX(purchase_amount) IN(2030, 3450, 5760, 6000);

create table customers ( 
    customer_id int primary key, customer_name varchar(32), 
    city varchar(20), grade int, salesman_id int);

INSERT ALL 
    INTO customers VALUES (3002, 'Nick Rimando', 'New York', 100, 5001) 
    INTO customers VALUES (3007, 'Brad Davis', 'New York', 200, 5001) 
    INTO customers VALUES (3005, 'Graham Zusi', 'California', 200, 5002) 
    INTO customers VALUES (3008, 'Julian Green', 'London', 300, 5002) 
    INTO customers VALUES (3004, 'Fabian Johnson', 'Paris', 300, 5006) 
    INTO customers VALUES (3009, 'Geoff Cameron', 'Berlin', 100, 5003) 
    INTO customers VALUES (3003, 'Jozy Altidor', 'Moscow', 200, 5007) 
    INTO customers VALUES (3001, 'Brad Guzan', 'London', 300, 5005) 
SELECT 1 FROM DUAL;

CREATE TABLE salesman (salesman_id INT,salesman_name varchar2(20),salesman_city varchar2(20),commission int);

DESCRIBE salesman


INSERT INTO salesman VALUES(5001,"James Hoog","New York",15);

INSERT ALL  
    INTO salesman VALUES(5005, 'Pit Alex', 'London', 11) 
    INTO salesman VALUES(5006, 'McLyon', 'Paris', 14) 
    INTO salesman VALUES(5007, 'Paul Adam', 'Rome', 13) 
    INTO salesman VALUES(5003, 'Lauson Hen', 'San Jose', 12);

INSERT ALL  
    INTO salesman VALUES(5005, 'Pit Alex', 'London', 11) 
    INTO salesman VALUES(5006, 'McLyon', 'Paris', 14) 
    INTO salesman VALUES(5007, 'Paul Adam', 'Rome', 13) 
    INTO salesman VALUES(5003, 'Lauson Hen', 'San Jose', 12) 
SELECT 1 FROM DUAL 
;

INSERT INTO salesman VALUES(5001,"James Hoog","New York",15);

SELECT * FROM salesman;

INSERT INTO salesman VALUE(5001,"James Hoog","New York",15);

INSERT INTO salesman VALUE(5001,"James Hoog","New York",15) 
    SELECT 1 FROM DUAL;

INSERT INTO salesman VALUE(5001,"James Hoog","New York",15) 
    SELECT 1 FROM DUAL;

INSERT INTO salesman VALUES(5001,"James Hoog","New York",15);

INSERT INTO salesman VALUES(5001,'James Hoog','New York',15);

SELECT * FROM salesman;

select salesman_id ,salesman_city  from salesman;

select * from salesman where salesman_city ="paris";

select * from salesman where salesman_city ='paris';

select salesman_id ,commission   from salesman where salesman_name='Paul Adam';

alter table salesman add grade int;

UPDATE salesman SET grade=100;

UPDATE salesman SET grade=100;

select * from salesman;

UPDATE salesman SET grade=200 where salesman_city='Rome';

UPDATE salesman SET grade=300 where salesman_name like'James%';

UPDATE salesman SET grade=300 where salesman_name like'James%';

UPDATE salesman SET salesman_name='McLyon' where salesman_name ='McLyon';

select * from salesman;

UPDATE salesman SET salesman_name='Pierre' where salesman_name ='McLyon';

select * from salesman 
;

create table orders( 
    order_no int primary key, purchase_amount float, order_date date, 
    customer_id int, salesman_id int);

INSERT ALL 
    INTO orders VALUES(70001, 150.5, TO_DATE('2012/10/05', 'YYYY/MM/DD'), 3005, 5002)  
    INTO orders VALUES(70009, 270.65, TO_DATE('2012/09/10', 'YYYY/MM/DD'), 3001, 5005) 
    INTO orders VALUES(70002, 65.26, TO_DATE('2012/10/05', 'YYYY/MM/DD'), 3002, 5001) 
    INTO orders VALUES(70004, 110.5, TO_DATE('2012/08/17', 'YYYY/MM/DD'), 3009, 5003) 
    INTO orders VALUES(70007, 948.5, TO_DATE('2012/09/10', 'YYYY/MM/DD'), 3005, 5002) 
    INTO orders VALUES(70005, 2400.6, TO_DATE('2012/07/27', 'YYYY/MM/DD'), 3007, 5001) 
    INTO orders VALUES(70008, 5760, TO_DATE('2012/08/15', 'YYYY/MM/DD'), 3002, 5001) 
    INTO orders VALUES(70010, 1983.43, TO_DATE('2012/10/10', 'YYYY/MM/DD'), 3004, 5006) 
    INTO orders VALUES(70003, 2480.4, TO_DATE('2012/10/10', 'YYYY/MM/DD'), 3009, 5003) 
    INTO orders VALUES(70012, 250.45, TO_DATE('2012/06/27', 'YYYY/MM/DD'), 3008, 5002) 
    INTO orders VALUES(70011, 75.29, TO_DATE('2012/08/17', 'YYYY/MM/DD'), 3003, 5007) 
    INTO orders VALUES(70013, 3045.6, TO_DATE('2012/04/25', 'YYYY/MM/DD'), 3002, 5001) 
SELECT 1 FROM DUAL;

select distinct salesman_id from orders;

select order_no from orders order by TO_DATE asc;

CREATE TABLE salesman (salesman_id INT,salesman_name varchar2(20),salesman_city varchar2(20),commission int);

DESCRIBE salesman


INSERT INTO salesman VALUES(5001,'James Hoog','New York',15) 
     
INSERT ALL  
    INTO salesman VALUES(5005, 'Pit Alex', 'London', 11) 
    INTO salesman VALUES(5006, 'McLyon', 'Paris', 14) 
    INTO salesman VALUES(5007, 'Paul Adam', 'Rome', 13) 
    INTO salesman VALUES(5003, 'Lauson Hen', 'San Jose', 12) 
SELECT 1 FROM DUAL 
 
SELECT * FROM salesman;

select salesman_id ,salesman_city  from salesman;

select * from salesman where salesman_city ='paris';

select salesman_id ,commission   from salesman where salesman_name='Paul Adam';

alter table salesman add grade int;

UPDATE salesman SET grade=100;

select * from salesman;

UPDATE salesman SET grade=200 where salesman_city='Rome';

UPDATE salesman SET grade=300 where salesman_name like'James%';

UPDATE salesman SET salesman_name='Pierre' where salesman_name ='McLyon';

select * from salesman 
 
-------activity6 
 
-- Create a table named orders 
create table orders( 
    order_no int primary key, purchase_amount float, order_date date, 
    customer_id int, salesman_id int);

INSERT ALL 
    INTO orders VALUES(70001, 150.5, TO_DATE('2012/10/05', 'YYYY/MM/DD'), 3005, 5002)  
    INTO orders VALUES(70009, 270.65, TO_DATE('2012/09/10', 'YYYY/MM/DD'), 3001, 5005) 
    INTO orders VALUES(70002, 65.26, TO_DATE('2012/10/05', 'YYYY/MM/DD'), 3002, 5001) 
    INTO orders VALUES(70004, 110.5, TO_DATE('2012/08/17', 'YYYY/MM/DD'), 3009, 5003) 
    INTO orders VALUES(70007, 948.5, TO_DATE('2012/09/10', 'YYYY/MM/DD'), 3005, 5002) 
    INTO orders VALUES(70005, 2400.6, TO_DATE('2012/07/27', 'YYYY/MM/DD'), 3007, 5001) 
    INTO orders VALUES(70008, 5760, TO_DATE('2012/08/15', 'YYYY/MM/DD'), 3002, 5001) 
    INTO orders VALUES(70010, 1983.43, TO_DATE('2012/10/10', 'YYYY/MM/DD'), 3004, 5006) 
    INTO orders VALUES(70003, 2480.4, TO_DATE('2012/10/10', 'YYYY/MM/DD'), 3009, 5003) 
    INTO orders VALUES(70012, 250.45, TO_DATE('2012/06/27', 'YYYY/MM/DD'), 3008, 5002) 
    INTO orders VALUES(70011, 75.29, TO_DATE('2012/08/17', 'YYYY/MM/DD'), 3003, 5007) 
    INTO orders VALUES(70013, 3045.6, TO_DATE('2012/04/25', 'YYYY/MM/DD'), 3002, 5001) 
SELECT 1 FROM DUAL;

select distinct salesman_id from orders 
 
select order_no from orders order by order_date asc;

select order_no from orders order by order_date asc;

select order_no from orders order by purchase_amount desc;

selct * from  orders where purchase_amount < 500;


selct * from  orders where purchase_amount <= 500;


selct * from  orders where purchase_amount < 500;


selct * from  orders where purchase_amount < '500';


select * from orders where purchase_amount between 1000 and 2000;

select * from  orders where purchase_amount < 500;

CREATE TABLE salesman (salesman_id INT,salesman_name varchar2(20),salesman_city varchar2(20),commission int);

DESCRIBE salesman


INSERT INTO salesman VALUES(5001,"James Hoog","New York",15);

INSERT ALL  
    INTO salesman VALUES(5005, 'Pit Alex', 'London', 11) 
    INTO salesman VALUES(5006, 'McLyon', 'Paris', 14) 
    INTO salesman VALUES(5007, 'Paul Adam', 'Rome', 13) 
    INTO salesman VALUES(5003, 'Lauson Hen', 'San Jose', 12);

INSERT ALL  
    INTO salesman VALUES(5005, 'Pit Alex', 'London', 11) 
    INTO salesman VALUES(5006, 'McLyon', 'Paris', 14) 
    INTO salesman VALUES(5007, 'Paul Adam', 'Rome', 13) 
    INTO salesman VALUES(5003, 'Lauson Hen', 'San Jose', 12) 
SELECT 1 FROM DUAL 
;

INSERT INTO salesman VALUES(5001,"James Hoog","New York",15);

SELECT * FROM salesman;

INSERT INTO salesman VALUE(5001,"James Hoog","New York",15);

INSERT INTO salesman VALUE(5001,"James Hoog","New York",15) 
    SELECT 1 FROM DUAL;

INSERT INTO salesman VALUE(5001,"James Hoog","New York",15) 
    SELECT 1 FROM DUAL;

INSERT INTO salesman VALUES(5001,"James Hoog","New York",15);

INSERT INTO salesman VALUES(5001,'James Hoog','New York',15);

SELECT * FROM salesman;

select salesman_id ,salesman_city  from salesman;

select * from salesman where salesman_city ="paris";

select * from salesman where salesman_city ='paris';

select salesman_id ,commission   from salesman where salesman_name='Paul Adam';

alter table salesman add grade int;

UPDATE salesman SET grade=100;

UPDATE salesman SET grade=100;

select * from salesman;

UPDATE salesman SET grade=200 where salesman_city='Rome';

UPDATE salesman SET grade=300 where salesman_name like'James%';

UPDATE salesman SET grade=300 where salesman_name like'James%';

UPDATE salesman SET salesman_name='McLyon' where salesman_name ='McLyon';

select * from salesman;

UPDATE salesman SET salesman_name='Pierre' where salesman_name ='McLyon';

select * from salesman 
;

create table orders( 
    order_no int primary key, purchase_amount float, order_date date, 
    customer_id int, salesman_id int);

INSERT ALL 
    INTO orders VALUES(70001, 150.5, TO_DATE('2012/10/05', 'YYYY/MM/DD'), 3005, 5002)  
    INTO orders VALUES(70009, 270.65, TO_DATE('2012/09/10', 'YYYY/MM/DD'), 3001, 5005) 
    INTO orders VALUES(70002, 65.26, TO_DATE('2012/10/05', 'YYYY/MM/DD'), 3002, 5001) 
    INTO orders VALUES(70004, 110.5, TO_DATE('2012/08/17', 'YYYY/MM/DD'), 3009, 5003) 
    INTO orders VALUES(70007, 948.5, TO_DATE('2012/09/10', 'YYYY/MM/DD'), 3005, 5002) 
    INTO orders VALUES(70005, 2400.6, TO_DATE('2012/07/27', 'YYYY/MM/DD'), 3007, 5001) 
    INTO orders VALUES(70008, 5760, TO_DATE('2012/08/15', 'YYYY/MM/DD'), 3002, 5001) 
    INTO orders VALUES(70010, 1983.43, TO_DATE('2012/10/10', 'YYYY/MM/DD'), 3004, 5006) 
    INTO orders VALUES(70003, 2480.4, TO_DATE('2012/10/10', 'YYYY/MM/DD'), 3009, 5003) 
    INTO orders VALUES(70012, 250.45, TO_DATE('2012/06/27', 'YYYY/MM/DD'), 3008, 5002) 
    INTO orders VALUES(70011, 75.29, TO_DATE('2012/08/17', 'YYYY/MM/DD'), 3003, 5007) 
    INTO orders VALUES(70013, 3045.6, TO_DATE('2012/04/25', 'YYYY/MM/DD'), 3002, 5001) 
SELECT 1 FROM DUAL;

select distinct salesman_id from orders;

select order_no from orders order by TO_DATE asc;

CREATE TABLE salesman (salesman_id INT,salesman_name varchar2(20),salesman_city varchar2(20),commission int);

DESCRIBE salesman


INSERT INTO salesman VALUES(5001,'James Hoog','New York',15) 
     
INSERT ALL  
    INTO salesman VALUES(5005, 'Pit Alex', 'London', 11) 
    INTO salesman VALUES(5006, 'McLyon', 'Paris', 14) 
    INTO salesman VALUES(5007, 'Paul Adam', 'Rome', 13) 
    INTO salesman VALUES(5003, 'Lauson Hen', 'San Jose', 12) 
SELECT 1 FROM DUAL 
 
SELECT * FROM salesman;

select salesman_id ,salesman_city  from salesman;

select * from salesman where salesman_city ='paris';

select salesman_id ,commission   from salesman where salesman_name='Paul Adam';

alter table salesman add grade int;

UPDATE salesman SET grade=100;

select * from salesman;

UPDATE salesman SET grade=200 where salesman_city='Rome';

UPDATE salesman SET grade=300 where salesman_name like'James%';

UPDATE salesman SET salesman_name='Pierre' where salesman_name ='McLyon';

select * from salesman 
 
-------activity6 
 
-- Create a table named orders 
create table orders( 
    order_no int primary key, purchase_amount float, order_date date, 
    customer_id int, salesman_id int);

INSERT ALL 
    INTO orders VALUES(70001, 150.5, TO_DATE('2012/10/05', 'YYYY/MM/DD'), 3005, 5002)  
    INTO orders VALUES(70009, 270.65, TO_DATE('2012/09/10', 'YYYY/MM/DD'), 3001, 5005) 
    INTO orders VALUES(70002, 65.26, TO_DATE('2012/10/05', 'YYYY/MM/DD'), 3002, 5001) 
    INTO orders VALUES(70004, 110.5, TO_DATE('2012/08/17', 'YYYY/MM/DD'), 3009, 5003) 
    INTO orders VALUES(70007, 948.5, TO_DATE('2012/09/10', 'YYYY/MM/DD'), 3005, 5002) 
    INTO orders VALUES(70005, 2400.6, TO_DATE('2012/07/27', 'YYYY/MM/DD'), 3007, 5001) 
    INTO orders VALUES(70008, 5760, TO_DATE('2012/08/15', 'YYYY/MM/DD'), 3002, 5001) 
    INTO orders VALUES(70010, 1983.43, TO_DATE('2012/10/10', 'YYYY/MM/DD'), 3004, 5006) 
    INTO orders VALUES(70003, 2480.4, TO_DATE('2012/10/10', 'YYYY/MM/DD'), 3009, 5003) 
    INTO orders VALUES(70012, 250.45, TO_DATE('2012/06/27', 'YYYY/MM/DD'), 3008, 5002) 
    INTO orders VALUES(70011, 75.29, TO_DATE('2012/08/17', 'YYYY/MM/DD'), 3003, 5007) 
    INTO orders VALUES(70013, 3045.6, TO_DATE('2012/04/25', 'YYYY/MM/DD'), 3002, 5001) 
SELECT 1 FROM DUAL;

select distinct salesman_id from orders 
 
select order_no from orders order by order_date asc;

select order_no from orders order by order_date asc;

select order_no from orders order by purchase_amount desc;

selct * from  orders where purchase_amount < 500;


selct * from  orders where purchase_amount <= 500;


selct * from  orders where purchase_amount < 500;


selct * from  orders where purchase_amount < '500';


select * from orders where purchase_amount between 1000 and 2000;

select * from  orders where purchase_amount < 500;

SELECT * FRM ORDERS;

SELECT * FROM ORDERS;

SELECT * FROM salesman;

SELECT * FROM customers;

SELECT * FROM ORDERS;

SELECT * FROM salesman;

SELECT * FROM customers;

SELECT * FROM salesman;

SELECT a.salesman_id,a.SALESMAN_NAME,b.customer_id,b.customer_NAME 
from salesman a 
join customers b on a.SALESMAN_ID=b.SALESMAN_ID;

SELECT * FROM ORDERS;

SELECT * FROM customers;

SELECT a.salesman_id,a.SALESMAN_NAME,b.customer_id,b.customer_NAME 
from salesman a 
join customers b on a.SALESMAN_ID=b.SALESMAN_ID where b.grade > 300 order by customer_id asc;

SELECT a.salesman_id,a.SALESMAN_NAME,b.customer_id,b.customer_NAME 
from salesman a 
join customers b on a.SALESMAN_ID=b.SALESMAN_ID where b.grade < 300 order by customer_id asc;

SELECT * FROM salesman;

SELECT a.salesman_id,a.SALESMAN_NAME,b.customer_id,b.customer_NAME 
from salesman a 
join customers b on a.SALESMAN_ID=b.SALESMAN_ID where a.commission >12;

SELECT * FROM ORDERS;

SELECT a.salesman_id,a.SALESMAN_NAME,b.customer_id,b.customer_NAME,c.order_no,order_date,PURCHASE_AMOUNT 
from salesman a 
join customers b on a.SALESMAN_ID=b.SALESMAN_ID 
join orders c on a.SALESMAN_ID=c.SALESMAN_ID;

SELECT a.salesman_id,a.SALESMAN_NAME,b.customer_id,b.customer_NAME,c.order_no,order_date,PURCHASE_AMOUNT 
from salesman a 
join customers b on a.SALESMAN_ID=b.SALESMAN_ID 
join orders c on a.SALESMAN_ID=c.SALESMAN_ID 
WHERE CUSTOMER_ID='3007';

SELECT a.salesman_id,a.SALESMAN_NAME,b.customer_id,b.customer_NAME,c.order_no,order_date,PURCHASE_AMOUNT 
from salesman a 
join customers b on a.SALESMAN_ID=b.SALESMAN_ID 
join orders c on a.SALESMAN_ID=c.SALESMAN_ID 
WHERE b.CUSTOMER_ID='3007';

