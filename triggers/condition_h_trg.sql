CREATE OR REPLACE TRIGGER condition_h_trg
  AFTER INSERT OR UPDATE OR DELETE ON condition
  FOR EACH ROW
DECLARE
  v_mod_user condition_h.mod_user%TYPE;
  v_mod_time condition_h.last_mod%TYPE;
BEGIN
  v_mod_user := sys_context('USERENV', 'OS_USER');
  v_mod_time := SYSDATE;

  IF deleting
  THEN
    INSERT INTO condition_h
      (condition_id
      ,NAME
      ,mod_user
      ,created_on
      ,last_mod
      ,dml_flag
      ,version)
    VALUES
      (:old.condition_id
      ,:old.name
      ,v_mod_user
      ,:old.created_on
      ,v_mod_time
      ,'D'
      ,:old.version + 1);
  ELSE
    INSERT INTO condition_h
      (condition_id
      ,NAME
      ,mod_user
      ,created_on
      ,last_mod
      ,dml_flag
      ,version)
    VALUES
      (:new.condition_id
      ,:new.name
      ,:new.mod_user
      ,:new.created_on
      ,:new.last_mod
      ,:new.dml_flag
      ,:new.version);
  END IF;
END;
/
