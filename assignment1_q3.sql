-- Student: Oleh Ivanyshyn <> Student#:125165167 <> Course:DBS501 <> Professor: Alireza Rahmani
SET SERVEROUTPUT ON;

DECLARE 
  d1 DATE;
  cnt NUMBER;
BEGIN
  select max(count(*)) into cnt from employees
  group by to_char(hire_date, 'yy');
  --finding the most occurances of a single year in hire_date
  dbms_output.put_line('Total count of the year that has the most occurances is: ' ||cnt);
  --finding the most occurances of a single month in the year in hire_date
  select max(count(*)) into cnt from employees
  where to_char(hire_date, 'yy') = 97
  group by to_char(hire_date, 'mm');
  dbms_output.put_line('Total count of the month that has the most occurances is: ' ||cnt);
  -- findind a total number of employyes hiread in January
   select max(count(*)) into cnt from employees
  where to_char(hire_date, 'yymm') = 9701
  group by to_char(hire_date, 'mm');
  dbms_output.put_line('Total count of the January is: ' ||cnt);
  -- findind a total number of employyes hiread in February
  select max(count(*)) into cnt from employees
  where to_char(hire_date, 'yymm') = 9702
  group by to_char(hire_date, 'mm');
  dbms_output.put_line('Total count of the February is: ' ||cnt);
  -- findind a total number of employyes hiread in March
  select max(count(*)) into cnt from employees
  where to_char(hire_date, 'yymm') = 9703
  group by to_char(hire_date, 'mm');
  dbms_output.put_line('Total count of the March is: ' ||cnt);
  -- findind a total number of employyes hiread in April
  select max(count(*)) into cnt from employees
  where to_char(hire_date, 'yymm') = 9704
  group by to_char(hire_date, 'mm');
  dbms_output.put_line('Total count of the April is: ' ||cnt);
  -- findind a total number of employyes hiread in May
  select max(count(*)) into cnt from employees
  where to_char(hire_date, 'yymm') = 9705
  group by to_char(hire_date, 'mm');
  dbms_output.put_line('Total count of the May is: ' ||cnt);
  -- findind a total number of employyes hiread in June
  select max(count(*)) into cnt from employees
  where to_char(hire_date, 'yymm') = 9706
  group by to_char(hire_date, 'mm');
  dbms_output.put_line('Total count of the June is: ' ||cnt);
  -- findind a total number of employyes hiread in July
  select max(count(*)) into cnt from employees
  where to_char(hire_date, 'yymm') = 9707
  group by to_char(hire_date, 'mm');
  dbms_output.put_line('Total count of the July is: ' ||cnt);
  -- findind a total number of employyes hiread in August
  select max(count(*)) into cnt from employees
  where to_char(hire_date, 'yymm') = 9708
  group by to_char(hire_date, 'mm');
  dbms_output.put_line('Total count of the August is: ' ||cnt);
  -- findind a total number of employyes hiread in September
   select max(count(*)) into cnt from employees
  where to_char(hire_date, 'yymm') = 9709
  group by to_char(hire_date, 'mm');
  dbms_output.put_line('Total count of the September is: ' ||cnt);
  -- findind a total number of employyes hiread in October
   select max(count(*)) into cnt from employees
  where to_char(hire_date, 'yymm') = 9710
  group by to_char(hire_date, 'mm');
  dbms_output.put_line('Total count of the October is: ' ||cnt);
  -- findind a total number of employyes hiread in November
   select max(count(*)) into cnt from employees
  where to_char(hire_date, 'yymm') = 9711
  group by to_char(hire_date, 'mm');
  dbms_output.put_line('Total count of the November is: ' ||cnt);
  -- findind a total number of employyes hiread in December
   select max(count(*)) into cnt from employees
  where to_char(hire_date, 'yymm') = 9712
  group by to_char(hire_date, 'mm');
  dbms_output.put_line('Total count of the December is: ' ||cnt);
END;
/