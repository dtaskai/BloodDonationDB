CREATE OR REPLACE TRIGGER staff_h_trg
  AFTER INSERT OR UPDATE OR DELETE ON staff
  FOR EACH ROW
DECLARE
  v_mod_user staff_h.mod_user%TYPE;
  v_mod_time staff_h.last_mod%TYPE;
BEGIN
  v_mod_user := sys_context('USERENV', 'OS_USER');
  v_mod_time := SYSDATE;

  IF deleting
  THEN
    INSERT INTO staff_h
      (staff_id
      ,first_name
      ,last_name
      ,birth_date
      ,address_id
      ,blood_bank_id
      ,position_id
      ,mod_user
      ,created_on
      ,last_mod
      ,dml_flag
      ,version)
    VALUES
      (:old.staff_id
      ,:old.first_name
      ,:old.last_name
      ,:old.birth_date
      ,:old.address_id
      ,:old.blood_bank_id
      ,:old.position_id
      ,v_mod_user
      ,:old.created_on
      ,v_mod_time
      ,'D'
      ,:old.version + 1);
  ELSE
    INSERT INTO staff_h
      (staff_id
      ,first_name
      ,last_name
      ,birth_date
      ,address_id
      ,blood_bank_id
      ,position_id
      ,mod_user
      ,created_on
      ,last_mod
      ,dml_flag
      ,version)
    VALUES
      (:new.staff_id
      ,:new.first_name
      ,:new.last_name
      ,:new.birth_date
      ,:new.address_id
      ,:new.blood_bank_id
      ,:new.position_id
      ,:new.mod_user
      ,:new.created_on
      ,:new.last_mod
      ,:new.dml_flag
      ,:new.version);
  END IF;
END;
