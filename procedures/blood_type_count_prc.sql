CREATE OR REPLACE PROCEDURE blood_type_count(v_blood_type IN VARCHAR2) IS
  blood_type_cnt NUMBER;
BEGIN
  SELECT COUNT(*) 
  INTO blood_type_cnt
  FROM donation d
  INNER JOIN donor do
  ON do.donor_id = d.donor_id
  WHERE do.blood_type_id = v_blood_type AND d.used IS NULL;
   
   
   
  dbms_output.put_line(v_blood_type || ': ' || blood_type_cnt || ' units');
END;
/