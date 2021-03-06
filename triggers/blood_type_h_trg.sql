CREATE OR REPLACE TRIGGER blood_type_h_trg
  AFTER INSERT OR UPDATE OR DELETE ON blood_type
  FOR EACH ROW
DECLARE
  v_mod_user blood_type_h.mod_user%TYPE;
  v_mod_time blood_type_h.last_mod%TYPE;
BEGIN
  v_mod_user := sys_context('USERENV', 'OS_USER');
  v_mod_time := SYSDATE;

  IF deleting
  THEN
    INSERT INTO blood_type_h
      (blood_type_id
      ,NAME
      ,mod_user
      ,created_on
      ,last_mod
      ,dml_flag
      ,version)
    VALUES
      (:old.blood_type_id
      ,:old.name
      ,v_mod_user
      ,:old.created_on
      ,v_mod_time
      ,'D'
      ,:old.version + 1);
  ELSE
    INSERT INTO blood_type_h
      (blood_type_id
      ,NAME
      ,mod_user
      ,created_on
      ,last_mod
      ,dml_flag
      ,version)
    VALUES
      (:new.blood_type_id
      ,:new.name
      ,:new.mod_user
      ,:new.created_on
      ,:new.last_mod
      ,:new.dml_flag
      ,:new.version);
  END IF;
END;
/