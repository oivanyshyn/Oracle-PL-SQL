-- Student: Oleh Ivanyshyn <> Student#:125165167 <> Course:DBS501 <> Professor: Alireza Rahmani
SET SERVEROUTPUT ON

DECLARE 

d1 DATE;
d2 DATE;
d3 DATE;
j1 VARCHAR(20);
j2 VARCHAR(20);
j3 VARCHAR (20);
s1 NUMBER (8,2);
s2 NUMBER (8,2);
s3 NUMBER (8,2);
salbon1 NUMBER(8,3) := 0.05;
salbon2 NUMBER(8,3) := 0.1;
tdy DATE;
salary NUMBER (8,2);

BEGIN 
-- selecting data for manipulating for different employees
SELECT hire_date, job_id, salary into d1,j1,s1 from employees
WHERE employee_id = 101;
SELECT hire_date, job_id, salary into d2,j2,s2 from employees
WHERE employee_id = 128;
SELECT hire_date, job_id, salary into d3,j3,s3 from employees
WHERE employee_id = 133;
-- creating if condition to check wheter the experience of clerks are less than 20 years and then multiply their salary by 5%
 IF d1 > '99-06-30' and j1 = 'ST_CLERK' THEN
 dbms_output.put_line('Salary before bonus: ' || s1);
 s1 := s1 + s1 * salbon1;
 dbms_output.put_line(d1 ||' ' ||  j1 ||' '  || s1);
 ELSIF d2 > '99-06-30' and j2 = 'ST_CLERK' THEN
 dbms_output.put_line('Salary before bonus: ' || s2);
 s2 := s2 + s2 * salbon1;
 dbms_output.put_line(d2 ||' ' ||  j2 ||' '  || s2);
 ELSIF d3 > '99-06-30' and j3 = 'ST_CLERK' THEN
 dbms_output.put_line('Salary before bonus: ' || s3);
 s3 := s3 + s3 * salbon1;
 dbms_output.put_line(d3 ||' ' ||  j3 ||' '  || s3);
 -- creating if condition to check wheter the experience of clerks are more than 20 years and then multiply their salary by 10%
 ELSIF d1 < '99-06-30' and j1 = 'ST_CLERK' THEN
 dbms_output.put_line('Salary before bonus: ' || s1);
 s1 := s1 + s1 * salbon2;
 dbms_output.put_line(d1 ||' ' ||  j1 ||' '  || s1);
 ELSIF d2 < '99-06-30' and j2 = 'ST_CLERK' THEN
 dbms_output.put_line('Salary before bonus: ' || s2);
 s2 := s2 + s2 * salbon2;
 dbms_output.put_line(d2 ||' ' ||  j2 ||' '  || s2);
 ELSIF d3 < '99-06-30' and j3 = 'ST_CLERK' THEN
 dbms_output.put_line('Salary before bonus: ' || s3);
 s3 := s3 + s3 * salbon2;
 dbms_output.put_line(d3 ||' ' ||  j3 || ' '  || s3);
 END IF;
END;
/