CREATE OR REPLACE PROCEDURE add_donor(v_first_name    IN VARCHAR2
                                     ,v_last_name     IN VARCHAR2
                                     ,v_gender        IN VARCHAR2
                                     ,v_phone_number  IN VARCHAR2
                                     ,v_can_donate    IN VARCHAR2
                                     ,v_last_donation IN DATE
                                     ,v_address_id    IN NUMBER
                                     ,v_blood_type_id IN VARCHAR2
                                     ,v_birth_date    IN DATE) IS
BEGIN
  INSERT INTO donor
    (first_name
    ,last_name
    ,gender
    ,phone_number
    ,can_donate
    ,last_donation
    ,address_id
    ,blood_type_id
    ,birth_date)
  VALUES
    (v_first_name
    ,v_last_name
    ,v_gender
    ,v_phone_number
    ,v_can_donate
    ,v_last_donation
    ,v_address_id
    ,v_blood_type_id
    ,v_birth_date);

END;
/