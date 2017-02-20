-- 1. Show the total population of the world.
SELECT SUM(population) pop_world
FROM world

-- 2. List all the continents - just once each.
SELECT DISTINCT continent
FROM world

-- 3. Give the total GDP of Africa
SELECT SUM(gdp) gdp_Africa
FROM world
WHERE continent = 'Africa'

-- 4. How many countries have an area of at least 1000000
SELECT COUNT(name) num_countries
FROM world
WHERE area >= 1000000

-- 5. What is the total population of ('France','Germany','Spain')
SELECT SUM(population) total_pop
FROM world
WHERE name IN ('France','Germany','Spain')

-- 6. For each continent show the continent and number of countries.
SELECT continent, COUNT(name) num_countries
FROM world
GROUP BY continent

-- 7. For each continent show the continent and number of countries with
-- populations of at least 10 million.
SELECT continent, COUNT(name) num_countries
FROM world
WHERE population >= 10E6
GROUP BY continent

-- 8. List the continents with total populations of at least 100 million.
SELECT continent
FROM world
GROUP BY continent
HAVING SUM(population) >= 100E6
/*CREATE TABLE DEPT_201278(
deptno INT CONSTRAINT pk_dep PRIMARY KEY,
deptName VARCHAR2(20) NOT NULL,
dlocation VARCHAR2(30)
);


CREATE TABLE EMPLOYEE_201278(
empno INT PRIMARY KEY,
eName VARCHAR2(30) NOT NULL,
salary INT CHECK(salary>1000),
doj DATE default sysdate,
depno INT references DEPT_201278(deptno),
mgrid NUMBER(10)
);

desc EMPLOYEE_201278;
DESC USER_TABLES;

SELECT TABLE_NAME FROM USER_TABLES;

SELECT TABLE_NAME FROM USER_TABLES WHERE TABLE_NAME='EMPLOYEE_201278';

DESC USER_OBJECTS;
DESC DEPT_201278;

CREATE INDEX emp_index ON EMPLOYEE_201278(salary);

INSERT INTO DEPT_201278 VALUES(10,'hr','Mumbai');

INSERT INTO DEPT_201278(deptno,dlocation,deptName) VALUES(11,'PUNE','PURCHASE');
INSERT INTO DEPT_201278(deptno,dlocation,deptName) VALUES(21,'DELHI','bLORE');

INSERT INTO EMPLOYEE_201278 VALUES(111,'KISHORI',50000,'12-JAN-2012',21,10);
INSERT INTO EMPLOYEE_201278 VALUES(112,'KISHORe',20000,'10-JAN-2012',11,11);
INSERT INTO EMPLOYEE_201278 VALUES(113,'KISHOR',30000,'12-feb-2012',21,10);
INSERT INTO EMPLOYEE_201278 VALUES(214,'KAVERI',50000,'12-DEC-2012',10,21);
INSERT INTO EMPLOYEE_201278 VALUES(115,'KISHORI',50000,'12-JAN-2012',21,10);
INSERT INTO EMPLOYEE_201278 VALUES(116,'ANUPAMA',50000,'12-JAN-2012',21,10);
INSERT INTO EMPLOYEE_201278 VALUES(117,'ISHITA',50000,'12-JAN-2012',21,10);
INSERT INTO EMPLOYEE_201278 VALUES(118,'KISHORI',90000,'12-JAN-2012',21,10);
INSERT INTO EMPLOYEE_201278 VALUES(119,'ANISHI',50000,'12-JAN-2012',21,10);
INSERT INTO EMPLOYEE_201278 VALUES(211,'KISHORI',55500,'12-JAN-2012',21,10);
SELECT * FROM EMPLOYEE_201278;
SELECT * FROM DEPT_201278;

SELECT * FROM DEPT_201278 WHERE DEPTNO=10;

SELECT * 
FROM EMPLOYEE_201278 
WHERE salary > 20000;

SELECT * 
FROM EMPLOYEE_201278 
WHERE salary > 20000
OR DEPNO=21;

SELECT 'TODAY IS '|| SYSDATE FROM DUAL;
SELECT * FROM EMPLOYEE_201278;

SELECT DEPNO,SUM(SALARY)
FROM EMPLOYEE_201278
GROUP BY DEPNO
HAVING SUM(SALARY)>20000;

SELECT MIN(SALARY) FROM EMPLOYEE_201278 WHERE DEPNO=10;

SELECT DEPNO,MIN(SALARY) FROM EMPLOYEE_201278 GROUP BY DEPNO HAVING MIN(SALARY)>10000;


CREATE TABLE employees_201278(employee_code NUMBER PRIMARY KEY,
employee_name VARCHAR2(15),
date_of_joining DATE,
employee_salary NUMBER,
grade CHAR(2) references salgrade(grade)
);

CREATE TABLE SALGRADE(GRADE CHAR(2) PRIMARY KEY,
MINSAL NUMBER,
MAXSAL NUMBER
);

DECLARE
DEPTNO NUMBER(10) :=30;
DNAME VARCAR2(15);

BEGIN
SELECT F




DECLARE
DEPNO NUMBER(10) :=21;
DNAME VARCHAR2(15);
BEGIN
SELECT DEPTNAME INTO DNAME FROM DEPT_201278
WHERE DEPTNO=DEPNO;
DBMS_OUTPUT.PUT_LINE(DNAME);
DELETE FROM DEPT_201278
WHERE DEPTNO=DEPNO;
END;




*/
create table dept_1280(
  deptno int primary key,
  dname varchar(20) not null,
  dlocation varchar(30)
  );
  
  desc dept_1280;
  create table employee_1280(
  empno int primary key,
  empname varchar(30) not null,
  salary int check(salary>1000),
  DOJ date default sysdate,
  deptid int references dept_1280(deptno)
  );
  desc employee_1280;
  
  
  insert into dept_1280 values(10,'hr','mumbai');
  insert into dept_1280(deptno,dlocation,dname) values(20,'pune','marketing');
  insert into dept_1280 values(11,'purchasing','delhi');
  insert into dept_1280 values(12,'marketing','ranchi');
  insert into employee_1280 values(111,'kishori',50000,'12-jan-2012',20);
  insert into employee_1280 values(112,'abhinav',500000,'12-feb-2011',10);
  insert into employee_1280 values(113,'ankit',40000,'11-aug-2001',20);
  insert into employee_1280 values(114,'diksha',80034200,'12-feb-2014',20);
  insert into employee_1280 values(115,'ankita',8700000,'19-nov-1993',11);
  insert into employee_1280 values(116,'sushant',1500000,'17-feb-2011',12);
  insert into employee_1280 values(117,'abc',500000,'12-feb-2015',11);
  insert into employee_1280 values(118,'xyz',300000,'12-feb-2015',11);
  insert into employee_1280 values(119,'av',600000,'12-feb-2011',12);
  insert into employee_1280 values(120,'abhinavk',1500000,'12-feb-2008',10);
  
  
  select *from dept_1280;
  select * from employee_1280;
  
  select *from employee_1280 where salary>20000000 or deptid =20 ;
  
  
betweemn range
in checks specically like salary 10 or 20 or 30 or 40

like a% starts with a
like a_ underscore 1 character
NULL 
IS NULL OR IS NOT NULL
BEETWEEN '01-JAN-1980'AND '01-JAN-1996'
IT IS INCLUSIVE OF BOTH THDESES VALUES

IN LIKE EITHER OR

LIKE '%KANETKAR%'


CONCATENATION
SELECT 'HELLO'|| STUDENT_NAME FROM TABLE_NAME;

SELECT 'TODAY IS'|| SYSDATE FROM DUAL 


DUAL IS DUMMY TABLE

NOT IN (10,20);


DEPT_IS IS NULL;


ABS ABSOLUTE VALUE     SINGLE ROW UNLIKE COUNT WHICH WORKS ON MULTIPLE ROWS
SELECT AVG(SAL) FROM EMPLOYEE;

 SELECT deptid, AVG(salary) FROM employee_1280 group by deptid having sum(salary)>3000000;
 



  SELECT //[deptid, AVG(salary)]// group byu includes only aggregate function and that group by (item)  FROM employee_1280 group by deptid having sum(salary)>1000000;

select *from employee_1280;




  SELECT min(salary) FROM employee_1280 where deptid= 10;




COUNT(*)

COUNT(field_name);


 
select abs(-16)"ABSOLUTE" FROM DUAL;
SELECT POWER(3,2)"RAISED" FROM DUAL;


SELECT EMPNAME,LENGTH(EMPNAME) FROM EMPLOYEE_1280;



SELECT EMPNAME,LENGTH(EMPNAME) FROM EMPLOYEE_1280;


SELECT ADD_MONTHS(SYSDATE,10) FROM DUAL;

SELECT MONTHS_BETWEEN(SYSDATE,'21-JAN-94')FROM DUAL;

select to_char(sysdate,'DD month,YYYY') FROM DUAL;


select to_char(sysdate,'DDth month,YYYY') FROM DUAL;


select to_char(17000,'$99,999.00') FROM DUAL;

nvl- null value function

select book_code,NVL(BOOK_ACTUAL_RETURN_DATE,SYSDATE)FROM BOOK_TRANSACTION;
select book_code,NVL2(BOOK_ACTUAL_RETURN_DATE,SYSDATE)FROM BOOK_TRANSACTION;

declare
v_emp employee_a80.empno%type := 111;
v_sal number :=1234;
begin
	if v_emp=111 then
		update employee_a80 
		set salary =salary+v_sal 
		where empno=v_emp;
	end if;
	dbms_output.put_line('updation done!!');
end;


// 2-february
https://www.quora.com/What-are-the-best-sites-to-learn-Oracle-SQL-and-PL-SQL
https://www.quora.com/What-is-the-best-way-to-learn-pl-sql
https://www.quora.com/What-are-best-ways-to-practice-Oracle-PLSQL
https://www.quora.com/What-are-some-of-the-best-PL-SQL-tutorials-available-on-the-internet
https://www.quora.com/What-is-the-best-source-to-study-PL-SQL
https://plsqlchallenge.oracle.com/pls/apex/f?p=10000%3A8
https://www.youtube.com/watch?v=7Vtl2WggqOg
























































