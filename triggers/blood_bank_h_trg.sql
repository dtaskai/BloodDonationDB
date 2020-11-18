CREATE OR REPLACE TRIGGER blood_bank_h_trg
  AFTER INSERT OR UPDATE OR DELETE ON blood_bank
  FOR EACH ROW
DECLARE
  v_mod_user address_h.mod_user%TYPE;
  v_mod_time address_h.last_mod%TYPE;
BEGIN
  v_mod_user := sys_context('USERENV', 'OS_USER');
  v_mod_time := SYSDATE;

  IF deleting
  THEN
    INSERT INTO blood_bank_h
      (blood_bank_id
      ,phone_number
      ,email
      ,comments
      ,address_id
      ,mod_user
      ,created_on
      ,last_mod
      ,dml_flag
      ,version)
    VALUES
      (:old.blood_bank_id
      ,:old.phone_number
      ,:old.email
      ,:old.comments
      ,:old.address_id
      ,v_mod_user
      ,:old.created_on
      ,v_mod_time
      ,'D'
      ,:old.version + 1);
  
  ELSE
    INSERT INTO blood_bank_h
      (blood_bank_id
      ,phone_number
      ,email
      ,comments
      ,address_id
      ,mod_user
      ,created_on
      ,last_mod
      ,dml_flag
      ,version)
    VALUES
      (:new.blood_bank_id
      ,:new.phone_number
      ,:new.email
      ,:new.comments
      ,:new.address_id
      ,:new.mod_user
      ,:new.created_on
      ,:new.last_mod
      ,:new.dml_flag
      ,:new.version);
  END IF;
END;
/