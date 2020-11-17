CREATE OR REPLACE TRIGGER address_h_trg
  AFTER INSERT OR UPDATE OR DELETE ON address
  FOR EACH ROW
DECLARE
  v_mod_user address_h.mod_user%TYPE;
  v_mod_time address_h.last_mod%TYPE;
BEGIN
  v_mod_user := sys_context('USERENV', 'OS_USER');
  v_mod_time := SYSDATE;

  IF deleting
  THEN
    INSERT INTO address_h
      (address_id
      ,zip_code
      ,city
      ,street
      ,house_number
      ,other_details
      ,mod_user
      ,created_on
      ,last_mod
      ,dml_flag
      ,version)
    VALUES
      (:old.address_id
      ,:old.zip_code
      ,:old.city
      ,:old.street
      ,:old.house_number
      ,:old.other_details
      ,v_mod_user
      ,:old.created_on
      ,v_mod_time
      ,'D'
      ,:old.version + 1);
  ELSE
    INSERT INTO address_h
      (address_id
      ,zip_code
      ,city
      ,street
      ,house_number
      ,other_details
      ,mod_user
      ,created_on
      ,last_mod
      ,dml_flag
      ,version)
    VALUES
      (:new.address_id
      ,:new.zip_code
      ,:new.city
      ,:new.street
      ,:new.house_number
      ,:new.other_details
      ,:new.mod_user
      ,:new.created_on
      ,:new.last_mod
      ,:new.dml_flag
      ,:new.version);
  END IF;
END;