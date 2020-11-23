CREATE OR REPLACE TRIGGER donation_h_trg
  AFTER INSERT OR UPDATE OR DELETE ON donation
  FOR EACH ROW
DECLARE
  v_mod_user donation_h.mod_user%TYPE;
  v_mod_time donation_h.last_mod%TYPE;
BEGIN
  v_mod_user := sys_context('USERENV', 'OS_USER');
  v_mod_time := SYSDATE;

  IF deleting
  THEN
    INSERT INTO donation_h
      (donation_id
      ,donation_date
      ,other_details
      ,donor_id
      ,staff_id
      ,blood_bank_id
      ,used
      ,mod_user
      ,created_on
      ,last_mod
      ,dml_flag
      ,version)
    VALUES
      (:old.donation_id
      ,:old.donation_date
      ,:old.other_details
      ,:old.donor_id
      ,:old.staff_id
      ,:old.blood_bank_id
      ,:old.used
      ,v_mod_user
      ,:old.created_on
      ,v_mod_time
      ,'D'
      ,:old.version + 1);
  ELSE
    INSERT INTO donation_h
      (donation_id
      ,donation_date
      ,other_details
      ,donor_id
      ,staff_id
      ,blood_bank_id
      ,used
      ,mod_user
      ,created_on
      ,last_mod
      ,dml_flag
      ,version)
    VALUES
      (:new.donation_id
      ,:new.donation_date
      ,:new.other_details
      ,:new.donor_id
      ,:new.staff_id
      ,:new.blood_bank_id
      ,:new.used
      ,:new.mod_user
      ,:new.created_on
      ,:new.last_mod
      ,:new.dml_flag
      ,:new.version);
  END IF;
END;
/
