-- Student: Oleh Ivanyshyn <> Student#:125165167 <> Course:DBS501 <> Professor: Alireza Rahmani
SET SERVEROUTPUT ON

DECLARE 
employee_id NUMBER; 
v1 NUMBER NOT NULL := 101;
v2 NUMBER NOT NULL := 110;
temp NUMBER;
jobid VARCHAR(20);



BEGIN 
  
  employee_id := v1;
  
  IF employee_id = v1 THEN 
   SELECT job_id into jobid FROM employees
   WHERE employee_id = 110;
   dbms_output.put_line('Employee ID  = 101 ' || jobid);
  
  ELSIF employee_id = v2 THEN 
   SELECT job_id into jobid FROM employees
   WHERE employee_id = 101;
   dbms_output.put_line('Employee ID = 110 ' || jobid);
  END IF;
  
  employee_id := v2;
  
  IF employee_id = v1 THEN 
   SELECT job_id into jobid FROM employees
   WHERE employee_id = 110;
   dbms_output.put_line('Employee ID 101 = ' || jobid);
  
  ELSIF employee_id = v2 THEN 
   SELECT job_id into jobid FROM employees
   WHERE employee_id = 101;
   dbms_output.put_line('Employee ID 110 = ' || jobid);
  END IF;
  
  
END;
/