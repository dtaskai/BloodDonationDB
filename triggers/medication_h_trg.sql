CREATE OR REPLACE TRIGGER medication_h_trg
  AFTER INSERT OR UPDATE OR DELETE ON medication
  FOR EACH ROW
DECLARE
  v_mod_user medication_h.mod_user%TYPE;
  v_mod_time medication_h.last_mod%TYPE;
BEGIN
  v_mod_user := sys_context('USERENV', 'OS_USER');
  v_mod_time := SYSDATE;

  IF deleting
  THEN
    INSERT INTO medication_h
      (medication_id
      ,NAME
      ,mod_user
      ,created_on
      ,last_mod
      ,dml_flag
      ,version)
    VALUES
      (:old.medication_id
      ,:old.name
      ,v_mod_user
      ,:old.created_on
      ,v_mod_time
      ,'D'
      ,:old.version + 1);
  ELSE
    INSERT INTO medication_h
      (medication_id
      ,NAME
      ,mod_user
      ,created_on
      ,last_mod
      ,dml_flag
      ,version)
    VALUES
      (:new.medication_id
      ,:new.name
      ,:new.mod_user
      ,:new.created_on
      ,:new.last_mod
      ,:new.dml_flag
      ,:new.version);
  END IF;
END;
/
