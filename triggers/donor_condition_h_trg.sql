CREATE OR REPLACE TRIGGER donor_condition_h_trg
  AFTER INSERT OR UPDATE OR DELETE ON donor_condition
  FOR EACH ROW
DECLARE
  v_mod_user donor_condition_h.mod_user%TYPE;
  v_mod_time donor_condition_h.last_mod%TYPE;
BEGIN
  v_mod_user := sys_context('USERENV', 'OS_USER');
  v_mod_time := SYSDATE;

  IF deleting
  THEN
    INSERT INTO donor_condition_h
      (donor_id
      ,condition_id
      ,other_details
      ,mod_user
      ,created_on
      ,last_mod
      ,dml_flag
      ,version
      ,id)
    VALUES

      (:old.donor_id
      ,:old.condition_id
      ,:old.other_details
      ,v_mod_user
      ,:old.created_on
      ,v_mod_time
      ,'D'
      ,:old.version + 1
      ,:old.id);
  ELSE
    INSERT INTO donor_condition_h
      (donor_id
      ,condition_id
      ,other_details
      ,mod_user
      ,created_on
      ,last_mod
      ,dml_flag
      ,version
      ,id)
    VALUES
      (:new.donor_id
      ,:new.condition_id
      ,:new.other_details
      ,:new.mod_user
      ,:new.created_on
      ,:new.last_mod
      ,:new.dml_flag
      ,:new.version
      ,:old.id);
  END IF;
END;
/