CREATE OR REPLACE TRIGGER donor_h_trg
  AFTER INSERT OR UPDATE OR DELETE ON donor
  FOR EACH ROW
DECLARE
  v_mod_user donor_h.mod_user%TYPE;
  v_mod_time donor_h.last_mod%TYPE;
BEGIN
  v_mod_user := sys_context('USERENV', 'OS_USER');
  v_mod_time := SYSDATE;

  IF deleting
  THEN
    INSERT INTO donor_h
      (donor_id
      ,first_name
      ,last_name
      ,gender
      ,phone_number
      ,last_donation
      ,address_id
      ,blood_type_id
      ,birth_date
      ,mod_user
      ,created_on
      ,last_mod
      ,dml_flag
      ,version)
    VALUES
      (:old.donor_id
      ,:old.first_name
      ,:old.last_name
      ,:old.gender
      ,:old.phone_number
      ,:old.last_donation
      ,:old.address_id
      ,:old.blood_type_id
      ,:old.birth_date
      ,v_mod_user
      ,:old.created_on
      ,v_mod_time
      ,'D'
      ,:old.version + 1);
  ELSE
    INSERT INTO donor_h
      (donor_id
      ,first_name
      ,last_name
      ,gender
      ,phone_number
      ,last_donation
      ,address_id
      ,blood_type_id
      ,birth_date
      ,mod_user
      ,created_on
      ,last_mod
      ,dml_flag
      ,version)
    VALUES
      (:new.donor_id
      ,:new.first_name
      ,:new.last_name
      ,:new.gender
      ,:new.phone_number
      ,:new.last_donation
      ,:new.address_id
      ,:new.blood_type_id
      ,:new.birth_date
      ,:new.mod_user
      ,:new.created_on
      ,:new.last_mod
      ,:new.dml_flag
      ,:new.version);
  END IF;
END;
/
