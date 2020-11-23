CREATE OR REPLACE PROCEDURE add_staff(v_first_name    IN VARCHAR2
                                     ,v_last_name     IN VARCHAR2
                                     ,v_birth_date    IN DATE
                                     ,v_address_id    IN NUMBER
                                     ,v_blood_bank_id IN NUMBER
                                     ,v_position_id   IN NUMBER) IS
BEGIN
  INSERT INTO staff
    (first_name
    ,last_name
    ,birth_date
    ,address_id
    ,blood_bank_id
    ,position_id)
  VALUES
    (v_first_name
    ,v_last_name
    ,v_birth_date
    ,v_address_id
    ,v_blood_bank_id
    ,v_position_id);

END;
/