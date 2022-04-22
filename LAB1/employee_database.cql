CREATE KEYSPACE employee_1  WITH REPLICATION = {'class':'SimpleStrategy','replication_factor':1};

cqlsh> 
cqlsh> SELECT * FROM employee_1 
   ... 
   ... 
   ... 
cqlsh> 
cqlsh> CREATE TABLE employee_1 (
   ... empid int,
   ... ename text,
   ... designation text,
   ... joindate timestamp,
   ... salary double,
   ... deptname text,
   ... PRIMARY KEY(empid));


BEGIN BATCH 
              ... INSERT INTO employee_1 (empid,ename,designation,joindate,salary,deptname)
              ... VALUES(1,'sridshi','Asst Manager','2010-04-26',75000,'Marketing')
              ... INSERT INTO employee_1 (empid,ename,designation,joindate,salary,deptname)
              ... VALUES(2,'shree','Asst Manager','2010-04-26',75000,'Marketing')
              ... INSERT INTO employee_1 (empid,ename,designation,joindate,salary,deptname)
              ... VALUES(3,'deepthi','Asst Manager','2010-04-26',75000,'Technical')
              ... INSERT INTO employee_1 (empid,ename,designation,joindate,salary,deptname)
              ... VALUES(4,'sneha','Asst Manager','2010-04-26',75000,'Technical')
              ... INSERT INTO employee_1 (empid,ename,designation,joindate,salary,deptname)
              ... VALUES(5,'shivani','Manager','2010-04-26',75000,'PR')
              ... INSERT INTO employee_1 (empid,ename,designation,joindate,salary,deptname)
              ... VALUES(121,'pavan','Asst Manager','2010-04-26',75000,'PR')
              ... APPLY BATCH;

UPDATE employee_1 SET ename='deepthi' WHERE empid=2;
employee_1> UPDATE employee_1 SET ename='sneha' WHERE empid=3;
employee_1> UPDATE employee_1 SET ename='prithvi' WHERE empid=4;
employee_1> SELECT * FROM employee_1;
UPDATE employee_1 SET ename='shree' WHERE empid=5;
UPDATE employee_1 SET ename='shivani' WHERE empid=6;
 SELECT * FROM employee_1;
UPDATE employee_1 SET ename='pavan',deptname='logistics' WHERE empid=121;

UPDATE employee_1 SET salary=65000 WHERE empid=2;
UPDATE employee_1 SET salary=55000 WHERE empid=1;
UPDATE employee_1 SET salary=85000 WHERE empid=4;
UPDATE employee_1 SET salary=95000 WHERE empid=5;
 UPDATE employee_1 SET salary=100000 WHERE empid=6;
UPDATE employee_1 SET salary=80000 WHERE empid=121;
select * from EMPLOYEE_1;

ALTER TABLE employee_1 ADD PROJECTS list<text>;
select * from EMPLOYEE_1;


UPDATE employee_1 SET projects=['facebook','instagram'] WHERE empid=1;
 UPDATE employee_1 SET projects=['facebook','whatsapp'] WHERE empid=2;
 UPDATE employee_1 SET projects=['instagram','whatsapp'] WHERE empid=3;
 UPDATE employee_1 SET projects=['risk assesment','flutter'] WHERE empid=4;
 UPDATE employee_1 SET projects=['quora','flutter'] WHERE empid=5;
 UPDATE employee_1 SET projects=['quora','timetrack'] WHERE empid=6;
UPDATE employee_1 SET projects=['quora','twitter'] WHERE empid=121;
select * from employee_1;





