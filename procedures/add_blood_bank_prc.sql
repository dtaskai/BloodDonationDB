CREATE OR REPLACE PROCEDURE add_blood_bank(v_phone_number IN VARCHAR2
                                          ,v_email        IN VARCHAR2
                                          ,v_comments     IN VARCHAR2
                                          ,v_address_id   IN NUMBER) IS
BEGIN
  INSERT INTO blood_bank
    (phone_number
    ,email
    ,comments
    ,address_id)
  VALUES
    (v_phone_number
    ,v_email
    ,v_comments
    ,v_address_id);
END;
/