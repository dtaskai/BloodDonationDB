CREATE OR REPLACE TRIGGER donor_medication_h_trg
  AFTER INSERT OR UPDATE OR DELETE ON donor_medication
  FOR EACH ROW
DECLARE
  v_mod_user donor_medication_h.mod_user%TYPE;
  v_mod_time donor_medication_h.last_mod%TYPE;
BEGIN
  v_mod_user := sys_context('USERENV', 'OS_USER');
  v_mod_time := SYSDATE;

  IF deleting
  THEN
    INSERT INTO donor_medication_h
      (medication_id
      ,donor_id
      ,other_details
      ,mod_user
      ,created_on
      ,last_mod
      ,dml_flag
      ,version
      ,id)
    VALUES
      (:old.medication_id
      ,:old.donor_id
      ,:old.other_details
      ,v_mod_user
      ,:old.created_on
      ,v_mod_time
      ,'D'
      ,:old.version + 1
      ,:old.id);
  ELSE
    INSERT INTO donor_medication_h
      (medication_id
      ,donor_id
      ,other_details
      ,mod_user
      ,created_on
      ,last_mod
      ,dml_flag
      ,version
      ,id)
    VALUES

      (:new.medication_id
      ,:new.donor_id
      ,:new.other_details
      ,:new.mod_user
      ,:new.created_on
      ,:new.last_mod
      ,:new.dml_flag
      ,:new.version
      ,:new.id);
  END IF;
END;
/