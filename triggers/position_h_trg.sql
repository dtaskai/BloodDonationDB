CREATE OR REPLACE TRIGGER position_h_trg
  AFTER INSERT OR UPDATE OR DELETE ON position
  FOR EACH ROW
DECLARE
  v_mod_user position_h.mod_user%TYPE;
  v_mod_time position_h.last_mod%TYPE;
BEGIN
  v_mod_user := sys_context('USERENV', 'OS_USER');
  v_mod_time := SYSDATE;

  IF deleting
  THEN
    INSERT INTO position_h
      (position_id
      ,NAME
      ,mod_user
      ,created_on
      ,last_mod
      ,dml_flag
      ,version)
    VALUES
      (:old.position_id
      ,:old.name
      ,v_mod_user
      ,:old.created_on
      ,v_mod_time
      ,'D'
      ,:old.version + 1);
  ELSE
    INSERT INTO position_h
      (position_id
      ,NAME
      ,mod_user
      ,created_on
      ,last_mod
      ,dml_flag
      ,version)
    VALUES
      (:new.position_id
      ,:new.name
      ,:new.mod_user
      ,:new.created_on
      ,:new.last_mod
      ,:new.dml_flag
      ,:new.version);
  END IF;
END;
/
