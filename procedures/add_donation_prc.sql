CREATE OR REPLACE PROCEDURE add_donation(v_donor_id      IN NUMBER
                                        ,v_staff_id      IN NUMBER
                                        ,v_date          IN DATE
                                        ,v_other_details IN VARCHAR2
                                        ,v_blood_bank_id IN NUMBER
                                        ,v_used          IN DATE) IS
BEGIN
  INSERT INTO donation
    (donation_date
    ,other_details
    ,donor_id
    ,staff_id
    ,blood_bank_id
    ,used)
  VALUES
    (v_date
    ,v_other_details
    ,v_donor_id
    ,v_staff_id
    ,v_blood_bank_id
    ,v_used);

END;
/